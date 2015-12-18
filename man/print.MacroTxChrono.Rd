\name{print.MacroTxChrono}

\alias{print.MacroTxChrono}

\title{Prints MacroTxChrono results.}

\description{
Prints MacroTxChrono results.
}

\usage{
\method{print}{MacroTxChrono}(x, file = NULL, sep = ";", ...)
}

\arguments{
  \item{x}{object of class MacroTxChrono}
  \item{file}{a connection, or a character string naming the file to print to. If NULL (the default), the results are not printed in a file}
  \item{sep}{character string to insert between the objects to print (if the argument file is not NULL)}
   \item{\dots}{further arguments passed to or from other methods}
}

\author{Daria M Hernandez \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut}

\seealso{ \code{\link{MacroTxChrono}}, \code{\link{summary.MacroTxChrono}},\code{\link{write.infile}}}

\examples{
\dontrun{
data(dataSpeech)
res.TxChr<-MacroTxChrono(dataSpeech,num.text=1, alfa=0.1, HierWords=F)
print(res.TxChr)
}
}

\keyword{multivariate}