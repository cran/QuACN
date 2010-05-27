\name{augmentedZagreb}
\alias{augmentedZagreb}
\title{Augmented Zagreb index}
\description{This method calculates the augmented Zagreb index.
}
\usage{
augmentedZagreb(g, deg = NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{deg}{the degree of each node of g.  Will be automatically
    calculated if not supplied.
}
}

\value{This method returns the augmented Zagreb index of a graph
  as a double-precision floating point value.
}
\references{B. Furtula and A. Graovac and D. Vukicevic: Augmented Zagreb
  Index.  Journal of Mathematical Chemistry, 48:370-380, 2010.
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

augmentedZagreb(g, vec.degree)
}
\keyword{ descriptors }
