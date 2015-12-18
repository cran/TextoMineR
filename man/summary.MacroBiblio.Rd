\name{summary.MacroBiblio}
\alias{summary.MacroBiblio}

\title{Summary MacroBiblio objects}

\description{
Summarizes MacroBiblio objects.
}

\usage{
\method{summary}{MacroBiblio}(object, nword=50, nEig=5, ...)
}

\arguments{
  \item{object}{object of class MacroBiblio}
  \item{nword}{number of words to be printed}
  \item{nEig}{number of eigenvalues to be printed (by default nEig=5)}
  \item{\dots}{further arguments passed to or from other methods, such as cex, cex.main, ...}
}

\author{Daria M. Hernandez  \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut}

\seealso{\code{\link{MacroBiblio}}}

\examples{
\dontrun{
data(dataBiblio)
res.dataBiblio<-MacroBiblio(dataBiblio, lmd = 6, lmk =6, graph=FALSE )
summary(res.dataBiblio, nword=20)
}
}

\keyword{multivariate}
