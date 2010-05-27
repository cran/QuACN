\name{bertz}
\alias{bertz}
\title{Bertz complexity index}
\description{This method calculates BERTZ complexity index.
}
\usage{
bertz(g, dist = NULL, deg = NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{dist}{the distance matrix of the graph. If the parameter is
  empty the distance matrix will be calculated within the function.

}
  \item{deg}{the degree of each nodes of the graph. If the parameter is
  empty the degrees will be calculated within the function.

}
}
\details{This method calculates the BERTZ complexity index.

}
\value{It returns the BERTZ complexity index.

}
\references{
  S. H. Bertz. The first general index of molecular complexity. Journal
  of the American Chemical Society, 103:3241-3243, 1981
}
\author{Laurin Mueller <laurin@eigenlab.net>
}

\examples{
library(graph)
library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)

#calculate Distance Matrix
mat.dist <- distanceMatrix(g)

bertz(g,mat.dist)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{graphs}
