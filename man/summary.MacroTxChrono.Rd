\name{summary.MacroTxChrono}
\alias{summary.MacroTxChrono}

\title{Summary MacroTxChrono objects}

\description{
Summarizes MacroTxChrono objects.
}

\usage{
\method{summary}{MacroTxChrono}(object, nword=20, nEig=5, ...)
}

\arguments{
  \item{object}{object of class MacroTxChrono}
  \item{nword}{number of words to be printed}
  \item{nEig}{number of eigenvalues to be printed (by default nEig=5)}
  \item{\dots}{further arguments passed to or from other methods, such as cex, cex.main, ...}
}

\author{Daria M. Hernandez  \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut}

\seealso{\code{\link{MacroTxChrono}}}

\examples{
\dontrun{
data(dataSpeech)
res.TxChr<-MacroTxChrono(dataSpeech,num.text=1,graph=FALSE,HierWords=FALSE)
summary.MacroTxChrono(res.TxChr)
}
}

\keyword{multivariate}
