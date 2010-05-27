\name{symmetryIndex}
\alias{symmetryIndex}
\title{Symmetry Index}
\description{This method calculates the symmetry index.}
\usage{
symmetryIndex(g, dist=NULL, deg=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.}
  \item{dist}{the distance matrix of the graph.  Will be automatically
    calculated if not supplied.}
  \item{deg}{the degree of each node of g.  Will be automatically
    calculated if not supplied.}
}

\value{This method returns the symmetry index for a graph as a
  double-precision floating point value.}
\references{A. Mowshowitz and M. Dehmer: A Symmetry Index for Graphs.
  Symmetry: Culture and Science, 21(4):321-327, 2010.}
\author{Michael Schutte} % TODO

\examples{
library(graph)
set.seed(123)
g <- randomEGraph(as.character(1:9), 0.5)

symmetryIndex(g)
}
\keyword{ descriptors }
