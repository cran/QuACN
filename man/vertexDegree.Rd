\name{vertexDegree}
\alias{vertexDegree}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Vertex degree equality-based information index.}
\description{This method calculates the vertex degree equality-based information index
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
vertexDegree(g, deg = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{g}{a graph as a graphNEL object.
%%     ~~Describe \code{g} here~~
}
  \item{deg}{the degree of each node of g.
%%     ~~Describe \code{deg} here~~
}
}

\value{This method returns the Vertex degree equality-based information index.
}
\references{
D. Bonchev, Information Theoretic Indices for Characterization of Chemical Structures. Research Studies Press, Chichester, 1983.
}
\author{Laurin Mueller
}

\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36, weights=FALSE)

vertexDegree(g)
}
\keyword{ descriptors }