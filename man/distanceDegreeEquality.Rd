\name{distanceDegreeEquality}
\alias{distanceDegreeEquality}
\title{Mean information content of distance-degree equality}
\description{
  This method calculates the mean information content of distance-degree equality.
}
\usage{
  distanceDegreeEquality(g, dist=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.}
  \item{dist}{the distance matrix of the graph.  Will be calculated automatically if not supplied.}
}

\value{
  The mean information content of distance-degree equality as a double-precision floating point value.
}
\references{
  D. Bonchev, Information Theoretic Indices for Characterization of Chemical Structures,
  Research Studies Press, Chichester, 1983
}
\author{Michael Schutte}

\examples{
set.seed(987)
g <- randomEGraph(as.character(1:10), 0.3)

distanceDegreeEquality(g)
}
\keyword{descriptors}
