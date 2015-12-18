\name{summary.TxCA}
\alias{summary.TxCA}
\title{Summary TxCA object}

\description{
Summarizes TxCA objects.
}

\usage{
\method{summary}{TxCA}(object, nb.dec = 3, nEig =5, ordDim = 1, order = FALSE, nbelements = 10, 
nbind = nbelements, ncp = 3, align.names = TRUE, nword = 10, file = "", ...)
}

\arguments{
  \item{object}{object of class TxCA}
  \item{nb.dec}{number of decimals to be printed}
  \item{nEig}{number of eigenvalues to be printed (by default nEig=5)}
 \item{ordDim}{axis number which is used to rank the documents depending on their coordinate on this axis}
 \item{order}{if TRUE the documents are ranked depending on  their contribution on ordDim axis}
  \item{nbelements}{number of elements whose coordinates are listed (variables, categories, frequencies); use nbelements = Inf to have all the elements}
 \item{nbind}{number of documents whose coordinates are listed; use nbind = Inf to have the results for all the documents and nbind = 0 if you do not want the results for any document} 
 \item{ncp}{number of dimensions for which the results are printed}
 \item{align.names}{boolean, if TRUE the names of the objects are written using the same number of characters}
 \item{nword}{number of words in the glossary of frequency to be printed}
 \item{file}{a connection, or a character string naming the file to print to}
 \item{\dots}{further arguments passed to or from other methods}
}

\author{Daria M. Hernandez R \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut}

\seealso{ \code{\link{TxCA}},\code{\link{print.TxCA}}}

\examples{
data(dataBiblio)
resT<-DocWordTable(dataBiblio,num.tex=2,lminword=3)
DocTerm<-resT$DocTerm
DocVar<-DocVarTable(dataBiblio,VarSel=c(3,4,5))
res.Dir<-TxCA(DocVar,DocTerm,Fmin=20,Dmin=10,stop.word.tm=TRUE)
print(res.Dir)
summary(res.Dir)
}

\keyword{multivariate}
