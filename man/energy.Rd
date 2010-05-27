\name{energy}
\alias{energy}
\title{Graph energy}
\description{This method calculates the energy of a graph.
}
\usage{
energy(g)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
}

\value{This method returns the energy of a graph as a double-precision
  floating point value.
}
\author{
Lavanya Sivakumar, Michael Schutte
}

\examples{

library(graph)
set.seed(123)
g <- randomEGraph(as.character(1:6), 0.35)

energy(g)
}
\keyword{ descriptors }
