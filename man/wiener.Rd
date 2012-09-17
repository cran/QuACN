\name{wiener}
\alias{wiener}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Wiener index}
\description{This method calculates the Wiener index.}
\usage{
wiener(g, dist = NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{dist}{the distance matrix of the graph. If the parameter is empty the distance matrix will be calculated within the function.
}
}

\value{This method returns the Wiener index.
}
\references{H. Wiener, Structural Determination of Paraffin Boiling Points, Journal of the American Chemical Society, vol. 69, no. 1, pp. 17-20, Jan. 1947.

}
\author{Laurin Mueller
}

\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36, weights=FALSE)

wiener(g)
}
\keyword{ descriptors }