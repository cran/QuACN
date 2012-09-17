\name{complexityIndexB}
\alias{complexityIndexB}
\title{The complexity index B
}
\description{This method calcualtes the complexity index B of a given graph
}
\usage{
complexityIndexB(g, dist = NULL, deg = NULL)
}
\arguments{
  \item{g}{
a graph as a graphNEL object.
}
\item{dist}{
  the distance matrix of the graph. If the parameter is empty the
  distance matrix will be calculated within the function.
}
  \item{deg}{ the degree of each node
}
}

\value{This returns calcualtes the complexity index B.
}
\references{D. Bonchev and D. H. Rouvray, Complexity in Chemistry, Biology, and Ecology, ser. Mathematical and Computational Chemistry. Springer, 2005, New York, NY, USA.
}
\author{
  Laurin Mueller
}

\examples{
library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36, weights=FALSE)

complexityIndexB(g)
}
\keyword{ descriptors }
