.nodeDataVector <- function(g, att) {
  if (class(g)[1] != "graphNEL")
    stop("'g' has to be a 'graphNEL' object")
  if (is.null(nodeDataDefaults(g)[[att]]))
    stop(paste("node attribute", att, "not set"))

  raw <- nodeData(g)
  sapply(names(raw), function(v) raw[[v]][[att]])
}
