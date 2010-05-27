\name{balabanlike1}
\alias{balabanlike1}
\title{BALABAN-like information index U(G)
}
\description{
This method calculates the BALABAN-like information index U(G).
}
\usage{
balabanlike1(g, dist = NULL)
}

\arguments{
  \item{g}{a graph as a graphNEL object.
%%     ~~Describe \code{g} here~~
}
  \item{dist}{the distance matrix of the graph. If the parameter is empty the distance
matrix will be calculated within the function.
%%     ~~Describe \code{dist} here~~
}
}
\details{This method calculates the BALABAN-like information index U(G).
%%  ~~ If necessary, more details than the description above ~~
}
\value{
It return the BALABAN-like information index U(G).
}
\references{
 A. T. Balaban and T. S. Balaban, New Vertex Invariants and Topological
  Indices of Chemical Graphs Based on Information on Distances.,
  J. Math. Chem., 1991, 8:383-397
  
}
\author{
Laurin Mueller <laurin@eigenlab.net>
}

\examples{
library(graph)
library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)

#calculate Distance Matrix
mat.dist <- distanceMatrix(g)

balabanlike1(g,mat.dist)
}

\keyword{graphs}