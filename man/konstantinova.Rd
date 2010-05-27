\name{konstantinova}
\alias{konstantinova}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Konstantinova}
\description{This method calculates the Konstantinova index}
\usage{
konstantinova(g, dist = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{g}{a graphNEL object
%%     ~~Describe \code{g} here~~
}
  \item{dist}{the Distance Matrix of the graph g (optional)
%%     ~~Describe \code{dist} here~~
}
}

\value{It returns the Konstantinova index.
}
\references{  E. V. Konstantinova and A. A. Paleev. Sensitivity of topological
  indices of polycyclic graphs. Vychisl. Sistemy, 136:38-48, 1990, In
  Russion.
}
\author{
  Andreas Dander <andreas.dander@umit.at>
  
  Laurin Mueller
%%  ~~who you are~~
}

\examples{

library(QuACN)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
mat.dist <- distanceMatrix(g)

konstantinova(g)
konstantinova(g,dist=mat.dist)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ descriptors }
