\name{getLargestSubgraph}
\alias{getLargestSubgraph}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A function to extract the largest subgraph from a graphNEL object
}
\description{
In QuACN most methods depend on the analyzed graph to be connected. This function extracts the largest connected component from a \code{graphNEL} object.
}
\usage{
getLargestSubgraph(g)
}
\arguments{
  \item{g}{
A \code{graphNEL} object of which the largest connected component has to be extracted.
}
}

\value{
The largest connected \code{graphNEL} object from \code{g}
}
\references{
Florian Hahne, Wolfgang Huber, Robert Gentleman, Seth Falcon "Bioconductor Case Studies", Springer, 2008
}
\author{
Karl Kugler karl@eigenlab.net
}
\note{
Code taken from Hahne et al. "Bioconductor Case Studies"
}

\examples{
set.seed(667)
g <- randomGraph(paste("A",1:100, sep=""), 1:4, p=0.03)
lcc <- getLargestSubgraph(g)
lcc
}
\keyword{ manip }

