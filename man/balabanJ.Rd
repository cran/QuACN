\name{balabanJ}
\alias{balabanJ}
\title{The Balaban J index
}
\description{
This method calculates the Balaban J index.
}
\usage{
balabanJ(g, dist = NULL)
}
\arguments{
  \item{g}{
a graph as a graphNEL object.
}
  \item{dist}{
the distance matrix of the graph. If the parameter is empty the distance
matrix will be calculated within the function.
}
}
\details{
  This method calculates the Balaban J index:
 \deqn{H(G):= \frac{1}{2}\sum_{i=1}^{|N|}\sum_{j=1}^{|N|}(d(v_i,v_j))^{-1}, \quad i \ne j}

}
\value{
It returns the Balaban J index.
}
\references{A. T. Balaban. Highly discriminating distance-based topological index. Chem.Phys.Lett., 89:383-397, 1991
}
\author{
Laurin Mueller <laurin@eigenlab.net>
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
library(graph)
library(RBGL)
library(Rgraphviz)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
plot(g,"neato")

#calculate Distance Matrix
mat.dist <- distanceMatrix(g)

balabanJ(g)
}
\keyword{graphs}
