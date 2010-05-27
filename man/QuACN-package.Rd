\name{QuACN-package}
\alias{QuACN-package}
\alias{QuACN}
\docType{package}
\title{
This package contains topological network descriptors to analyze complex networks.
}
\description{
More about what it does (maybe more than one line)
~~ A concise (1-5 lines) description of the package ~~
}
\details{
\tabular{ll}{
Package: \tab QuACN\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2010-08-01\cr
License: \tab LGPL\cr
LazyLoad: \tab yes\cr
}

}
\author{
Laurin Mueller, laurin.mueller@umit.at
Maintainer: Laurin Mueller <laurin@eigenlab.net>
}
\references{


}
\keyword{ package }
\seealso{
}
\examples{

rm(list=ls())
library("graph")
library("Rgraphviz")
library("RBGL")
library("QuACN")

###
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)
plot(g,"neato")
###

mat.adj <- adjacencyMatrix(g)
mat.dist <- distanceMatrix(g)
vec.degree <- graph::degree(g)
ska.dia <- diameter(g)
ska.dia <- diameter(g,mat.dist)
##

wien <- wiener(g)
wiener(g,mat.dist)
##
harary(g)
harary(g,mat.dist)
##
balabanJ(g)
balabanJ(g,mat.dist)
##
meanDistanceDeviation(g)
meanDistanceDeviation(g,mat.dist)
##
compactness(g)
compactness(g,mat.dist)
compactness(g,mat.dist,wiener(g,mat.dist))
##
productOfRowSums(g,log=FALSE)
productOfRowSums(g,log=TRUE)
productOfRowSums(g,mat.dist,log=FALSE)
productOfRowSums(g,mat.dist,log=TRUE)
##
hyperDistancePathIndex(g)
hyperDistancePathIndex(g,mat.dist)
hyperDistancePathIndex(g,mat.dist,wiener(g,mat.dist))
##
totalAdjacency(g)
totalAdjacency(g,mat.adj)
##
zagreb1(g)
zagreb1(g,vec.degree)
##
zagreb2(g)
zagreb2(g,vec.degree)
##
randic(g)
randic(g,vec.degree)
##
normalizedEdgeComplexity(g)
normalizedEdgeComplexity(g,totalAdjacency(g,mat.adj))
##
complexityIndexB(g)
complexityIndexB(g,mat.dist)
complexityIndexB(g,mat.dist,vec.degree)
##
degreeDistribution(g)
degreeDistribution(g,vec.degree)
##
numNodes(g)
numEdges(g)
##
localClusteringCoeff(g)
localClusteringCoeff(g,vec.degree)
##
topologicalInfoContent(g)
topologicalInfoContent(g,mat.dist)
topologicalInfoContent(g,mat.dist,vec.degree)
##
bertz(g)
bertz(g,mat.dist)
bertz(g,mat.dist,vec.degree)
##
bonchev1(g)
bonchev1(g,mat.dist)
##
bonchev2(g)
bonchev2(g,mat.dist)
bonchev2(g,mat.dist,wiener(g))
##
radialCentric(g)
radialCentric(g,mat.dist)
##
vertexDegree(g)
vertexDegree(g,vec.degree)
##
balabanlike1(g)
balabanlike1(g,mat.dist)
##
balabanlike2(g)
balabanlike2(g,mat.dist)
##
graphVertexComplexity(g)
graphVertexComplexity(g,mat.dist)
##
infoTheoreticGCM(g)
infoTheoreticGCM(g,mat.dist,coeff="lin",infofunct="sphere",lamda=1000)
infoTheoreticGCM(g,mat.dist,coeff="exp",infofunct="sphere",lamda=1000)
infoTheoreticGCM(g,mat.dist,coeff="const",infofunct="pathlength",lamda=4000)
infoTheoreticGCM(g,mat.dist,coeff="quad",infofunct="vertcent",lamda=1000)
}
