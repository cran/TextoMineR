
\name{MDocWordTable}

\alias{MDocWordTable}

\title{Multiple Document by Words Table (MDocWordTable)}

\description{
Builds a  Multiple Document by Words Table.
}

\usage{
MDocWordTable(MDocTerm,MDocVar,Fmin=rep(5,length(MDocTerm)),Dmin=rep(5,length(MDocTerm)),
idiom=rep("en",length(MDocTerm)),stop.word.user=vector(mode="list",length(MDocTerm)),
stop.word.tm=rep(FALSE,length(MDocTerm)),num.agg=NULL,Fmax=NULL)
}

\arguments{

  \item{MDocTerm}{list of  lexical tables}
  \item{MDocVar}{list of contextual tables associated with the lexical tables (one by one)}
  \item{Fmin}{vector of the minimum thresholds on the word frequency (one threshold for each table, by default 5)}
  \item{Dmin}{vector of the minimum documents using the word (one threshold for each table, by default 1)}
  \item{idiom}{vector indicating the language corresponding to each lexical table}
  \item{stop.word.user}{list of the stopword vectors chosen by the user for each lexical table}
  \item{stop.word.tm}{boolean vector, if TRUE the stopword list provided by tm is taken into account in each lexical table}
  \item{num.agg}{column index or name of the aggregation column. Common to all the table (by default NULL, no aggregation)}
  \item{Fmax}{maximum threshold on the word frequency}
}


\value{

 \item{MDocWord}{multiple document by words table}
 \item{ncolTs}{vector with the number of columns in each table after selection}
 \item{MTagregSep}{list with the separate aggregate tables}  
}
\author{Daria M. Hernandez \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut}

\seealso{\code{\link{DocWordTable}}, \code{\link{TxMFACT}}}

\examples{
data(dataOpen.question)
res.M1<-DocWordTable(dataOpen.question,num.text=c(6,7))
res.M2<-DocWordTable(dataOpen.question,num.text=8)
DocVar<-DocVarTable(dataOpen.question,VarSel=c(1,2,3,4))
MDocTerm=list(res.M1$DocTerm,res.M1$DocTerm)
MDocVar=list(DocVar,DocVar)
MTable<-MDocWordTable(MDocTerm,MDocVar,num.agg=3,idiom=c("en","en"), Fmin=c(10,5),Dmin=c(2,1))
names(MTable)
}
\keyword{multivariate}


