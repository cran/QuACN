\name{edgeDeletedSubgraphs}
\alias{edgeDeletedSubgraphs}
\title{Edge-deleted subgraphs
}
\description{This method lists all edge-deleted subgraphs of a given graph.
}
\usage{
edgeDeletedSubgraphs(gs)
}
\arguments{
  \item{gs}{a list of or a single graph, either as a graphNEL object or
    as an adjacency matrix.
}
}

\value{This method returns a flat list of all unique subgraphs which can
  be constructed from the input graph(s) by removing a single edge.  The
  individual graphs are output as adjacency matrices.
}
\author{
Lavanya Sivakumar, Michael Schutte <michi@uiae.at>
}

\examples{
library(graph)
set.seed(123)
g <- randomEGraph(as.character(1:8), 0.55)

one.eds <- edgeDeletedSubgraphs(g)
two.eds <- edgeDeletedSubgraphs(one.eds)
}
\keyword{ subgraphs }
