\name{modifiedZagreb}
\alias{modifiedZagreb}
\title{Modified Zagreb index}
\description{This method calculates the modified Zagreb index.
}
\usage{
modifiedZagreb(g, deg = NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{deg}{the degree of each node of g.  Will be automatically
    calculated if not supplied.
}
}

\value{This method returns the modified Zagreb index of a graph as a
  double-precision floating point value.
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
g <- randomEGraph(as.character(1:9), 0.5)

# optional: pre-calculate degree of nodes in g
vec.degree <- graph::degree(g)

modifiedZagreb(g, vec.degree)
}
\keyword{ descriptors }
