\name{CharDocWord}
\alias{CharDocWord}
\title{Characteristic Documents and Words (CharDocWord)}
\description{
Documents and words characterizing groups or clusters of documents.

}

\usage{
CharDocWord(base = NULL, DocTerm, num.text = NULL, num.agg = NULL,
maxDocs = 10, list.details = FALSE)
}

\arguments{

  \item{base}{data frame with at least one textual  column}
  \item{DocTerm}{data frame with I rows (documents) and J columns (words)}
  \item{num.text}{column index(es) or name(s) of the textual column(s)}
  \item{num.agg}{column index or name of the aggregation column}
 \item{maxDocs}{maximum number of characteristic documents by group (by default 10)}
  \item{list.details}{if TRUE, detailed results on the characteristic words}
}
\value{
\item{CharDoc}{list with the characteristic documents of each group}
\item{CharWord}{list with the characteristic words of each group }
\item{CharDocWord}{list with the characteristic documents and words of each group}
}


\references{
Lebart, L., Salem, A., & Berry, L. (1998). Exploring textual data. (D. Kluwer, Ed.).
}

\author{Monica Becue-Bertaut \email{monica.becue@upc.edu}, Daria M. Hernandez}

\examples{
data(dataOpen.question)
res<-DocWordTable(dataOpen.question,num.text=c(6,7))
DocTerm<-res$DocTerm
DocVar<-DocVarTable(dataOpen.question,VarSel=c(1,2,3,4))
res.TxCA<-TxCA(DocVar,DocTerm,Fmin=5,Dmin=3,stop.word.tm=TRUE,num.agg=3,graph=FALSE)
DocTermR<-res.TxCA$DocTermR
res.Char<-CharDocWord(dataOpen.question,DocTermR, num.text=c(6,7),num.agg=3)
res.Char$CharDocWord
}

\keyword{multivariate}


