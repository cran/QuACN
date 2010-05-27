\name{infoTheoreticSum}
\alias{infoTheoreticSum}
\title{Add the results of two information functionals}
\description{This method creates a meaningful sum of the results of different
infoTheoreticGCM and infoTheoreticLabeled... calls.}
\usage{
infoTheoreticSum(first, second, lambda=1000)
}
\arguments{
  \item{first}{list returned by the first call to a method based on an
    information functional.}
  \item{second}{list returned by the second call to a method based on an
    information functional.}
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
\author{Michael Schutte}

\examples{
set.seed(987)
g <- randomEGraph(as.character(1:10), 0.3)

nodeDataDefaults(g, "atom") <- "C"
nodeData(g, "2", "atom") <- "O"

edgeDataDefaults(g, "bond") <- 1
edgeData(g, "1", "6", "bond") <- 3
edgeData(g, "2", "8", "bond") <- 2

e <- infoTheoreticLabeledE(g)
v1 <- infoTheoreticLabeledV1(g)
infoTheoreticSum(e, v1)
}
\keyword{ descriptors }
