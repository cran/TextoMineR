\name{print.TxCA}

\alias{print.TxCA}

\title{Prints TxCA results }

\description{
Prints TxCA results.  
}

\usage{
\method{print}{TxCA}(x, file = NULL, sep = ";", ...)
}

\arguments{
  \item{x}{object of class TxCA}
  \item{file}{a connection, or a character string naming the file to print to. If NULL (the default), the results are not printed in a file}
  \item{sep}{character string to insert between the objects to be printed (if the argument file is not NULL)}
  \item{\ldots}{further arguments passed to or from other methods}
}

\author{Daria M. Hernandez \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut}

\seealso{ \code{\link{TxCA}}, \code{\link{summary.TxCA}}}

\examples{
\dontrun{
data(dataBiblio)
resT<-DocWordTable(dataBiblio,num.tex=2,lminword=3)
DocTerm<-resT$DocTerm
DocVar<-DocVarTable(dataBiblio,VarSel=c(3,4,5))
res.Dir<-TxCA(DocVar,DocTerm,Fmin=20,Dmin=10,stop.word.tm=TRUE,graph=FALSE)
print(res.Dir)
}
}

\keyword{multivariate}
