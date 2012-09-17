\name{harary}
\alias{harary}
\title{Harary Index}
\description{This method calculates the Harary Index.}
\usage{
harary(g, dist = NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.
}
  \item{dist}{the distance matrix of the graph. If the parameter is empty the distance matrix will be calculated within the function.
}
}
\value{It returns the Harary Index.

}
\references{A. T. Balaban and O. Ivanciuc, Historical Development of Topological Indices, in Topological Indices and Related Descriptors in QSAR and QSPAR, 
J. Devillers and A. T. Balaban, Eds. Gordon and Breach Science Publishers, 1999, pp. 21-57, Amsterdam, The Netherlands.}
\author{Laurin Mueller
}
\details{   This method calculates the Hararay index:
%\deqn{H(G):= \frac{1}{2}\sum_{i=1}^{|N|}\sum_{j=1}^{|N|}(d(v_i,v_j))^{-1}, \quad i \ne j}
}

\examples{

library(RBGL)
set.seed(123)
g <- randomGraph(1:8, 1:5, 0.36, weights=FALSE)

harary(g)
}
\keyword{ descriptors }
