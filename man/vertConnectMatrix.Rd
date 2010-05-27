\name{vertConnectMatrix}
\alias{vertConnectMatrix}
\title{Vertex Connectivity Matrix
}
\description{Calculates the vertex connectivity matrix.
}
\usage{
vertConnectMatrix(g)
}
\arguments{
  \item{g}{
A graph as a graphNEL object.
}
}
\details{for deatils see the vignette or the reference
}
\value{  \item{VerCon_Mat}{Returns the vertex connectivity matrix.
}
}
\references{Dehmer M, Sivakumar L, Varmuzua K: Uniquely Discriminating Molecular Structures Using Novel Eigenvalue Based Descriptors. match 2012, 67:147-172}
\author{Lavanya Sivakumar
}
\examples{library(RBGL)
library(Rgraphviz)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
vertConnectMatrix(g)

}
\keyword{ graph matrices }
