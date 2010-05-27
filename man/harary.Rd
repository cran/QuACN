\name{harary}
\alias{harary}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Harary Index}
\description{This method calculates the Harary Index.}
\usage{
harary(g, dist = NULL)
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
\value{It returns the Harary Index.

}
\references{
  R. Todeschini and V. Consonni and R. Mannhold, Handbook of Molecular Descriptors, Wiley-VCH, Weinheim, Germany, 2002
%% ~put references to the literature/web site here ~
}
\author{Laurin Mueller <laurin@eigenlab.net>
%%  ~~who you are~~
}
\details{   This method calculates the Hararay index:
\deqn{H(G):= \frac{1}{2}\sum_{i=1}^{|N|}\sum_{j=1}^{|N|}(d(v_i,v_j))^{-1}, \quad i \ne j}
}

\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)

harary(g)
}
\keyword{graphs}
