\name{geometricArithmetic1}
\alias{geometricArithmetic1}
\title{First geometric-arithmetic index}
\description{This method calculates the first geometric-arithmetic (GA1) index.
}
\usage{
geometricArithmetic1(g, deg = NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{deg}{the degree of each node of g.  Will be automatically
    calculated if not supplied.
}
}

\value{This method returns the first geometric-arithmetic index of a graph
  as a double-precision floating point value.
}
\references{B. Zhou and I. Gutman and B. Furtula and Z. Du: On two types of geometric-arithmetic index.  Chemical Physics Letters, 482:153-155, 2009
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

geometricArithmetic1(g, vec.degree)
}
\keyword{ descriptors }
