\name{MacroTxChrono}
\alias{MacroTxChrono}

\title{Chronological Corpus (MacroTxChrono)}
\description{Macro function for an analysis of a chronological corpus}
\usage{
MacroTxChrono(base, num.text, divide=TRUE, SentLength=100,  idiom ="en",
 Fmin=5, Dmin=1, Fmax=NULL, equivalence=NULL, stop.word.user=NULL,
stop.word.tm=FALSE, lmk=3,lmd=3, ncp=5,  row.sup = NULL, col.sup = NULL, 
quanti.sup=NULL, quali.sup = NULL, graph = TRUE, axes = c(1,2), N=5000, 
alfa=0.15, CorChronoDim=0.10, HierWords=TRUE, SegRep=FALSE)
}

\arguments{
  \item{base}{data frame with at least one textual column}
  \item{num.text}{column index(es) or name(s) of the textual column(s)}
  \item{divide}{boolean, if TRUE the whole corpus is divided into arbitrary sentences of size SentLength} 
  \item{SentLength}{length of the arbitrary sentences (by default 100 words)}
  \item{idiom}{language of the textual  column(s)  (by default English "en")}
  \item{Fmin}{minimum threshold on the word frequency (by default 5)}
  \item{Dmin}{minimum threshold on the number of documents using the word (by default 1)}
  \item{Fmax}{maximum threshold on the word frequency}
  \item{equivalence}{data frame with n rows and two columns (original word and new word)} 
  \item{stop.word.user}{vector indicating the stopwords chosen by the user }
  \item{stop.word.tm}{boolean, if TRUE the stopword list provided by tm is taken into account } 
 \item{lmk}{minimum threshold on the contribution for selecting the metakeys (by default 3, which mean contribution 3 times greater than the mean contribution)}
 \item{lmd}{minimum threshold on the contribution for selecting the metadocs (by default 3, which mean contribution 3 times greater than the mean contribution)}
 \item{ncp}{number of dimensions stored in the results (by default 5)}
 \item{row.sup}{vector with the index(es) or name(s) of the supplementary row(s)}
 \item{col.sup}{vector with the index(es) or name(s) of the supplementary frequency column(s)}
 \item{quanti.sup}{vector with the index(es) or name(s) of the supplementary quantitative column(s)}
 \item{quali.sup}{vector with the index(es) or name(s) of the categorical supplementary column(s)}
 \item{graph}{boolean, if TRUE graphs are displayed}
 \item{axes}{a length 2 vector specifying the dimensions to plot}
 \item{N}{number of permutation tests (by default 5000)}
 \item{alfa}{significance level  (by default 0.15)}
 \item{CorChronoDim}{threshold on cor(chronology, dimensions) to select dimensions for constrained clustering (by default 0.10)}
 \item{HierWords}{boolean, if TRUE results characteristic words for each node in the hierarchy are displayed}
 \item{SegRep}{boolean, if TRUE results characteristic segments for each node in the hierarchy are displayed}
}


\value{

 Returns a list including:
 \item{SentenceList}{data frame with  I rows (sentences) and two columns (group and sentence)}
 \item{Homo.Groups}{homogeneous groups and list of their contents}
 \item{Corpus}{summary of the information about the corpus}
 \item{Correlation}{correlation between chronology and dimensions}
 \item{res.TxCA}{correspondence analysis results}
 \item{res.chcpc}{constrained hierarchical clustering results}
 \item{HierWord}{characteristic words for each node of the constrained hierarchical clustering}
 \item{HierSegment}{characteristic segments for each node of the constrained hierarchical clustering}
 \item{VocIndex}{regular and specialized vocabulary}

}


\references{
Becue-Bertaut, M., Kostov, B., Morin, A., & Naro, G. (2014). Rhetorical Strategy in Forensic Speeches: Multidimensional Statistics-Based Methodology \emph{Journal of Classification}, 31. doi:10.1007/s00357-014-9148-9.
 
Legendre, P. & Legendre, L. (1998), Numerical Ecology (2nd ed.), Amsterdam: Elsevier Science.

Murtagh, F. (1985), Multidimensional Clustering Algorithms. Vienna-Wurzburg: Physica-Verlag.,

Murtagh, F., Ganz, A., & Mckie, S. (2008). The structure of narrative: The case of film scripts, \emph{Patterns Recognition}, 42, 302-312.

}

\author{Daria M. Hernandez \email{daria.micaela.hernandez@upc.edu},  Monica Becue-Bertaut}


\examples{
\dontrun{
data(dataSpeech)
res.MTxC<-MacroTxChrono(dataSpeech, SentLength=120, num.text=1, HierWords=FALSE)
print(res.MTxC)
summary(res.MTxC)
}
}

\keyword{multivariate}

