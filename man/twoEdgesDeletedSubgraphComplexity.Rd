\name{twoEdgesDeletedSubgraphComplexity}
\alias{twoEdgesDeletedSubgraphComplexity}
\title{Two-edges-deleted subgraph complexity
}
\description{This method calculates the two-edges-deleted subgraph
  complexity based on Laplacian matrices.
}
\usage{
twoEdgesDeletedSubgraphComplexity(g, two.eds = NULL)
}
\arguments{
  \item{g}{
a graph as a graphNEL object.
}
  \item{two.eds}{
the two-edges-deleted subgraphs of g as a list of adjacency matrices, as
returned by edgeDeletedSubgraphs(edgeDeletedSubgraphs(g)).  If this
parameter is omitted, the subgraphs will be calculated automatically.
}
}
\details{
  This method calculates the two-edges-deleted subgraph complexity with
  respect to different spectra of the Laplacian and signless Laplacian
  matrix.
}
\value{
  The return value is the described two-edges-deleted subgraph
  complexity measure as a double-precision floating point number.
}
\references{J. Kim and T. Wilhelm. What is a complex graph? Physica A,
  387:2637-2652, 2008
}
\author{
Lavanya Sivakumar, Michael Schutte <michi@uiae.at>
}

\examples{
library(graph)
set.seed(123)
g <- randomEGraph(as.character(1:12), 0.5)

twoEdgesDeletedSubgraphComplexity(g)
}
\keyword{ descriptors }
