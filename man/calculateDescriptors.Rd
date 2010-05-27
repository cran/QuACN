\name{calculateDescriptors}
\alias{calculateDescriptors}
\title{Generalized descriptor calculation
}
\description{The method calculates multiple descriptors for a list of graphs.
}
\usage{
calculateDescriptors(graphs, ..., labels = FALSE)
}
\arguments{
  \item{graphs}{either a list of or a single graphNEL object.
}
  \item{...}{descriptors to calculate and arguments to pass, see `Details'.
}
  \item{labels}{whether or not the columns of the resulting data frame should
    be named using the getLabels() method.
}
}

\details{
  calculateDescriptors() calls each function specified in `...' for every
  graph in the given list and creates a data frame containing the calculated
  data.  You can specify the functions either as strings (such as
  \dQuote{totalAdjacency}) or using the numbers from the following table
  (e.g., 2001).  For convenience, the multiples of 1000 denote entire groups
  of descriptors.

  \tabular{rl}{
    1000 \tab --- all of 1xxx \cr
    1001 \tab wiener \cr
    1002 \tab harary \cr
    1003 \tab balabanJ \cr
    1004 \tab meanDistanceDeviation \cr
    1005 \tab compactness \cr
    1006 \tab productOfRowSums \cr
    1007 \tab hyperDistancePathIndex \cr
    2000 \tab --- all of 2xxx \cr
    2001 \tab totalAdjacency \cr
    2002 \tab zagreb1 \cr
    2003 \tab zagreb2 \cr
    2004 \tab modifiedZagreb \cr
    2005 \tab augmentedZagreb \cr
    2006 \tab variableZagreb \cr
    2007 \tab randic \cr
    2008 \tab complexityIndexB \cr
    2009 \tab normalizedEdgeComplexity \cr
    2010 \tab atomBondConnectivity \cr
    2011 \tab geometricArithmetic1 \cr
    2012 \tab geometricArithmetic2 \cr
    2013 \tab geometricArithmetic3 \cr
    2014 \tab narumiKatayama \cr
    3000 \tab --- all of 3xxx \cr
    3001 \tab topologicalInfoContent \cr
    3002 \tab bonchev1 \cr
    3003 \tab bonchev2 \cr
    3004 \tab bertz \cr
    3005 \tab radialCentric \cr
    3006 \tab vertexDegree \cr
    3007 \tab balabanlike1 \cr
    3008 \tab balabanlike2 \cr
    3009 \tab graphVertexComplexity \cr
    4000 \tab --- all of 4xxx \cr
    4001 \tab mediumArticulation \cr
    4002 \tab efficiency \cr
    4003 \tab graphIndexComplexity \cr
    4004 \tab offdiagonal \cr
    4005 \tab spanningTreeSensitivity \cr
    4006 \tab distanceDegreeCentric \cr
    4007 \tab distanceCodeCentric \cr
    5000 \tab --- all of 5xxx \cr
    5001 \tab infoTheoreticGCM: vertcent, exp \cr
    5002 \tab infoTheoreticGCM: vertcent, lin \cr
    5003 \tab infoTheoreticGCM: sphere, exp \cr
    5004 \tab infoTheoreticGCM: sphere, lin \cr
    5005 \tab infoTheoreticGCM: pathlength, exp \cr
    5006 \tab infoTheoreticGCM: pathlength, lin \cr
    5007 \tab infoTheoreticGCM: degree, exp \cr
    5008 \tab infoTheoreticGCM: degree, lin \cr
    6000 \tab --- all of 6xxx \cr
    6001 \tab eigenvalueBased: adjacencyMatrix, s=1 \cr
    6002 \tab eigenvalueBased: adjacencyMatrix, s=2 \cr
    6003 \tab eigenvalueBased: laplaceMatrix, s=1 \cr
    6004 \tab eigenvalueBased: laplaceMatrix, s=2 \cr
    6005 \tab eigenvalueBased: distanceMatrix, s=1 \cr
    6006 \tab eigenvalueBased: distanceMatrix, s=2 \cr
    6007 \tab eigenvalueBased: distancePathMatrix, s=1 \cr
    6008 \tab eigenvalueBased: distancePathMatrix, s=2 \cr
    6009 \tab eigenvalueBased: augmentedMatrix, s=1 \cr
    6010 \tab eigenvalueBased: augmentedMatrix, s=2 \cr
    6011 \tab eigenvalueBased: extendedAdjacencyMatrix, s=1 \cr
    6012 \tab eigenvalueBased: extendedAdjacencyMatrix, s=2 \cr
    6013 \tab eigenvalueBased: vertConnectMatrix, s=1 \cr
    6014 \tab eigenvalueBased: vertConnectMatrix, s=2 \cr
    6015 \tab eigenvalueBased: randomWalkMatrix, s=1 \cr
    6016 \tab eigenvalueBased: randomWalkMatrix, s=2 \cr
    6017 \tab eigenvalueBased: weightStrucFuncMatrix_lin, s=1 \cr
    6018 \tab eigenvalueBased: weightStrucFuncMatrix_lin, s=2 \cr
    6019 \tab eigenvalueBased: weightStrucFuncMatrix_exp, s=1 \cr
    6020 \tab eigenvalueBased: weightStrucFuncMatrix_exp, s=2 \cr
    6021 \tab energy \cr
    6022 \tab laplacianEnergy \cr
    6023 \tab estrada \cr
    6024 \tab laplacianEstrada \cr
    6025 \tab spectralRadius \cr
    7000 \tab --- all of 7xxx \cr
    7001 \tab oneEdgeDeletedSubgraphComplexity \cr
    7002 \tab twoEdgesDeletedSubgraphComplexity \cr
    7003 \tab globalClusteringCoeff \cr
    8000 \tab --- all of 8xxx \cr
    8001 \tab connectivityID \cr
    8002 \tab minConnectivityID \cr
    8003 \tab primeID \cr
    8004 \tab bondOrderID \cr
    8005 \tab balabanID \cr
    8006 \tab minBalabanID \cr
    8007 \tab weightedID \cr
    8008 \tab huXuID
  }

  The arguments to these functions, such as the distance matrix or the
  list of vertex degrees, will be automatically supplied and reused.
  After each function (or group of functions), regardless of whether it
  was referred to by name or by its assigned number, you may optionally
  pass extra arguments as a list, but note that this will not override
  the calculated arguments.  If you wish to pass the same extra
  arguments to multiple functions, you can concatenate the latter to
  a vector.

  When functions are given by name, an \dQuote{@NAME} suffix can be used
  to give the column a different name in the output data frame.  This is
  needed when you want to calculate a descriptor more than once with
  varying arguments.
}

\value{A data frame where rows and columns represent the input graphs and
  the desired descriptors, respectively.  The rows will be named according
  to the graph list; the column names are the names of the called functions
  if labels is FALSE, otherwise the label expressions as returned by
  getLabels() (and found in the vignette).
}
\author{Michael Schutte
}

\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36)

calculateDescriptors(g, 1000, 2002, 2003)

calculateDescriptors(g, "randic", "offdiagonal", 7000, labels=TRUE)

# these will give the same results (although named differently):
calculateDescriptors(g, c(6011, 6013), list(s=3))
calculateDescriptors(g,
  "eigenvalueBased@ea", list(matrix_function="extendedAdjacencyMatrix", s=3),
  "eigenvalueBased@vc", list(matrix_function="vertConnectMatrix", s=3))
}
\keyword{ graph matrices }
