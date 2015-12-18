\name{TxCharClust}
\alias{TxCharClust}
\title{Characteristic Documents and Words of the Clusters  (TxCharClust)}
\description{
Characteristic documents and words of the clusters.
}
\usage{
TxCharClust(base, res, num.text)
}

\arguments{
 
  \item{base}{data frame with at least one textual column}
  \item{res}{HCPC or TxCHCPC results}
  \item{num.text}{column index(es) or name(s) of the textual column(s)}
}

\value{
 \item{Char_word_doc}{list with characteristic documents and words of each cluster }
  \item{CharWord_details}{detail list  with the characteristic words of each cluster }
}


\references{
Lebart, L., Salem, A., & Berry, L. (1998). Exploring textual data. (D. Kluwer, Ed.).

}


\author{Daria M. Hernandez \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut}

\seealso{ \code{\link{MacroCaHcpc}}}

\examples{
data(dataOpen.question)
res<-DocWordTable(dataOpen.question,num.text=c(6,7))
DocTerm<-res$DocTerm
DocVar<-DocVarTable(dataOpen.question,VarSel=c(1,2,3,4))
res.TxCA<-TxCA(DocVar,DocTerm,Fmin=10,Dmin=5,stop.word.tm=TRUE,graph=FALSE)
res.hcpc<-HCPC(res.TxCA$res.ca,cluster.CA = "rows", graph=FALSE)
res.CharClust<-TxCharClust(dataOpen.question, res.hcpc,num.text=c(6,7))
res.CharClust$Char_word_doc
}

\keyword{multivariate}

