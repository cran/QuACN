\name{infoTheoreticLabeledE}
\alias{infoTheoreticLabeledE}
\title{Information functional for edge-labeled graphs}
\description{This method assigns a probability value to each vertex of the
network using an information functional for edge-labeled graphs.  It is based
on the same principles as infoTheoreticGCM.}
\usage{
infoTheoreticLabeledE(g, dist=NULL, coeff="lin", custCoeff=NULL, lambda=1000)
}
\arguments{
  \item{g}{a graph as a graphNEL object.  Each edge must have a "bond" data
    attribute specifying its conventional bond order (1, 2, 3 or 1.5 for
    single, double, triple and aromatic bonds, respectively).}
  \item{dist}{the distance matrix of the graph.  Will be automatically
    calculated if not supplied.}
  \item{coeff}{specifies the weighting coefficients. Possible values are
    "lin" (default), "quad", "exp", "const" or "cust". If it is set to
    "cust" you have to specify your customized weighting schema with the
    parameter custCoeff.}
  \item{custCoeff}{specifies the customized weighting scheme. To use it you
    need to set coeff="cust".}
  \item{lambda}{specifies the scaling constant for the distance
    measures. The default value is 1000.}
}
\details{For details see the vignette.}
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

edgeDataDefaults(g, "bond") <- 1
edgeData(g, "1", "6", "bond") <- 3
edgeData(g, "2", "8", "bond") <- 2

infoTheoreticLabeledE(g, coeff="exp")
}
\keyword{ descriptors }
