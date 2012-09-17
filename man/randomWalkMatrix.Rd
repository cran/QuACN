\name{randomWalkMatrix}
\alias{randomWalkMatrix}
\title{Random Walk Markov Matrix
}
\description{Calculates the random walk markov matrix.
}
\usage{
randomWalkMatrix(g)
}
\arguments{
  \item{g}{
A graph as a graphNEL object.
}
}
\details{for deatils see the vignette or the reference
}
\value{  \item{RanWalk_Mat}{Returns the random walk markov matrix.
}
}
\references{Dehmer M, Sivakumar L, Varmuzua K: Uniquely Discriminating Molecular Structures Using Novel Eigenvalue Based Descriptors. match 2012, 67:147-172}
\author{Lavanya Sivakumar
}

\examples{library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36, weights=FALSE)
randomWalkMatrix(g)

}
\keyword{ graph matrices }
