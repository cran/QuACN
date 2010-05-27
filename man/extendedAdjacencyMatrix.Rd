\name{extendedAdjacencyMatrix}
\alias{extendedAdjacencyMatrix}
\title{Extended Adjacency Matrix
}
\description{Calculates the extended adjacency matrix.
}
\usage{
extendedAdjacencyMatrix(g)
}
\arguments{
  \item{g}{
A graph as a graphNEL object.
}
}
\details{for deatils see the vignette or the reference
}
\value{  \item{ExtAdjMat}{Returns the extended adjacency matrix.
}
}
\references{Dehmer M, Sivakumar L, Varmuzua K: Uniquely Discriminating Molecular Structures Using Novel Eigenvalue Based Descriptors. match 2012, 67:147-172}
\author{Lavanya Sivakumar
}

\examples{library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
extendedAdjacencyMatrix(g)

}
\keyword{ graph matrices }
