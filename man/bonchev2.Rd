\name{bonchev2}
\alias{bonchev2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Magnitude-based information index by Bonchev I_D^W(G)}
\description{This method calculates the magnitude-based information index by Bonchev I_D^W(G)
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
bonchev2(g, dist = NULL, wien = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{g}{
    a graph as a graphNEL object.
}

\item{dist}{
  the distance matrix of the graph. If the parameter is empty the distance
matrix will be calculated within the function.
}
\item{wien}{
  the Wiener index of g.
}
}

\value{This method returns the magnitude-based information index by Bonchev I_D^W(G).

}
\references{
  D. Bonchev and N. Trinajstic, Information theory, distance
matrix and molecular branching, J. Chem. Phys., 67:4517-4533, 1977
%% ~put references to the literature/web site here ~
}
\author{
 Laurin Mueller <laurin@eigenlab.net>
}

\examples{
library(graph)
library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)


#calculate Distance Matrix
mat.dist <- distanceMatrix(g)

bonchev2(g)
bonchev2(g,mat.dist, wiener(g))
}
\keyword{ descriptors }
