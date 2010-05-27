\name{adjacencyMatrix}
\alias{adjacencyMatrix}
\title{Adjacency Matrix
}
\description{This method calculates the adjacency Matrix of a given graph.
}
\usage{
adjacencyMatrix(g)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
%%     ~~Describe \code{g} here~~
}
}

\value{This method returns the adjacency Matrix of a given graph.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{F. Harary, Graph Theory, Addison-Wesley series in mathematics, Perseus Books, 1994.
}
\author{Laurin Mueller
}

\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)

adjacencyMatrix(g)
}
\keyword{ graph matrices }
