\name{bondOrderID}
\alias{bondOrderID}
\title{Conventional bond order ID number}
\description{This method calculates the conventional bond order ID number.}
\usage{
bondOrderID(g)
}
\arguments{
  \item{g}{a graph as a graphNEL object.  Each edge must have a "bond"
    data attribute containing one of the values 1 (single bond), 2
    (double bond), 3 (triple bond) or 1.5 (aromatic bond).}
}

\value{The resulting floating point number is a weighted path sum which
  takes the different bonds into account.
}
\references{M. Randi\'{c} and P. Jurs. On a Fragment Approach to Structure-activity Correlations.
  Quantitative Structure-Activity Relationships, 8(1):39-48, 1989}
\author{Michael Schutte}

\examples{
set.seed(987)
g <- randomEGraph(LETTERS[1:10], 0.3)

edgeDataDefaults(g, "bond") <- 1
edgeData(g, "B", "I", "bond") <- 2
edgeData(g, "A", "F", "bond") <- 1.5

bondOrderID(g)
}
\keyword{ descriptors }
