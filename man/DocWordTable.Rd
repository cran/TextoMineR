\name{DocWordTable}

\alias{DocWordTable}

\title{Documents by Words Table (DocWordTable)}

\description{
Builds a Document by Words Table and a summary about the corpus. 
}

\usage{
DocWordTable(base,num.text,idiom="en",lminword=1,lower=TRUE,Remov.Number=TRUE)

}

\arguments{
  \item{base}{data frame with at least one textual column}
  \item{num.text}{column index(es) or name(s) of the textual column(s)}
  \item{idiom}{language of the textual  column(s)  (by default English "en")}
   \item{lminword}{minimum threshold on the word length (by default 1)}
  \item{lower}{boolean, if TRUE the corpus is converted into lowercase}
  \item{Remov.Number}{boolean, if TRUE the numbers are removed}  
}

\value{
  \item{DocTerm}{data frame with I rows (documents) and J columns (words)}
  \item{Tfreq}{glossary of words}
  \item{Nlength}{corpus size}
  \item{Nword}{vocabulary size}
  \item{Ndoc}{number of documents}
  \item{Nfreqword}{frequencies of words}
  \item{Ndocword}{frequencies of words in documents}
  
}

\references{
Lebart, L., Salem, A., & Berry, L. (1998). Exploring textual data. (D. Kluwer, Ed.).

}

\author{Monica Becue-Bertaut \email{monica.becue@upc.edu}, Daria M. Hernandez}

\seealso{ \code{\link{print.DocWordTable}}, \code{\link{summary.DocWordTable}}, \code{\link{removePunctuation}},

\code{\link{regex}: shows the class [:punct:] of punctuation characters}}


\examples{
\dontrun{
data(dataBiblio)
res.DWT<-DocWordTable(dataBiblio,num.text=2, idiom="en",lminword=3,Remov.Number=TRUE,lower=TRUE)
DocTerm<-res.DWT$DocTerm
summary(res.DWT,nword=20)
}
}

\keyword{multivariate}




