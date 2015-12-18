\name{print.SegmentsRep}

\alias{print.SegmentsRep}

\title{Prints SegmentsRep results}

\description{
Prints SegmentsRep results.
}

\usage{
\method{print}{SegmentsRep}(x, file = NULL, sep = ";", ...)
}

\arguments{
  \item{x}{object of class SegmentsRep}
  \item{file}{a connection, or a character string naming the file to print to. If NULL (the default), the results are not printed in a file}
  \item{sep}{character string to insert between the objects to print (if the argument file is not NULL)}
  \item{\ldots}{further arguments passed to or from other methods}
}

\author{ Daria M. Hernandez \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut}

\seealso{ \code{\link{SegmentsRep}}, \code{\link{summary.SegmentsRep}}, \code{\link{SegmentsSup}}}

\examples{
\dontrun{
data(dataOpen.question)
res.segment<-SegmentsRep(dataOpen.question, num.text=c(6,7),nxlon=10,nfreq=10,nfreq2=10) 
print(res.segment)
}
}

\keyword{multivariate}
