\name{zagreb2}
\alias{zagreb2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Zagreb group index 2}
\description{This method calculates the Zagreb group index 2.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
zagreb2(g, deg = NULL)
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

\value{This method returns the Zagreb group index 2.
}
\references{
M. V. Diudea, I. Gutman, and L. Jantschi, Molecular Topology. Nova Publishing, 2001, New York, NY, USA
}
\author{Laurin Mueller
}

\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)

zagreb2(g)
}
\keyword{ descriptors }