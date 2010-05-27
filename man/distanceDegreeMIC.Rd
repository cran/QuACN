\name{distanceDegreeMIC}
\alias{distanceDegreeMIC}
\title{Mean information content of the distance degrees}
\description{
  This method calculates the mean information content of the distance degrees.
}
\usage{
  distanceDegreeMIC(g, dist=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.}
  \item{dist}{the distance matrix of the graph.  Will be calculated automatically if not supplied.}
}

\value{
  The mean information content of the distance degrees as a double-precision floating point value.
}
\references{
  V. A. Skorobogatov and A. A. Dobrynin, Metrical Analysis of Graphs,
  J. Comput. Chem., 23:105-155, 1988
}
\author{Michael Schutte}

\examples{
set.seed(987)
g <- randomEGraph(as.character(1:10), 0.3)

distanceDegreeMIC(g)
}
\keyword{descriptors}
