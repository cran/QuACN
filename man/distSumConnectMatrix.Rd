\name{distSumConnectMatrix}
\alias{distSumConnectMatrix}
\title{Distance-sum-connectivity matrix}
\description{This method calculates the distance-sum-connectivity matrix of a given graph.
}
\usage{
distSumConnectMatrix(g, dist=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.}
  \item{dist}{the pre-computed distance matrix of the graph.  Will be
    calculated automatically if NULL.}
}

\value{This method returns the distance-sum-connectivity matrix of a
given graph.  This is an adjacency matrix where each edge is weighted
according to the reciprocal square root of the product of the adjacent
vertices' distance sum.
}
\references{K. Szymanski, W. Mueller, J. Knop, and N. Trinajsti\'{c}.
  On the Identification Numbers for Chemical Structures.
  International Journal of Quantum Chemistry, 30(S20):173-183, 1986}
\author{Michael Schutte}

\examples{
library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)

distSumConnectMatrix(g)
}
\keyword{ graph matrices }
