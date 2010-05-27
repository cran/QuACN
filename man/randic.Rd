\name{randic}
\alias{randic}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Randic connectivity index}
\description{This method calculates the Randic connectivity index.}
\usage{
randic(g, deg = NULL)
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
\value{This method returns the Randic connectivity index.
}
\references{X. Li and I. Gutman, Mathematical Aspects of Randi\'{c}-Type Molecular Structure Descriptors, ser. Mathematical Chemistry Monographs. University of Kragujevac and Faculty of Science Kragujevac, 2006.
}
\author{Laurin Mueller <laurin@eigenlab.net>
}

\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)

randic(g)
}
\keyword{ descriptors }