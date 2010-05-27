\name{globalClusteringCoeff}
\alias{globalClusteringCoeff}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Global Clustering Coefficient}
\description{This method calculates the Global Clustering Coefficient.}
\usage{
globalClusteringCoeff(g, loc = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{loc}{the the local clustering coefficient.
}
}

\value{This method returns the global clustering coefficient.
}
\references{D. Watts, Small Worlds: The Dynamics of Networks Between Order and Randomness. Princeton Univ Pr, 2003.
D. Watts and S. Strogatz, Collective dynamics of 'Small-World' Networks, Nature, vol. 393, no. 6684, pp. 440-442, 1998.
}
\author{Laurin Mueller
}

\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)

loccc <- localClusteringCoeff(g)
globalClusteringCoeff(g)
globalClusteringCoeff(g,loc=loccc)
}
\keyword{ descriptors }
