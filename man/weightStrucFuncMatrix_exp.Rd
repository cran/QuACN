\name{weightStrucFuncMatrix_exp}
\alias{weightStrucFuncMatrix_exp}
\title{Weighted Structure Function Matrix
}
\description{Calculates the weighted structure function matrix with exponential weighting parameter c_i.
}
\usage{
weightStrucFuncMatrix_exp(g)
}
\arguments{
  \item{g}{
A graph as a graphNEL object.
}
}
\details{for deatils see the vignette or the reference
}
\value{  \item{weightStrucFuncMatrix_exp}{Returns the weighted structure function matrix with exponential weighting parameter c_i.
}
}
\references{Dehmer M, Sivakumar L, Varmuzua K: Uniquely Discriminating Molecular Structures Using Novel Eigenvalue Based Descriptors. match 2012, 67:147-172}
\author{Lavanya Sivakumar
}

\examples{library(RBGL)
library(Rgraphviz)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
weightStrucFuncMatrix_exp(g)

}
\keyword{ graph matrices }
