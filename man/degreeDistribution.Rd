\name{degreeDistribution}
\alias{degreeDistribution}
\title{Degree Distribution
}
\description{This methods calculates the degree distribution of a given graph.
}
\usage{
degreeDistribution(g, deg = NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{deg}{the distance matrix of the graph. If the parameter is empty the distance matrix will be calculated within the function.
}
}

\value{This methods returns the degree distribution
}
\references{TODO

}
\author{
Laurin Mueller <laurin@eigenlab.net>
}

\examples{
library(RBGL)
library(Rgraphviz)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
plot(g,"neato")

degreeDistribution(g)
}
\keyword{graphs}
