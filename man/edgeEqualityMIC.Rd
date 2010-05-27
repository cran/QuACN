\name{edgeEqualityMIC}
\alias{edgeEqualityMIC}
\title{Mean information content on the edge equality}
\description{This method calculates the mean information content on the edge
  equality.}
\usage{
edgeEqualityMIC(g, deg=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.}
  \item{deg}{the degree of each node of g.  Will be automatically
    calculated if not supplied.}
}

\value{The return value is the mean information content on the edge equality,
a measure based on the partition of edges according to the equivalence of
their edge connectivity values.
}
\references{Bonchev, D., Mekenyan, O. and Trinajstic, N.
Isomer Discrimination by Topological Information Approach.
J. Comput. Chem., 2:127-148, 1981}
\author{Michael Schutte}

\examples{
set.seed(987)
g <- randomEGraph(LETTERS[1:10], 0.3)
deg <- graph::degree(g)

edgeEqualityMIC(g, deg)
}
\keyword{ descriptors }
