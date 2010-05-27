\name{weightedID}
\alias{weightedID}
\title{Weighted ID number}
\description{This method calculates the weighted ID number.}
\usage{
weightedID(g, dsc=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.}
  \item{dsc}{the distance-sum-connectivity matrix of g.  Will be
    automatically calculated if not supplied.}
}

\value{The result is a list of two floating point numbers, the weighted
ID number (WID) and the self-returning ID number (SID).  The former is
based on the sum of all walks weighted according to vertex distance
degrees.  The latter is limited to self-returning walks.
}
\references{K. Szymanski, W. Mueller, J. Knop, and N. Trinajsti\'{c}.
  On the Identification Numbers for Chemical Structures.
  International Journal of Quantum Chemistry, 30(S20):173-183, 1986}
\author{Michael Schutte}

\examples{
set.seed(987)
g <- randomEGraph(LETTERS[1:10], 0.3)

weightedID(g)
}
\keyword{ descriptors }
