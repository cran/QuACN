\name{graphDistanceComplexity}
\alias{graphDistanceComplexity}
\title{Graph distance complexity measure}
\description{
  This method calculates the graph distance complexity measure.
}
\usage{
  graphDistanceComplexity(g, dist=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.}
  \item{dist}{the distance matrix of the graph.  Will be calculated automatically if not supplied.}
}

\value{
  The graph distance complexity measure as a double-precision floating point value.
}
\references{
  C. Raychaudhury, S. K. Ray, J. J. Ghosh, A. B. Roy and S. C. Basak,
  Discrimination of isomeric structures using information theoretic topological indices,
  J. Comput. Chem., 5:581-588, 1984
}
\author{Michael Schutte}

\examples{
set.seed(987)
g <- randomEGraph(as.character(1:10), 0.3)

graphDistanceComplexity(g)
}
\keyword{descriptors}
