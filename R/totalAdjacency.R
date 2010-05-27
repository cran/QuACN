totalAdjacency <- function(g, am=NULL){
  require("graph")
  if(class(g)[1]!="graphNEL"){
    stop("'g' must be a 'graphNEL' object")
  }
  if(is.null(am)){
    am <- adjacencyMatrix(g)
  }
  sum(am)/2
}
