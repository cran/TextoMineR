\name{print.TxCHCPC}

\alias{print.TxCHCPC}

\title{Prints TxCHCPC results}

\description{
Prints TxCHCPC results.
}

\usage{
\method{print}{TxCHCPC}(x, file = NULL, sep = ";", ...)
}


\arguments{
  \item{x}{object of class TxCHCPC}
  \item{file}{a connection, or a character string naming the file to print to. If NULL (the default), the results are not printed in a file}
  \item{sep}{character string to insert between the objects to print (if the argument file is not NULL)}
 \item{\dots}{further arguments passed to or from other methods}
}

\author{Daria M. Hernandez \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut}

\seealso{ \code{\link{TxCHCPC}}, \code{\link{write.infile}}}

\examples{
\dontrun{
data(dataBiblio)
resT<-DocWordTable(dataBiblio,num.tex=2,lminword=3)
DocTerm<-resT$DocTerm
DocVar<-DocVarTable(dataBiblio,VarSel=c(3,4,5))
res.agg<-TxCA(DocVar,DocTerm,Fmin=50,Dmin=10,num.agg =1,graph=FALSE)
Table<-res.agg$Table
res.CH<-TxCHCPC(res.agg$res.ca,cluster.CA = "rows", graph = FALSE)
print(res.CH)
}
}

\keyword{multivariate}


