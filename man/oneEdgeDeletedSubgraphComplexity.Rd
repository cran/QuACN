\name{oneEdgeDeletedSubgraphComplexity}
\alias{oneEdgeDeletedSubgraphComplexity}
\title{One-edge-deleted subgraph complexity measures
}
\description{This method calculates two indices based on
  one-edge-deleted subgraphs.
}
\usage{
oneEdgeDeletedSubgraphComplexity(g, one.eds = NULL)
}
\arguments{
  \item{g}{
a graph as a graphNEL object.
}
  \item{one.eds}{
the one-edge-deleted subgraphs of g as a list of adjacency matrices, as
returned by edgeDeletedSubgraphs(g).  If this parameter is omitted, the
subgraphs will be calculated automatically.
}
}
\details{
  This method calculates the one-edge-deleted subgraph complexity with
  respect to the different number of spanning trees (C_1eST) and spectra
  of the Laplacian and signless Laplacian matrix (C_1eSpec).
}
\value{
  The results are returned in a list with two entries named C_1eST and
  C_1eSpec.
}
\references{J. Kim and T. Wilhelm. What is a complex graph? Physica A,
  387:2637-2652, 2008
}
\author{
Lavanya Sivakumar, Michael Schutte
}

\examples{
library(graph)
set.seed(123)
g <- randomEGraph(as.character(1:12), 0.5)

result <- oneEdgeDeletedSubgraphComplexity(g)
result$C_1eST
result$C_1eSpec
}
\keyword{ subgraphs }
