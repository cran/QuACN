\name{compactness}
\alias{compactness}
\title{Compactness}
\description{This method calculates the compactness of a graph.
}
\usage{
compactness(g, dist = NULL, wien = NULL)
}
\arguments{
  \item{g}{a graphNEL object
}
  \item{dist}{the Distance Matrix of the graph g (optional)
}
  \item{wien}{the Wiener index of the graph g (optional)
}
}
\value{This returns the compactness of the graph.
}
\references{asdf}
\author{Laurin Mueller}
\examples{
library(graph)
library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)

#calculate Distance Matrix
mat.dist <- distanceMatrix(g)

compactness(g)
}
\keyword{ descriptors }