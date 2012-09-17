\name{productOfRowSums}
\alias{productOfRowSums}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Product of Row Sums}
\description{This method calculates the product of row sums.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
productOfRowSums(g, dist = NULL, log = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{g}{a graph as a graphNEL object.
%%     ~~Describe \code{g} here~~
}
  \item{dist}{the distance matrix of the graph. If the parameter is empty the distance matrix will be calculated within the function.
%%     ~~Describe \code{dist} here~~
}
  \item{log}{if TRUE it returns the log of the product. The default
    value is FALSE.
%%     ~~Describe \code{log} here~~
}
}

\value{This method returns the product of row sums.
}
\references{
H. P. Schultz, E. B. Schultz, and T. P. Schultz, Topological Organic Chemistry. 4. Graph Theory, Matrix
Permanents, and Topological Indices of Alkanes, Journal of Chemical Information and Computer Sciences,
vol. 32, no. 1, pp. 69-72, 1992.
}
\author{Laurin Mueller
}

\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36, weights=FALSE)

productOfRowSums(g)
}
\keyword{ descriptors }
