spectralRadius <- function(g) {
  require("graph")

  if (class(g)[1] != "graphNEL")
    stop("'g' must be a 'graphNEL' object")

  n <- numNodes(g)
  m <- numEdges(g)

  M <- adjacencyMatrix(g)
  EV <- as.double(eigen(M, only.values=TRUE)$values)
  max(abs(EV))
}
