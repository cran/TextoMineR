\name{summary.SegmentsRep}
\alias{summary.SegmentsRep}
\title{Summary SegmentsRep objects}

\description{
Summarizes SegmentsRep objects.
}

\usage{
\method{summary}{SegmentsRep}(object, nseg = 20, ordFreq=FALSE, ...)
}
\arguments{
  \item{object}{object of class SegmentsRep}
  \item{nseg}{number of repeated segments to be printed}
 \item{ordFreq}{if ordeFreq=FALSE segments  of the glossary to be printed in frequency order}
  \item{\dots}{further arguments passed to or from other methods, such as cex, cex.main, ...}
 
 }

\author{Daria M. Hernandez \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut}

\seealso{ \code{\link{SegmentsRep}},\code{\link{print.SegmentsRep}}}

\examples{
data(dataOpen.question)
res.segment<-SegmentsRep(dataOpen.question, num.text=c(6,7),nxlon=10,nfreq=10,nfreq2=10) 
print(res.segment)
summary.SegmentsRep(res.segment,nseg=20)
}

\keyword{multivariate}

