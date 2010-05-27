\name{adjacencyMatrix}
\alias{adjacencyMatrix}
\title{
Adjacency Matrix
}
\description{
Returns the adjacency matrix of a graph.
}
\usage{
adjacencyMatrix(g)
}
\arguments{
  \item{g}{
A graph as a graphNEL object.
}
}
\details{
}
\value{
Returns a matrix with "1" between connected vertices and "0" between not
connected ones.
}
\references{
  F. Harary. Graph Theory. Addison Wesley Publishing Company, 1969. Reading, MA, USA.
}
\author{
Laurin Mueller <laurin@eigenlab.net>
}
\note{
}
\seealso{
}
\examples{
library(graph)
library(RBGL)
library(Rgraphviz)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
plot(g,"neato")

#calculate Adjacency Matrix
mat.adj <- adjacencyMatrix(g)

#calculate Distance Matrix
mat.dist <- distanceMatrix(g)

#calculate the Degree of each node
vec.degree <- graph::degree(g)

#calculate the Diamter of a Graph
ska.dia <- diameter(g)
ska.dia <- diameter(g,mat.dist)
}
\keyword{ graphs }

