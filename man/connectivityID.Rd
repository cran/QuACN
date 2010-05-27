\name{connectivityID}
\alias{connectivityID}
\title{Randi\'{c} connectivity ID number}
\description{This method calculates the Randi\'{c} connectivity ID number.}
\usage{
connectivityID(g, deg=NULL)
}
\arguments{
  \item{g}{a graph as a graphNEL object.}
  \item{deg}{the degree of each node of g.  Will be automatically
    calculated if not supplied.}
}

\value{The resulting floating point value is a weighted path sum which
stresses local features and takes the vertex degree into account.
}
\references{M. Randic. On Molecular Identification Numbers.
  Journal of Chemical Information and Computer Sciences, 24(3):164-175, 1984
}
\author{Michael Schutte}

\examples{
set.seed(987)
g <- randomEGraph(LETTERS[1:10], 0.3)

connectivityID(g)
}
\keyword{ descriptors }
