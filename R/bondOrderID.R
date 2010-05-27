bondOrderID <- function(g) {
  if (class(g)[1] != "graphNEL")
    stop("'g' has to be a 'graphNEL' object")

  e <- edges(g)
  ed <- .edgeDataMatrix(g, "weight")
  .weightedPathSum(e, NULL, function(i, from, to) as.numeric(ed[[from, to]]))
}
