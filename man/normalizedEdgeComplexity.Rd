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

\value{This method returns the Normalized Edge Complexity
}
\references{
D. Bonchev and D. H. Rouvray, Complexity in Chemistry, Biology, and Ecology, ser. Mathematical and Computational Chemistry. Springer, 2005, New York, NY, USA.
}
\author{Laurin Mueller <laurin@eigenlab.net>
}

\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)

normalizedEdgeComplexity(g)
}
\keyword{ descriptors }
