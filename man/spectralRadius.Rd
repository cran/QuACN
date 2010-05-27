\name{spectralRadius}
\alias{spectralRadius}
\title{Spectral radius}
\description{This method calculates the spectral radius of a graph.
}
\usage{
spectralRadius(g)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
}

\value{This method returns the spectral radius of a graph as a
  double-precision floating point value.
}
\author{
Lavanya Sivakumar, Michael Schutte
}

\examples{

library(graph)
set.seed(123)
g <- randomEGraph(as.character(1:9), 0.5)

spectralRadius(g)
}
\keyword{ descriptors }
