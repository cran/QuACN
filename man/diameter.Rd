\name{diameter}
\alias{diameter}
\title{Diameter
}
\description{This method calculates the diameter of a given graph.
}
\usage{
diameter(g, dist = NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{dist}{the distance matrix of the graph. If the parameter is empty the distance matrix will be calculated within the function.
}
}
\details{
}
\value{This method returns the diameter of a given graph.
}
\references{
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

diameter(g)
}
\keyword{graphs}
