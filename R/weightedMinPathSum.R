.weightedMinPathSum <- function(g, weightfunc) {
  n <- nodes(g)
  ig <- igraph.from.graphNEL(g)

  sum(sapply(0:(length(n) - 1), function(v) {
    sp <- get.all.shortest.paths(ig, v)
    sum(sapply(sp, function(path) {
      if (length(path) == 1)
        1
      else
        prod(sapply(1:(length(path) - 1), function(i) {
          weightfunc(i, n[[path[[i]] + 1]], n[[path[[i + 1]] + 1]])
        })) / 2
    }))
  }))
}
