\name{normalizedEdgeComplexity}
\alias{normalizedEdgeComplexity}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Normalized Edge Complexity}
\description{This method calculates the Normalized Edge Complexity.}
\usage{
normalizedEdgeComplexity(g, ita = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{g}{a graph as a graphNEL object.
%%     ~~Describe \code{g} here~~
}
  \item{ita}{the total adjacency measure.
%%     ~~Describe \code{ita} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{This method returns the Normalized Edge Complexity
}
\references{
R. Todeschini and V. Consonni and R. Mannhold, Handbook of Molecular Descriptors, Wiley-VCH, Weinheim, Germany, 2002
}
\author{Laurin Mueller <laurin@eigenlab.net>
}
\note{
}


\seealso{
}
\examples{

library(RBGL)
library(Rgraphviz)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
plot(g,"neato")

normalizedEdgeComplexity(g)
}
\keyword{graphs}
