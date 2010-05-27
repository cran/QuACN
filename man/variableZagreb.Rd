\name{variableZagreb}
\alias{variableZagreb}
\title{Variable Zagreb index}
\description{This method calculates the variable Zagreb index.
}
\usage{
variableZagreb(g, deg = NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{deg}{the degree of each node of g.  Will be automatically
    calculated if not supplied.
}
}

\value{This method returns the variable Zagreb index of a graph
  as a double-precision floating point value.
}
\references{S. Nikolic and G. Kovacevic and A. Milicevic and N.
Trinajstic: The Zagreb Indices 30 Years After.  Croatica Chemica Acta,
76:113-124, 2003
}
\author{
Lavanya Sivakumar, Michael Schutte
}

\examples{

library(graph)
set.seed(123)
g <- randomEGraph(as.character(1:8), 0.6)

# optional: pre-calculate degree of nodes in g
vec.degree <- graph::degree(g)

variableZagreb(g, vec.degree)
}
\keyword{ descriptors }
