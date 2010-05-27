\name{narumiKatayama}
\alias{narumiKatayama}
\title{Narumi-Katayama index}
\description{This method calculates the Narumi-Katayama index.
}
\usage{
narumiKatayama(g, deg = NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{deg}{the degree of each node of g.  Will be automatically
    calculated if not supplied.
}
}

\value{This method returns the Narumi-Katayama index of a graph as an
  integer value.
}
\references{H. Narumi and M. Katayama: Simple topological index. A newly
devised index characterizing the topological nature of structural
isomers of saturated hydrocarbons.  Mem. Fac. Engin. Hokkaido Univ.,
16:209, 1984
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

narumiKatayama(g, vec.degree)
}
\keyword{ descriptors }
