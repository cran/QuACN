\name{balabanID}
\alias{balabanID}
\title{Balaban ID number}
\description{This method calculates the Balaban ID number.}
\usage{
balabanID(g, dist=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.}
  \item{dist}{the pre-computed distance matrix of the graph.  Will be
    calculated automatically if NULL.}
}

\value{The return value is the Balaban ID number of the graph, a
weighted path count based on the vertex distance degree.
}
\references{A. T. Balaban. Numerical Modelling of Chemical Structures: Local Graph Invariants and Topological
  Indices. In Graph Theory and Topology in Chemistry, R. King and D. Rouvray, Eds., pp. 159-176, 1987}
\author{Michael Schutte}

\examples{
set.seed(987)
g <- randomEGraph(LETTERS[1:10], 0.3)

balabanID(g)
}
\keyword{ descriptors }
