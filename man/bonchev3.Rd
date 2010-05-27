\name{bonchev3}
\alias{bonchev3}
\title{Mean information content of the distance equalities}
\description{
  This method calculates the mean information content of the distance equalities.
}
\usage{
  bonchev3(g, dist=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.}
  \item{dist}{the distance matrix of the graph.  Will be calculated automatically if not supplied.}
}

\value{
  The mean information content of the distance equalities I^E_D(G) as a
  double-precision floating point value.
}
\references{
  D. Bonchev and N. Trinajstic, Information theory, distance matrix and
  molecular branching, J. Chem. Phys., 67:4517-4533, 1977
}
\author{Michael Schutte}

\examples{
set.seed(987)
g <- randomEGraph(as.character(1:10), 0.3)

dist <- distanceMatrix(g)

bonchev3(g, dist)
}
\keyword{descriptors}
