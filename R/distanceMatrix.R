distanceMatrix <- function(g) {
  require("graph")
  require("RBGL")
  #print("Distance...")
  # check if g is a graphNEL object
  if(class(g)[1]!="graphNEL"){
    stop("'g' has to be a 'graphNEL' object")
  }
  johnson.all.pairs.sp(g)
}
