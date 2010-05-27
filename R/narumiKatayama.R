narumiKatayama <- function(g, deg=NULL) {
  if (is.null(deg)) {
    require("graph")

    if (class(g)[1] != "graphNEL")
      stop("'g' has to be a 'graphNEL' object")
    deg = graph::degree(g)
  }

  prod(deg)
}
