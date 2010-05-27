\name{estrada}
\alias{estrada}
\title{Estrada index}
\description{This method calculates the Estrada index of a graph.
}
\usage{
estrada(g)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
}

\value{This method returns the estrada index of a graph as a
  double-precision floating point value.
}
\references{E. Estrada: Characterization of 3D molecular structure.
  Chemical Physics Letters, 319:713-718, 2000
}
\author{
Lavanya Sivakumar, Michael Schutte
}

\examples{

library(graph)
set.seed(123)
g <- randomEGraph(as.character(1:8), 0.6)

estrada(g)
}
\keyword{ descriptors }
