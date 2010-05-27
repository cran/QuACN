\name{konstantinova}
\alias{konstantinova}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Konstantinova}
\description{This method calculates the Konschtantinova index}
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
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{  E. V. Konstantinova and A. A. Paleev. Sensitivity of topological
  indices of polycyclic graphs. Vychisl. Sistemy, 136:38-48, 1990, In
  Russion.
}
\author{
  Andreas Dander <andreas.dander@umit.at>
  
  Laurin Mueller <laurin@eigenlab.net>
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

library(QuACN)
library(Rgraphviz)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
mat.dist <- distanceMatrix(g)
plot(g,"neato")

konstantinova(g)
konstantinova(g,dist=mat.dist)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
