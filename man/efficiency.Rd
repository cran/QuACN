\name{efficiency}
\alias{efficiency}
\title{Efficiency complexity index
}
\description{
This method calculates the efficiency complexity measure.
}
\usage{
efficiency(g, dist=NULL)
}
\arguments{
  \item{g}{
a graph as a graphNEL object.
}
  \item{dist}{
the distance matrix of the graph.  Will be calculated automatically if
left empty.
}
}
\details{
  This method calculates the efficiency complexity measure.
}
\value{
  It returns the efficiency complexity measure as a double-precision
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

efficiency(g)

# alternatively:
dist <- distanceMatrix(g)
efficiency(g, dist)
}
\keyword{ descriptors }
