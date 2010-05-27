\name{augmentedMatrix}
\alias{augmentedMatrix}
\title{Augmented Matrix
}
\description{Calculates the augmented vertex degree matrix.
}
\usage{
augmentedMatrix(g)
}
\arguments{
  \item{g}{
A graph as a graphNEL object.
}
}
\details{for deatils see the vignette or the reference
}
\value{  \item{Aug_Mat}{Retruns the augmented vertex degree matrix.
}
}
\references{Dehmer M, Sivakumar L, Varmuzua K: Uniquely Discriminating Molecular Structures Using Novel Eigenvalue Based Descriptors. match 2012, 67:147-172}
\author{Lavanya Sivakumar
}

\examples{library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
augmentedMatrix(g)

}
\keyword{ graph matrices }
