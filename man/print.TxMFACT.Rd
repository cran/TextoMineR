\name{print.TxMFACT}

\alias{print.TxMFACT}

\title{Prints TxMFACT results}

\description{
Prints TxMFACT results.
}

\usage{
\method{print}{TxMFACT}(x, file = NULL, sep = ";", \dots)
}

\arguments{
  \item{x}{an object of class TxMFACT}
  \item{file}{A connection, or a character string naming the file to print to.  If NULL (the default), the results are not printed in a file}
  \item{sep}{character string to insert between the objects to print (if the argument file is not NULL}
  \item{\dots}{further arguments passed to or from other methods}
}

\author{Daria M. Hernandez \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut}

\seealso{ \code{\link{TxMFACT}}, \code{\link{write.infile}}}

\examples{
\dontrun{
data(dataOpen.question)
res.M1<-DocWordTable(dataOpen.question,num.text=c(6,7))
res.M2<-DocWordTable(dataOpen.question,num.text=8)
DocVar<-DocVarTable(dataOpen.question,VarSel=c(1,2,3,4))
MDocTerm=list(res.M1$DocTerm,res.M1$DocTerm)
MDocVar=list(DocVar,DocVar)
MTable<-MDocWordTable(MDocTerm,MDocVar,num.agg=3,idiom=c("en","en"),
Fmin=c(10,5),Dmin=c(2,1))
MTable$ncolTs
res.mfact<-TxMFACT(MTable$MDocWord, group=MTable$ncolTs, type =c("f","f"),
name.group=c("Important","Culture"),graph=FALSE) 
print(res.mfact)
}
}

\keyword{multivariate}

