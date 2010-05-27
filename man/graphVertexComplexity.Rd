\name{graphVertexComplexity}
\alias{graphVertexComplexity}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Graph Vertex Complexity}
\description{This method calculates the Graph Vertex Complexity.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
graphVertexComplexity(g, dist = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{g}{a graph as a graphNEL object.
%%     ~~Describe \code{g} here~~
}
  \item{dist}{the distance matrix of the graph. If the parameter is empty the distance matrix will be calculated within the function.
%%     ~~Describe \code{dist} here~~
}
}

\value{This method returns the Graph Vertex Complexity.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
C. Raychaudhury, S. K. Ray, J. J. Ghosh, A. B. Roy, and S. C. Basak, Discrimination of Isomeric Structures using Information Theoretic Topological Indices, Journal of Computational Chemistry, vol. 5, pp. 581-588, 1984.
}
\author{Laurin Mueller
%%  ~~who you are~~
}

\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)

graphVertexComplexity(g)
}
\keyword{ descriptors }
