infoTheoreticGCM <- function(g, dist=NULL, coeff="lin", infofunct="sphere", lambda=1000, custCoeff=NULL, alpha=0.5, prec=53){
  require("graph")
  if (prec > 53)
    require("Rmpfr")

  allowed.coeff <-  c("lin","quad","exp","const","cust")
  allowed.functionals <-  c("sphere","pathlength","vertcent","degree")
  # check if g is a graphNEL object
  if(class(g)[1]!="graphNEL"){
    stop("'g' must be a 'graphNEL' object")
  }
  if(is.null(dist)){
    dist <- distanceMatrix(g)
  }
  ##check coeff
  if (!coeff %in% allowed.coeff){
    stop(paste("'",coeff,"' is no valid value for coeff -> valid valuse: ", paste(allowed.coeff,collapse=", "), sep=""))
  }
  ##assign coeff
  l <- max(dist)
    if (coeff==allowed.coeff[1]){#"lin"
    ci <- l:1
  }else if(coeff==allowed.coeff[2]){#"quad"
    ci <- (l:1)^2
  }else if(coeff==allowed.coeff[3]){#"exp"
    ci <- l*exp(0:(-l+1))
    #print(paste("YES: ",ci))
  }else if(coeff==allowed.coeff[4]){#"const"
    ci <- rep(1,l)
  }else if(coeff==allowed.coeff[5]){#"cust"
    ci <- custCoeff
  }
  ##check infofunct
  if (!infofunct %in% allowed.functionals){
    stop(paste("'",infofunct,"' is no valid value for infofunct -> valid valuse: ", paste(allowed.functionals,collapse=", "), sep=""))
  }
  ##calc functional
  if(infofunct==allowed.functionals[1]){#"sphere"
    fvi <- .functionalJSphere(g, dist=dist, ci=ci)
  }else  if(infofunct==allowed.functionals[2]){#"pathlength"
    fvi <- .functionalPathlength(g, dist=dist, ci=ci)
  }else  if(infofunct==allowed.functionals[3]){#"vertcent"
    fvi <- .functionalLocalProperty(g, dist=dist, ci=ci)
  }else  if(infofunct==allowed.functionals[4]){#"degree"
    fvi <- .functionalDegreeDegree(g, dist=dist, ci=ci, alpha=alpha, prec=prec)
  }
  ##calcualte the entrpy and the distance
  fvi.sum <- sum(fvi)
  pis <- fvi/fvi.sum
  itgcm <- list()
  itgcm[["entropy"]] <- (-sum(pis*log2(pis)))
  if(is.nan(itgcm[["entropy"]])){
    if (infofunct == allowed.functionals[4])
      warning("Entropy returned not a number (NaN): please try higher values for prec")
    else
      warning("Entropy returned not a number (NaN): check your parameters")
  }
  itgcm[["distance"]] <- (lambda*(log2(length(pis)) - itgcm[["entropy"]]))
  itgcm[["pis"]] <- pis
  itgcm[["fvis"]] <- fvi
  return (itgcm)
}  

.functionalJSphere <- function(g, dist, ci){
  # check if g is a graphNEL object
  if(class(g)[1]!="graphNEL"){
    stop("'g' must be a 'graphNEL' object")
  }
  #calculate Spheres
  nam <- nodes(g)
  Sj <- lapply(nam,function(n){
    table(dist[n,],exclude=0)
  })
  names(Sj) <- nam
  
  fvi <- sapply(Sj,function(s,pc=ci){
     sum(s*ci[1:length(s)])
  })
  names(fvi) <- nam
  return (fvi)

}

.functionalPathlength <- function(g, dist,ci){
  require("igraph")

  ig <- igraph.from.graphNEL(g)
  vs <- V(ig)
  lvs <- length(vs$name)
  fvi <- rep(0,lvs)
  nam <- nodes(g)
  #determine number of all possible shortest path
  for(n in 1:lvs){
    #f <- vs[vs$name==n] 
    asp <- get.all.shortest.paths(ig,from=(n-1))
    lvi <- table(sapply(asp,length)-1,exclude=0)
    fvi[n] <- sum(lvi*ci[1:length(lvi)])
  }
  names(fvi) <- nam
  return (fvi)
}

.functionalLocalProperty <- function(g, dist,ci){
  require("igraph")

  ig <- igraph.from.graphNEL(g)
  vs <- V(ig)
  lvs <- length(vs$name)
  fvi <- rep(0,lvs)
  nam <- nodes(g)
  #determine number of all possible shortest path
  for(n in 1:lvs){
    #f <- vs[vs$name==n] 
    asp <- get.all.shortest.paths(ig,from=(n-1))
    lvi <- table(sapply(asp,length)-1,exclude=0)
    tmp.sum <- sapply(1:max(as.numeric(names(lvi))),function(lpl){
      sum(1:lpl)
    })
    betai <- 1/tmp.sum*lvi
    fvi[n] <- sum(betai*ci[1:length(lvi)])
  }
  names(fvi) <- nam
  return (fvi)
}

.functionalDegreeDegree <- function(g, dist, ci, alpha, prec){
  m <- adjacencyMatrix(g)
  deg <- graph::degree(g)
  size <- numNodes(g)

  expts <- .C("quacn_degdeg_exponents",
    as.integer(m), as.integer(deg), as.integer(size),
    as.double(ci), as.integer(length(ci)),
    double(size))[[6]]

  fvi <- alpha ^ if (prec > 53) mpfr(expts, prec) else expts
  names(fvi) <- nodes(g)

  fvi
}
