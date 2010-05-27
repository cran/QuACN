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
R. Todeschini and V. Consonni and R. Mannhold, Handbook of Molecular Descriptors, Wiley-VCH, Weinheim, Germany, 2002
}
\author{Laurin Mueller <laurin@eigenlab.net>
}

\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)

vertexDegree(g)
}
\keyword{graphs}