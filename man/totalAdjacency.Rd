\name{totalAdjacency}
\alias{totalAdjacency}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Index of total Adjacency}
\description{This method calculates the Index of total Adjacency.}
\usage{
totalAdjacency(g, am = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{g}{a graph as a graphNEL object.
%%     ~~Describe \code{g} here~~
}
  \item{am}{the adjacency matrix of g.
%%     ~~Describe \code{am} here~~
}
}

\value{This method returns
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

totalAdjacency(g)
}
\keyword{graphs}