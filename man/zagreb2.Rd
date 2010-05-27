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
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{This method returns the Zagreb group index 2.
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

zagreb2(g)
}
\keyword{graphs}