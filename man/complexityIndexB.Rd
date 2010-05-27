\name{complexityIndexB}
\alias{complexityIndexB}
\title{The complexity index B
}
\description{This method calcualtes the complexity index B of a given graph
}
\usage{
complexityIndexB(g, dist = NULL, deg = NULL)
}
\arguments{
  \item{g}{
a graph as a graphNEL object.
}
\item{dist}{
  the distance matrix of the graph. If the parameter is empty the
  distance matrix will be calculated within the function.
}
  \item{deg}{ the degree of each node
}
}
\details{
}
\value{This returns calcualtes the complexity index B.
}
\references{
R. Todeschini and V. Consonni and R. Mannhold, Handbook of Molecular Descriptors, Wiley-VCH, Weinheim, Germany, 2002library(graph)

}
\author{
  Laurin Mueller <laurin@eigenlab.net>
}
\note{
}


\seealso{
}
\examples{
library(RBGL)
library(Rgraphviz)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
plot(g,"neato")

complexityIndexB(g)
}
\keyword{graphs}
