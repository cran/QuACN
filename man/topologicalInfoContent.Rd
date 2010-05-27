\name{topologicalInfoContent}
\alias{topologicalInfoContent}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Topological Information Conten}
\description{This method calculates the Topological Information Content.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
topologicalInfoContent(g, dist = NULL, deg = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{g}{a graph as a graphNEL object.
%%     ~~Describe \code{g} here~~
}
  \item{dist}{the distance matrix of the graph. If the parameter is empty the distance matrix will be calculated within the function.
%%     ~~Describe \code{dist} here~~
}
  \item{deg}{the degree of each node of g.
%%     ~~Describe \code{deg} here~~
}
}

\value{This method returns the Topological Information Content.}
  
\references{
R. Todeschini and V. Consonni and R. Mannhold, Handbook of Molecular Descriptors, Wiley-VCH, Weinheim, Germany, 2002
}
\author{Laurin Mueller <laurin@eigenlab.net>
}

\examples{

library(RBGL)
library(Rgraphviz)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
plot(g,"neato")

topologicalInfoContent(g)
}
\keyword{graphs}