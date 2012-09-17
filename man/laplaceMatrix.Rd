\name{laplaceMatrix}
\alias{laplaceMatrix}
\title{Laplacian Matrix
}
\description{Calculates the laplacian matrix.
}
\usage{laplaceMatrix(g)
}
\arguments{
  \item{g}{
A graph as a graphNEL object.
}
}
\details{for deatils see the vignette or the reference
}
\value{  \item{Lap_Mat}{ Returns the laplacian matrix.
}
}
\references{Dehmer M, Sivakumar L, Varmuzua K: Uniquely Discriminating Molecular Structures Using Novel Eigenvalue Based Descriptors. match 2012, 67:147-172}
\author{Lavanya Sivakumar
}

\examples{library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36, weights=FALSE)
laplaceMatrix(g)

}
\keyword{ graph matrices }

