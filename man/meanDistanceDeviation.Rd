\name{meanDistanceDeviation}
\alias{meanDistanceDeviation}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Mean Distance Deviation}
\description{This method calculates the Mean Distance Deviation.}
\usage{
meanDistanceDeviation(g, dist = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{dist}{the distance matrix of the graph. If the parameter is empty the distance matrix will be calculated within the function.
}
}

\value{This method returns Mean Distance Deviation.
}
\references{
Skorobogatov V.A. and Dobrynin A.A., Metric analysis of graphs, match, pp. 105-151, 1988.
}
\author{Laurin Mueller <laurin@eigenlab.net>
}

\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36, weights=FALSE)

meanDistanceDeviation(g)
}
\keyword{ descriptors }

