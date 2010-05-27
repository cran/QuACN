\name{offdiagonal}
\alias{offdiagonal}
\title{Offdiagonal complexity index
}
\description{
This method calculates the offdiagonal complexity measure.
}
\usage{
offdiagonal(g, deg = NULL)
}
\arguments{
  \item{g}{
a graph as a graphNEL object.
}
  \item{deg}{
the degree of all nodes of g.  Will be calculated automatically if left
empty.
}
}
\details{
  This method calculates the offdiagonal complexity measure.
}
\value{
  It returns the offdiagonal complexity measure as a double-precision
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

offdiagonal(g)

# alternatively:
deg <- graph::degree(g)
offdiagonal(g, deg)
}
\keyword{ descriptors }
