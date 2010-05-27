\name{wiener}
\alias{wiener}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Wiener index}
\description{This method calculates the Wiener index.}
\usage{
wiener(g, dist = NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{dist}{the distance matrix of the graph. If the parameter is empty the distance matrix will be calculated within the function.
}
}
\details{
}
\value{This method returns the Wiener index.
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

wiener(g)
}
\keyword{graphs}