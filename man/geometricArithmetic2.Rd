\name{geometricArithmetic2}
\alias{geometricArithmetic2}
\title{Second geometric-arithmetic index}
\description{This method calculates the second geometric-arithmetic (GA2) index.
}
\usage{
geometricArithmetic2(g, dist = NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{dist}{the distance matrix of g.  Will be automatically calculated
    if not supplied.
}
}

\value{This method returns the second geometric-arithmetic index of a graph
  as a double-precision floating point value.
}
\references{B. Zhou and I. Gutman and B. Furtula and Z. Du: On two types of geometric-arithmetic index.  Chemical Physics Letters, 482:153-155, 2009
}
\author{
Lavanya Sivakumar, Michael Schutte
}

\examples{

library(graph)
set.seed(123)
g <- randomEGraph(as.character(1:9), 0.5)

# optional: pre-calculate distance matrix
mat.dist <- distanceMatrix(g)

geometricArithmetic2(g, mat.dist)
}
\keyword{ descriptors }
