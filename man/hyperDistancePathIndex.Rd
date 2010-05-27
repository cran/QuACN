\name{hyperDistancePathIndex}
\alias{hyperDistancePathIndex}

\title{Hyper Distance Path Index}
\description{This method calculates the Hyper Distance Path Index.

}
\usage{
hyperDistancePathIndex(g, dist = NULL, wien = NULL)
}

\arguments{
  \item{g}{a graph as a graphNEL object.

}
  \item{dist}{the distance matrix of the graph. If the parameter is empty the distance matrix will be calculated within the function.

}
  \item{wien}{the wiener index of g.

}
}

\value{This method returns the Hyper Distance Path Index.

}
\references{
R. Todeschini, V. Consonni, and R. Mannhold, Handbook of Molecular Descriptors. Weinheim, Germany. Wiley-VCH, 2002.
}
\author{Laurin Mueller <laurin@eigenlab.net>

}

\examples{
library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)

degreeDistribution(g)
}
\keyword{ descriptors }
