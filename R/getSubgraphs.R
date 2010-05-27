getLargestSubgraph <- function(g){
  require("RBGL")
  if(class(g) != "graphNEL"){
    stop("g needs to be of type graphNEL")
  }
  cc.g <- connectedComp(g)
  cclens.g <- sapply(cc.g, length)
  print("Subgraph distribution:")
  print(table(cclens.g))
  ord.g <- order(cclens.g, decreasing=T)
  return(subGraph(cc.g[[ord.g[1]]], g))
}

