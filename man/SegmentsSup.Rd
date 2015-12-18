\name{SegmentsSup}

\alias{SegmentsSup}

\title{Supplementaty Repeated Segments (SegmentsSup)}

\description{
Repeated segments as supplementary elements in a direct or aggregated correspondence analysis.
}

\usage{
SegmentsSup(DocVar,Table,Tab.SegR,SegSelec=NULL, cos2=NULL, ncp=5,
num.agg=NULL, graph=TRUE)
}

\arguments{
  \item{DocVar}{data frame with I rows (documents) and J columns (quantitative or categorical variables)}
  \item{Table}{documents by words table built by a former CA}
  \item{Tab.SegR}{documents by repeated segments table}
  \item{ncp}{number of dimensions stored in the results (by default 5)}
  \item{num.agg}{column index or name of the aggregation column; if NULL the former CA was a direct CA }
  \item{SegSelec}{vector with the index of segments are selected}
  \item{cos2}{value for supplementaries that have the highest cos2 on the 2 dimensions of your plot are drawn}
 \item{graph}{boolean, if TRUE graphs are displayed}
}

\value{

  \item{Table.Seg}{if aggregated CA, category by repeated segments table if not Table.Seg=NULL}
  \item{res.ca}{result of the correspondence analysis}
  \item{TagSeg}{aggregated documents by segments table}
}


\references{
Lebart, L., Salem, A., & Berry, L. (1998). Exploring textual data (D. Kluwer, Ed.).
}


\author{Daria M. Hernandez \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut}

\seealso{\code{\link{SegmentsRep}}}

\examples{
\dontrun{
data(dataOpen.question)
res<-DocWordTable(dataOpen.question,num.text=c(6,7))
DocTerm<-res$DocTerm
DocVar<-DocVarTable(dataOpen.question,VarSel=c(1,2,3,4))
res.TxCA<-TxCA(DocVar,DocTerm,Fmin=10,Dmin=5,stop.word.tm=TRUE, num.agg=3,graph=FALSE)
Table<-res.TxCA$Table
res.segment<-SegmentsRep(dataOpen.question, num.text=c(6,7),nxlon=20,nfreq=10,nfreq2=10) 
Tab.Seg<-res.segment$tab.seg
res.SupSeg<-SegmentsSup(DocVar,Table,Tab.Seg,num.agg=3)
}
}

\keyword{multivariate}
