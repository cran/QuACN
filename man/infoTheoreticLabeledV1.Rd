\name{infoTheoreticLabeledV1}
\alias{infoTheoreticLabeledV1}
\title{V1 information functional for vertex-labeled graphs}
\description{This method assigns a probability value to each vertex of the
network using the V1 information functional for vertex-labeled graphs.  It is
based on the same principles as infoTheoreticGCM.}
\usage{
infoTheoreticLabeledV1(g, dist=NULL, coeff="lin", custCoeff=NULL, coeffMatrix=NULL, lambda=1000)
}
\arguments{
  \item{g}{a graph as a graphNEL object.  Each vertex must have an "atom" data
    attribute specifying its atomic number or chemical symbol.}
  \item{dist}{the distance matrix of the graph.  Will be automatically
    calculated if not supplied.}
  \item{coeff}{specifies the weighting coefficients. Possible values are
    "lin" (default), "quad", "exp", "const" or "cust". If it is set to
    "cust" you have to specify your customized weighting schema with the
    parameter custCoeff.}
  \item{custCoeff}{specifies the customized weighting scheme. To use it you
    need to set coeff="cust".}
  \item{coeffMatrix}{overrides the "coeff" and "custCoeff" parameters to set
    entirely user-defined coefficients for each pair of chemical symbol
    (columns) and distance from the focussed vertex (rows).  The columns have
    to be named after the chemical symbols.}
  \item{lambda}{specifies the scaling constant for the distance
    measures. The default value is 1000.}
}

\value{
  The returned list consists of the following items:
  \item{entropy}{contains the calculated entropy measure.}
  \item{distance}{contains the calculated distance measure.}
  \item{pis}{contains the calculated probability distribution.}
  \item{fvi}{contains the calculated values of the functional for each
    vertex.}
}
\references{M. Dehmer, N. Barbarini, K. Varmuza, and A. Graber.
Novel topological descriptors for analyzing biological networks.
BMC Structural Biology, 10:18, 2010.}
\author{Michael Schutte}

\examples{
set.seed(987)
g <- randomEGraph(as.character(1:10), 0.3)

nodeDataDefaults(g, "atom") <- "C"
nodeData(g, "2", "atom") <- "O"

infoTheoreticLabeledV1(g)
}
\keyword{ descriptors }
