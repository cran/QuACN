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
\references{
Skorobogatov V.A. and Dobrynin A.A., Metric analysis of graphs, match, pp. 105-151, 1988.
}
\author{
Laurin Mueller <laurin@eigenlab.net>
}

\examples{
library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)

degreeDistribution(g)
}
\keyword{ descriptors }
