\name{radialCentric}
\alias{radialCentric}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Radial Centric Information Index}

\description{This method calculates the Radial Centric Information Index.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
radialCentric(g, dist = NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{dist}{the distance matrix of the graph. If the parameter is empty the distance matrix will be calculated within the function.
}
}

\value{This method returns the Radial Centric Information Index.
}
\references{D. Bonchev, Information Theoretic Indices for Characterization of Chemical Structures. Research Studies Press, Chichester, 1983.
}
\author{Laurin Mueller <laurin@eigenlab.net>
}
\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36, weights=FALSE)

radialCentric(g)
}
\keyword{ descriptors }