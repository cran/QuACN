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
\references{
R. Todeschini and V. Consonni and R. Mannhold, Handbook of Molecular Descriptors, Wiley-VCH, Weinheim, Germany, 2002
}
\author{
  Laurin Mueller <laurin@eigenlab.net>
}

\examples{
library(graph)
library(RBGL)
library(Rgraphviz)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
plot(g,"neato")

#calculate Distance Matrix
mat.dist <- distanceMatrix(g)

compactness(g)
}
\keyword{graphs}
