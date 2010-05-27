\name{mediumArticulation}
\alias{mediumArticulation}
\title{Medium articulation index
}
\description{
This method calculates the medium articulation index.
}
\usage{
mediumArticulation(g)
}
\arguments{
  \item{g}{
a graph as a graphNEL object.
}
}
\details{
  This method calculates the medium articulation index.
}
\value{
  It returns the medium articulation index as a double-precision
  floating point value.
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
g <- randomEGraph(as.character(1:10), 0.6)

mediumArticulation(g)
}
\keyword{ descriptors }
