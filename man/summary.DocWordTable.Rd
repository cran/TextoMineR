\name{summary.DocWordTable}
\alias{summary.DocWordTable}
\title{Summary DocWordTable objects}

\description{
Summarizes DocWordTable object.
}

\usage{
\method{summary}{DocWordTable}(object, nword=50, ordFreq=TRUE, ...)
}
\arguments{
  \item{object}{object of class DocWordTable}
  \item{nword}{number of words of the glossary to be printed}
   \item{ordFreq}{if ordeFreq=FALSE  words of the glossary to be printed in alphabetic order}
  \item{\dots}{further arguments passed to or from other methods, such as cex, cex.main, ...}
}

\author{Monica Becue-Bertaut \email{monica.becue@upc.edu}, Daria M. Hernandez}

\seealso{ \code{\link{DocWordTable}},\code{\link{print.DocWordTable}}}

\examples{
data(dataBiblio)
res.DWT<-DocWordTable(dataBiblio,num.tex=2, idiom="en")
print(res.DWT)
summary(res.DWT,nword=20)
}

\keyword{multivariate}
