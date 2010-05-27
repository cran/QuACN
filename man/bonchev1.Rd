\name{bonchev1}
\alias{bonchev1}

\title{Magnitude-based information index by Bonchev I_D(G)}
\description{This method calculates the magnitude-based information index by Bonchev I_D(G).
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
bonchev1(g, dist = NULL)
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
}

\value{It returns the magnitude-based information index by Bonchev I_D(G)
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
  D. Bonchev and N. Trinajstic, Information theory, distance
matrix and molecular branching, J. Chem. Phys., 67:4517-4533, 1977
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

bonchev1(g,mat.dist)
}
\keyword{graphs}
