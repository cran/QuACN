\name{distanceDegreeCompactness}
\alias{distanceDegreeCompactness}
\title{Compactness measure based on distance degrees}
\description{
  This method calculates a compactness measure based on recognizing the center of a graph and analyzing the distance degrees of the vertices in all of its j-spheres.

  Note that this function only gives reliable results for acyclic graphs.
}
\usage{
  distanceDegreeCompactness(g, dist=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.}
  \item{dist}{the distance matrix of the graph.  Will be calculated automatically if not supplied.}
}

\value{
  The distance-degree-based compactness value as a double-precision floating point value.
}
\references{
  S. C. Basak, A. T. Balaban and S. Bertelsen, New centric topological indexes
  for acyclic molecules (trees) and substituents (rooted trees), and coding of rooted trees,
  MATCH Commun. Math. Comput. Chem., 30:55-72, 1994
}
\author{Michael Schutte}

\examples{
set.seed(987)
g <- randomEGraph(as.character(1:10), 0.3)

distanceDegreeCompactness(g)
}
\keyword{descriptors}
