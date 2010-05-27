adjacencyMatrix <- function(g){
  # check if g is a graphNEL object
  require("graph")
  if(class(g)[1]!="graphNEL"){
    stop("'g' has to be a 'graphNEL' object")
  }
  as(g, "matrix")
}
