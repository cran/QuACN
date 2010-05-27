\name{infoTheoreticLabeledV2}
\alias{infoTheoreticLabeledV2}
\title{V2 information functional for vertex-labeled graphs}
\description{This method assigns a probability value to each vertex of the
network using the V2 information functional for vertex-labeled graphs.  It is
based on the same principles as infoTheoreticGCM.}
\usage{
infoTheoreticLabeledV2(g, ci=NULL, lambda=1000)
}
\arguments{
  \item{g}{a graph as a graphNEL object.  Each vertex must have an "atom" data
    attribute specifying its atomic number or chemical symbol.}
  \item{ci}{a list (or named vector) mapping each chemical symbol to a
    coefficient value.  If not specified, 1 will be used for all elements.}
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

nodeDataDefaults(g, "atom") <- "C"
nodeData(g, "2", "atom") <- "O"

infoTheoreticLabeledV2(g, ci=list(`C` = 0.5, `O` = 0.8))
}
\keyword{ descriptors }
