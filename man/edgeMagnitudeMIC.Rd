\name{edgeMagnitudeMIC}
\alias{edgeMagnitudeMIC}
\title{Mean information content on the edge magnitude}
\description{This method calculates the mean information content on the edge
  magnitude.}
\usage{
edgeMagnitudeMIC(g, deg=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.}
  \item{deg}{the degree of each node of g.  Will be automatically
    calculated if not supplied.}
}

\value{The return value is the mean information content on the edge magnitude,
a measure based on the ratio of individual edge connectivities to their sum
(the Randic index).
}
\references{Bonchev, D., Mekenyan, O. and Trinajstic, N.
Isomer Discrimination by Topological Information Approach.
J. Comput. Chem., 2:127-148, 1981}
\author{Michael Schutte}

\examples{
set.seed(987)
g <- randomEGraph(LETTERS[1:10], 0.3)
deg <- graph::degree(g)

edgeMagnitudeMIC(g, deg)
}
\keyword{ descriptors }
