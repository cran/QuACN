energy <- function(g) {
  require("graph")

  if (class(g)[1] != "graphNEL")
    stop("'g' must be a 'graphNEL' object")

  M <- adjacencyMatrix(g)
  EV <- as.double(eigen(M, only.values=TRUE)$values)
  sum(abs(EV))
}
