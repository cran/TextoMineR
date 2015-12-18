\name{summary.TxMFACT}
\alias{summary.TxMFACT}
\title{Summary TxMFACT objects}

\description{
Summarizes TxMFACT objects.
}

\usage{
\method{summary}{TxMFACT}(object, nb.dec = 3, nbelements = 10, nbind = nbelements,
 ncp = 3, align.names = TRUE, file = "", ...)
}

\arguments{
  \item{object}{object of class TxMFACT}
  \item{nb.dec}{number of decimals to be printed}
  \item{nbelements}{number of elements written (variables, categories, frequencies); use nbelements = Inf if you want to have all the elements}
  \item{nbind}{number of documents written; use nbind = Inf to have the results for all the documents and nbind = 0 if you do not want the results for documents}
  \item{ncp}{number of dimensions to be printed}
  \item{align.names}{boolean, if TRUE the names of the objects are written using the same number of characters}
  \item{file}{a connection, or a character string naming the file to print to}
   \item{\dots}{further arguments passed to or from other methods, such as cex, cex.main, ...}
}

\author{Daria M. Hernandez \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut}

\seealso{ \code{\link{TxMFACT}},\code{\link{print.TxMFACT}}}

\examples{
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
name.group=c("Important","Culture")) 
print(res.mfact)
summary(res.mfact)
}

\keyword{multivariate}

