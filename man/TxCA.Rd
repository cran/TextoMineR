\name{TxCA}

\alias{TxCA}

\title{Correspondence Analysis of Lexical Tables (TxCA)}

\description{
Correspondence analysis (CA) of lexical tables.
}

\usage{
TxCA(DocVar, DocTerm, num.agg = NULL, idiom = "en", Fmin = 5, Dmin = 5,
 Fmax = NULL, equivalence = NULL, stop.word.user = NULL, 
stop.word.tm = FALSE, lmd = 3, lmk = 3, ncp = 5, row.sup = NULL,
 col.sup = NULL, quanti.sup = NULL, quali.sup = NULL, graph = TRUE,
 axes = c(1, 2), row.w = NULL)
}

\arguments{
  \item{DocVar}{data frame with I rows (documents) and J columns (quantitative or categorical variables)}
  \item{DocTerm}{data frame with I rows (documents) and J columns (words)}
  \item{num.agg}{column index or name of the aggregation column, By default there is no aggregation}
  \item{idiom}{language of the textual  column(s)  (by default English "en")}
  \item{Fmin}{minimum threshold on the word frequency (by default 5)}
  \item{Dmin}{minimum threshold on the number of documents using the word (by default 5)}
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
 \item{row.w}{an optional row weights (by default, a vector of 1 and each row has a weight equal to its margin)}
}

\value{

 Returns a list including:
 \item{TableSummary}{summary of the results}
 \item{Glossary}{glossary of the selected words in frequency order}
 \item{DocTermR}{documents by words (all documents, selected words)}
 \item{Table}{table summitted to CA (non-empty documents, aggregated or not, by selected words) }				
 \item{Nfreqword}{vector with frequencies of words}
 \item{Ndocword}{vector with frequencies of words in documents}
 \item{res.Vcr}{Cramer's V coefficient}
 \item{Inertia}{total inertia}
 \item{res.ca}{correspondence analysis results}
 \item{res.agg}{aggregation results}
 \item{res.meta}{Metakeys and Metadocs results} 

}


\references{

Benzecri, J, P. (1981). Pratique de l'analyse des donnees. Linguistique & lexicologie (Vol.3). (P. Dunod., Ed).
 
Lebart, L., Salem, A., & Berry, L. (1998). Exploring textual data. (D. Kluwer, Ed.).

Murtagh F. (2005). Correspondence Analysis and Data Coding with R and Java. Chapman & Hall/CRC.

Husson F., Le S,, Pages J. (2011). Exploratory Multivariate Analysis by Example Using R. Chapman & Hall/CRC.

}


\author{Daria M. Hernandez \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut}

\seealso{ \code{\link{print.TxCA}}, \code{\link{summary.TxCA}}}

\examples{
\dontrun{
data(dataBiblio)
resT<-DocWordTable(dataBiblio,num.tex=2,lminword=3)
DocTerm<-resT$DocTerm
DocVar<-DocVarTable(dataBiblio,VarSel=c(3,4,5))
##Direct analysis
res.Dir<-TxCA(DocVar,DocTerm,Fmin=20,Dmin=10,stop.word.tm=TRUE)
print(res.Dir)
summary(res.Dir,nEig=5)
###Aggregate analysis by year
res.agg<-TxCA(DocVar,DocTerm,Fmin=20,Dmin=10,stop.word.tm=TRUE, num.agg="Year")
print(res.agg)
summary(res.agg,nEig=5, order=TRUE)
}
}
\keyword{multivariate}



