\name{laplacianEstrada}
\alias{laplacianEstrada}
\title{Laplacian Estrada index}
\description{This method calculates the Laplacian Estrada index of a graph.
}
\usage{
laplacianEstrada(g)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
}

\value{This method returns the Laplacian Estrada index of a graph as a
  double-precision floating point value.
}
\references{G. H. Fath-Tabar and A. R. Ashrafi and I. Gutman: Note on Estrada
  and L-Estrada indices of graphs, Bull. Cl. Sci. Math. Nat. Sci. Math.
  CXXXIX, 2009
}
\author{
Lavanya Sivakumar, Michael Schutte
}

\examples{

library(graph)
set.seed(123)
g <- randomEGraph(as.character(1:8), 0.6)

laplacianEstrada(g)
}
\keyword{ descriptors }
