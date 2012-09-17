\name{distanceMatrix}
\alias{distanceMatrix}
\title{Distance Matrix
}
\description{This method calculates the distance Matrix of a given graph.
}
\usage{
distanceMatrix(g, keep.weights=FALSE)
}
\arguments{
  \item{g}{ The graphNEL object for which the distance matrix will be calculated.}
  \item{keep.weights}{A flag indicating whether weights should be
    considered when performing the conversion (DEFAULT= FALSE). \emph{currently ignored, added for later development}}
}

\details{This method returns the distance Matrix of a given graph. If the
  graph is weighted it will be treated as if it was an unweighted
  graph.
}
\value{A distance matrix with dimensions V(g) x V(g).
}
\note{
  Currently we ignore the edge weight information when calculating the
  distance matrix. This will most likely change in future versions.
}
\references{F. Harary, Graph Theory, Addison-Wesley series in mathematics, Perseus Books, 1994.
}
\author{Laurin Mueller, Karl Kugler
%%  ~~who you are~~
}

\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36, weights=FALSE)

distanceMatrix(g)
}
\keyword{ graph matrices }
