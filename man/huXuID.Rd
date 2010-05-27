\name{huXuID}
\alias{huXuID}
\title{Hu-Xu ID number}
\description{This method calculates the Hu-Xu ID number.}
\usage{
huXuID(g, deg=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.  Each edge must have a "bond"
    data attribute containing one of the values 1 (single bond), 2
    (double bond), 3 (triple bond) or 1.5 (aromatic bond), and each
    vertex must have an "atom" data attribute specifying its atomic
    number or chemical symbol.}
  \item{deg}{the degree of each node of g.  Will be automatically
    calculated if not supplied.}
}

\value{The resulting floating point value is computed from weighted path
sums based on the vertex degree, the atomic numbers, and edge
multiplicity.
}
\references{C. Hu and L. Xu. On Hall and Kier's Topological State and Total Topological Index.
  Journal of Chemical Information and Computer Sciences, 34(6):1251-1258, 1994}
\author{Michael Schutte}

\examples{
set.seed(987)
g <- randomEGraph(LETTERS[1:10], 0.3)

edgeDataDefaults(g, "bond") <- 1
edgeData(g, "B", "I", "bond") <- 2
edgeData(g, "A", "F", "bond") <- 1.5

nodeDataDefaults(g, "atom") <- 6
nodeData(g, "A", "atom") <- 8

huXuID(g)
}
\keyword{ descriptors }
