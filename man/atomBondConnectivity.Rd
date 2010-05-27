\name{atomBondConnectivity}
\alias{atomBondConnectivity}
\title{Atom-bond connectivity (ABC) index}
\description{This method calculates the atom-bond connectivity index.
}
\usage{
atomBondConnectivity(g, deg = NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{deg}{the degree of each node of g.  Will be automatically
    calculated if not supplied.
}
}

\value{This method returns the atom-bond connectivity index of a graph
  as a double-precision floating point value.
}
\references{E. Estrada and L. Torres and L. Rodriguez and I. Gutman: An
  atom-bond connectivity index: Modelling the enthalpy of formation of
  alkanes. Indian Journal of Chemistry 37A, 1998, 849-855.
}
\author{
Lavanya Sivakumar, Michael Schutte
}

\examples{

library(graph)
set.seed(123)
g <- randomEGraph(as.character(1:9), 0.5)

# optional: pre-calculate degree of nodes in g
vec.degree <- graph::degree(g)

atomBondConnectivity(g, vec.degree)
}
\keyword{ descriptors }
