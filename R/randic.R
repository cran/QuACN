randic <- function(g,deg=NULL){
  require("graph")
  if(class(g)[1]!="graphNEL"){
    stop("'g' must be a 'graphNEL' object")
  }

  if(is.null(deg)){
    deg <- graph::degree(g)
  }
  edges <- .edgesNoDupls(g)
  
  Zi<-sapply(1:length(edges), function(i){
    start <- names(edges[i])
    targets <- names(edges[[i]])

    1/sqrt(deg[start]*deg[targets])

  })

  return (sum(unlist(Zi)))
}
