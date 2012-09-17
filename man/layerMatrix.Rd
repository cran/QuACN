\name{layerMatrix}
\alias{layerMatrix}
\title{Layer (sphere) matrix}
\description{
  This method calculates the layer matrix, also known as sphere matrix, of a graph.
}
\usage{
  layerMatrix(g, dist=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.}
  \item{dist}{the pre-computed distance matrix of the graph.  Will be
    calculated automatically if NULL.}
}

\value{
  This method returns the layer (sphere) matrix of a graph.  Each row of
  this matrix represents a vertex in the graph.  The j-th column
  specifies the number of vertices in the j-sphere of this vertex.
}
\references{
  E. V. Konstantinova, On some applications of information indices in
  chemical graph theory, in R. Ahlswede et al. (eds.), General Theory of
  Information Transfer and Combinatorics, LNCS, pp. 831-852, Springer,
  2006
}
\author{Michael Schutte}

\examples{
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36, weights=FALSE)

layerMatrix(g)
}
\keyword{ graph matrices }
