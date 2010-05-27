atomBondConnectivity <- function(g, deg=NULL){
  require("graph")

  if (class(g)[1] != "graphNEL")
    stop("'g' must be a 'graphNEL' object")

  if (is.null(deg))
    deg <- graph::degree(g)

  sum(.edgeApply(g, function(from, to) {
    sqrt((deg[from] + deg[to] - 2) / (deg[from] * deg[to]))
  }, dupls=FALSE))
}
