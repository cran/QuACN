\name{infoTheoreticGCM}
\alias{infoTheoreticGCM}
\title{Information theoretic graph complexity meassures
}
\description{Measures of this group assign a probability value to each
  vertex of the network using a so-called information functional f which
  captures structural information of the network g.
}
\usage{
infoTheoreticGCM(g, dist = NULL, coeff = "lin", infofunct = "sphere",
lambda = 1000, custCoeff=NULL, alpha=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{dist}{the distance matrix of the graph. If the parameter is empty the distance matrix will be calculated within the function.
}
  \item{coeff}{specifies the weighting coefficient. Possible values are
    "lin" (default), "quad", "exp", "const" or "cust". If it is set to
    "cust" you have to specify your customized weighting schema with the
    parameter custCoeff.
}
  \item{infofunct}{specifies the information functional. Possible values
    are "sphere" (default), "pathlength", "vertcent" or "degree"
.
}
  \item{lambda}{specifies the scaling constant for the distance
    measures. The default value is 1000.
}
  \item{custCoeff}{specifies the customized weighting schema. To use it you
    need to set coeff="const".
}
  \item{alpha}{alpha for degree degree association.
}
}
\details{For details see the vignette.
}
\value{
  It returns a list with following items:
  \item{entropy}{contains the calculated entropy measure.}
  \item{distance}{contains the calculated distance measure.}
  \item{pis}{contains the calculated probability distribution.}
  \item{fvi}{contains the calculated values of the information
    functional, for each vetrex.}

}
\references{
M. Dehmer, Information processing in complex networks: Graph entropy and
information functionals, Applied Mathematics and Computation, 202:82-94, 2008
}
\author{Laurin Mueller <laurin@eigenlab.net>
}
\note{
}

\seealso{
}
\examples{

library(RBGL)
library(Rgraphviz)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
mat.dist <- distanceMatrix(g)
plot(g,"neato")

infoTheoreticGCM(g)
infoTheoreticGCM(g,mat.dist,coeff="lin",infofunct="sphere",lambda=1000)
infoTheoreticGCM(g,mat.dist,coeff="exp",infofunct="sphere",lambda=1000)
infoTheoreticGCM(g,mat.dist,coeff="const",infofunct="pathlength",lambda=4000)
infoTheoreticGCM(g,mat.dist,coeff="quad",infofunct="vertcent",lambda=1000)
}
\keyword{graphs}
