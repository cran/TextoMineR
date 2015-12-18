\name{print.DocWordTable}

\alias{print.DocWordTable}

\title{Prints DocWordTable results}

\description{
Prints DocWordTable results.
}

\usage{
\method{print}{DocWordTable}(x, file = NULL, sep = ";", ...)
}

\arguments{
  \item{x}{object of class DocWordTable}
  \item{file}{a connection, or a character string naming the file to print to. If NULL (the default), the results are not printed in a file}
  \item{sep}{character string to insert between the objects to print (if the argument file is not NULL)}
  \item{\ldots}{further arguments passed to or from other methods}
}

\author{Monica Becue-Bertaut \email{monica.becue@upc.edu}, Daria M. Hernandez}

\seealso{ \code{\link{DocWordTable}}, \code{\link{summary.DocWordTable}}}

\examples{
\dontrun{
data(dataBiblio)
res.DWT<-DocWordTable(dataBiblio,num.tex=2, idiom="en",lminword=3,Remov.Number=TRUE,lower=TRUE)
print(res.DWT)
}
}

\keyword{multivariate}