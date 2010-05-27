\name{graphIndexComplexity}
\alias{graphIndexComplexity}
\title{Graph index complexity measure
}
\description{
This method calculates the graph index complexity measure.
}
\usage{
graphIndexComplexity(g)
}
\arguments{
  \item{g}{
a graph as a graphNEL object.
}
}
\details{
  This method calculates the graph index complexity measure.
}
\value{
  It returns the graph index complexity measure as a double-precision
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

graphIndexComplexity(g)
}
\keyword{ descriptors }
