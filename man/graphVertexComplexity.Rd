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
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{This method returns the Graph Vertex Complexity.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
R. Todeschini and V. Consonni and R. Mannhold, Handbook of Molecular Descriptors, Wiley-VCH, Weinheim, Germany, 2002

}
\author{Laurin Mueller <laurin@eigenlab.net>
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

library(RBGL)
library(Rgraphviz)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
plot(g,"neato")

graphVertexComplexity(g)
}
\keyword{graphs}
