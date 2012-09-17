\name{eigenvalueBased}
\alias{eigenvalueBased}
\title{Eigenvalue-based Descriptors
}
\description{Eigenvalue-based Descriptors
}
\usage{ eigenvalueBased(g, matrix_function, s=1)
}
\arguments{
  \item{g}{
A graph as a graphNEL object.
}
  \item{matrix_function}{
The matrix function to calculate the desired matrix for the graph. For details see the vignette or the example section below.
}
  \item{s}{Parameter to caluclate the descriptors, see reference. Default set to 1.
}
}
\details{For details see the Vignette.
}
\value{  It returns a list with following items:
  \item{HMs}{Formula (2) in the reference paper.}
  \item{SMstance}{Formula (3) in the reference paper.}
  \item{ISMs}{Formula (4) in the reference paper.}
  \item{PMs}{Formula (5) in the reference paper.}
  \item{IPMs}{Formula (6) in the reference paper.}

}
\references{Dehmer M, Sivakumar L, Varmuzua K: Uniquely Discriminating Molecular Structures Using Novel Eigenvalue Based Descriptors. match 2012, 67:147-172}

\author{Lavanya Sivakumar, Laurin Mueller
}

\examples{
library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36, weights=FALSE)
mat.dist <- distanceMatrix(g)

##Matrices like in the paper
##1. adjacency matrix
eigenvalueBased(g,adjacencyMatrix,2)
##2. Laplacian matrix
eigenvalueBased(g,laplaceMatrix,2)
##3. Distance matrix
eigenvalueBased(g,distanceMatrix,2)
##4. Distance path Matrix
eigenvalueBased(g,distancePathMatrix,2)
##5. Augmented vertex degree matrix
eigenvalueBased(g,augmentedMatrix,2)
##6. Extended adjacency matrix
eigenvalueBased(g,extendedAdjacencyMatrix,2)
##7. Connectivity matrix 
eigenvalueBased(g,vertConnectMatrix,2) 
##8. Random Walk markov matrix 
eigenvalueBased(g,randomWalkMatrix,2)  
##9. Weighted structure function matrix IM1
eigenvalueBased(g,weightStrucFuncMatrix_lin,2) 
##10. Weighted structure function matrix IM2
eigenvalueBased(g,weightStrucFuncMatrix_exp,2)
}
\keyword{ descriptors }

