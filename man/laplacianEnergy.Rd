\name{laplacianEnergy}
\alias{laplacianEnergy}
\title{Laplacian energy of a graph}
\description{This method calculates the Laplacian energy of a graph.
}
\usage{
laplacianEnergy(g)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
}

\value{This method returns the Laplacian energy of a graph as a
  double-precision floating point value.
}
\references{I. Gutman and B. Zhou: Laplacian energy of a graph.  Linear
  Algebra and its Applications, 414:29-37, 2006.
}
\author{
Lavanya Sivakumar, Michael Schutte
}

\examples{

library(graph)
set.seed(123)
g <- randomEGraph(as.character(1:8), 0.6)

laplacianEnergy(g)
}
\keyword{ descriptors }
