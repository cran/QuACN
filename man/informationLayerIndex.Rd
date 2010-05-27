\name{informationLayerIndex}
\alias{informationLayerIndex}
\title{Information layer index}
\description{
  This method calculates the information layer index of a graph.
}
\usage{
  informationLayerIndex(g, dist=NULL, layer=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.}
  \item{dist}{the distance matrix of the graph.  Will be calculated automatically if not supplied.}
  \item{layer}{the layer (sphere) matrix of the graph.  Will be calculated automatically if not supplied.}
}

\value{
  The information layer index as a double-precision floating point value.
}
\references{
  E. V. Konstantinova and A. A. Paleev,
  Sensitivity of topological indices of polycyclic graphs,
  Vychisl. Sistemy, 136:38-48, 1990
}
\author{Michael Schutte}

\examples{
set.seed(987)
g <- randomEGraph(as.character(1:10), 0.3)

dist <- distanceMatrix(g)
layer <- layerMatrix(g, dist=dist)

informationLayerIndex(g, dist=dist, layer=layer)
}
\keyword{descriptors}
