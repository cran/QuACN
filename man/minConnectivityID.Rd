\name{minConnectivityID}
\alias{minConnectivityID}
\title{Connectivity ID number considering shortest paths only}
\description{This method calculates a modified, faster version of the
  connectivity ID number.}
\usage{
minConnectivityID(g, deg=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.}
  \item{deg}{the degree of each node of g.  Will be automatically
    calculated if not supplied.}
}

\value{This method works like the connectivityID method, but it only
sums the weights of all the shortest paths in the graph.  This results
in different values only if the graph contains cycles.
}
\references{O. Ivanciuc and A. Balaban. Design of Topological Indices. Part 3.
  New Identification Numbers for Chemical Structures: MINID and MINSID.
  Croatica chemica acta, 69:9-16, 1996}
\author{Michael Schutte}

\examples{
set.seed(987)
g <- randomEGraph(LETTERS[1:10], 0.3)

minConnectivityID(g)
}
\keyword{ descriptors }
