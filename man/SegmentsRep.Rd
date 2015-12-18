\name{SegmentsRep}
\alias{SegmentsRep}
\title{Repeated Segments (SegmentsRep)}

\description{
Repeated segments and  documents by repeated segments table.
}

\usage{
SegmentsRep(base, num.text, lower= TRUE, sep.strong="[()?./:!=+;{}-]", 
 nxlon=10, nfreq=10, nfreq2=10, nfreq3=10) 

}

\arguments{
 \item{base}{data frame with at least one textual column}
  \item{num.text}{column index(es) or name(s) of the textual column(s)}
  \item{lower}{boolean, if TRUE the corpus is converted into lowercase}
  \item{sep.strong}{string with  the characters marking out the repeated segments (by default "[()?./:!=+;{}-]"}
   \item{nxlon}{maximum number of words in a segment (by default 10)}
  \item{nfreq}{minimun frequency threshold for  the largest segments (by default 10)}
  \item{nfreq2}{minimum frequency threshold for  the length two segments (by default 10)}
  \item{nfreq3}{minimum frequency threshold for the length three segments (by default 10)}
}


\value{
  \item{tab.seg}{documents by repeated segments table}
  \item{list.tot.segment}{list of the repeated segments } 
  \item{Glossary.segments}{glossary of the repeated segments}
  \item{nbseg}{number of repeated segments }
}


\references{
Lebart, L., Salem, A., & Berry, L. (1998). Exploring textual data. (D. Kluwer, Ed.).

}

\author{Monica Becue-Bertaut \email{monica.becue@upc.edu}, Daria M. Hernandez}

\seealso{ \code{\link{print.SegmentsRep}}, \code{\link{summary.SegmentsRep}}, \code{\link{removePunctuation}},

\code{\link{regex}: shows the class [:punct:] of punctuation characters}}

\examples{
\dontrun{
data(dataOpen.question)
res.segment<-SegmentsRep(dataOpen.question, num.text=c(6,7),nxlon=10,nfreq=10,nfreq2=10) 
colnames(res.segment$tab.seg)
print(res.segment)
summary(res.segment, nWord=20)
}
}

\keyword{multivariate}

