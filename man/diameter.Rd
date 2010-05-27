\name{diameter}
\alias{diameter}
\title{Diameter
}
\description{This method calculates the diameter of a given graph.
}
\usage{
diameter(g, dist = NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{dist}{the distance matrix of the graph. If the parameter is empty the distance matrix will be calculated within the function.
}
}

\value{This method returns the diameter of a given graph.
}
\references{F. Harary, Graph Theory, Addison-Wesley series in mathematics, Perseus Books, 1994.
}
\author{
  Laurin Mueller
}

\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)

diameter(g)
}
\keyword{ descriptors }
