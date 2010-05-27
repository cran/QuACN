\name{spanningTreeSensitivity}
\alias{spanningTreeSensitivity}
\title{Spanning tree sensitivity measures
}
\description{This method calculates two spanning tree sensitivity
measures.
}
\usage{
spanningTreeSensitivity(g, one.eds = NULL)
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
  This method calculates the spanning tree sensitivity (STS) and the
  spanning tree sensitivity differences (STSD) measures.
}
\value{
  The results are returned in a list with two entries named STS and
  STSD.
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

result <- spanningTreeSensitivity(g)
result$STS
result$STSD
}
\keyword{ descriptors }
