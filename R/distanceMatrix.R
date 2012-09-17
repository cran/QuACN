##g: The graphNEL object to be converted
##keep.weights: a flag to indicate whether weights should be considered when performing the conversion (DEFAULT= FALSE)
##currently ignored, added for later development
distanceMatrix <- function(g, keep.weights=FALSE) {
  require("graph")
  require("RBGL")
  #print("Distance...")
  # check if g is a graphNEL object
  if(class(g)[1]!="graphNEL"){
    stop("'g' has to be a 'graphNEL' object")
  }
  stopifnot(.validateGraph(g))
  
  if(any(unlist(edgeData(g, attr="weight")) >1) & keep.weights){
    warning("When calculating distanceMatrix() the edge weight information will be ignored")
  }
  g <- igraph::igraph.to.graphNEL(.G2IG(g, keep.weights=FALSE))
  johnson.all.pairs.sp(g)
}
