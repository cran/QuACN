\name{localClusteringCoeff}
\alias{localClusteringCoeff}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Local Clustering Coefficient}
\description{This method calculates the Local Clustering Coefficient.}
\usage{
localClusteringCoeff(g, deg = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{deg}{the degree of each node of the g.
}
}

\value{This method returns the local clustering coefficient.
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

deg <- graph::degree(g)
localClusteringCoeff(g)
localClusteringCoeff(g,deg)
}
\keyword{ descriptors }
