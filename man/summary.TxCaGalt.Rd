\name{summary.TxCaGalt}

\alias{summary.TxCaGalt}

\title{Summary TxCaGalt objects}

\description{
Summarizes TxCaGalt objects.
}

\usage{
\method{summary}{TxCaGalt}(object, nb.dec = 3, nbelements = 10, nbind = nbelements, 
ncp = 3, align.names = TRUE, file = "", ...)
}

\arguments{
  \item{object}{object of class TxCaGalt}
  \item{nb.dec}{number of decimals to be printed}
  \item{nbelements}{number of elements written (variables, categories, frequencies); use nbelements = Inf if you want to have all the elements}
  \item{nbind}{number of documents written; use nbind = Inf to have the results for all the documents and nbind = 0 if you do not want the results for documents}
  \item{ncp}{number of dimensions to be printed}
  \item{align.names}{boolean, if TRUE the names of the objects are written using the same number of characters}
  \item{file}{a connection or a character string naming the file to print to}
 \item{\dots}{further arguments passed to or from other methods, such as cex, cex.main, ...}
}

\author{Belchin Kostov \email{badriyan@clinic.ub.es}, Monica Becue-Bertaut, Daria M. Hernandez }

\seealso{ \code{\link{TxCaGalt}},\code{\link{print.TxCaGalt}}}

\examples{
data(dataOpen.question)
res<-DocWordTable(dataOpen.question,num.text=c(6,7))
DocTerm<-res$DocTerm
DocVar<-DocVarTable(dataOpen.question,VarSel=c(1,3))
res.Txcagalt<-TxCaGalt(DocTerm,DocVar,idiom="en",type="n",
conf.ellip=TRUE, nb.ellip=10, level.ventil=0.05)
print(res.Txcagalt)
summary.TxCaGalt(res.Txcagalt)
}
\keyword{multivariate}

