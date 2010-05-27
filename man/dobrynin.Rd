\name{dobrynin}
\alias{dobrynin}
\title{Dobrynin inidces
}
\description{This function calculates a set of basic descriptors intruduced by Skorobogatov and Dobrynin.
}
\usage{
dobrynin(g, dist = NULL)
}
\arguments{
  \item{g}{
a graph as a graphNEL object.
}
  \item{dist}{
the distance matrix of the graph. If the parameter is empty the distance
matrix will be calculated within the function.
}
}
\details{
This methods calculates 14 basic descriptors intruduced by Skorobogatov and Dobrynin.}
\value{
This function return a list containing the 14 descriptors.

\item{eccentricityVertex}{Eccentricity of all vertices}
\item{eccentricityGraph}{Eccentricity of a graph}
\item{avgeccOfG}{Average eccentricity of a graph}
\item{ecentricVertex}{Eccentric of all vertices}
\item{ecentricGraph}{Eccentric of a graph}
\item{vertexCentrality}{Vertex centrality}
\item{graphIntegration}{Graph integration}
\item{unipolarity}{Unipolarity of a graph}
\item{vertexDeviation}{Deviation of all vertices}
\item{variation}{Variation of a graph}
\item{centralization}{Centralization of a graph}
\item{avgDistance}{Average distance of a graph}
\item{distVertexDeviation}{Distance vertex deviation}
\item{meanDistVertexDeviation}{Mean distance vertex deviation}
}
\references{
Skorobogatov V.A. and Dobrynin A.A., Metric analysis of graphs, match, pp. 105-151, 1988.
}
\author{
Laurin AJ Mueller
}

\examples{
library(graph)
library(RBGL)
library(Rgraphviz)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
plot(g,"neato")

dobrynin(g)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{graphs}
