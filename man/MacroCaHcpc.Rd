\name{MacroCaHcpc}
\alias{MacroCaHcpc}

\title{Correspondence Analysis and Hierarchical Clustering (MacroCaHcpc)}
\description{Macro function for the analysis of data issued  from  a database  with open-ended questions.  Automatic chain of the main steps: AC and HCPC.}
\usage{
MacroCaHcpc(base, num.text, idiom = "en", nb.clust = -1, Fmin = 5, Dmin = 5,
 Fmax = NULL, equivalence = NULL, stop.word.user = NULL, 
stop.word.tm = FALSE, lmd = 3, lmk = 3, ncp = 5, row.sup = NULL, 
col.sup = NULL, quanti.sup = NULL, quali.sup = NULL, axes = c(1, 2))
}
\arguments{
  \item{base}{data frame with at least one textual column}
  \item{num.text}{column index(es) or name(s) of the textual column(s)}
  \item{idiom}{language of the textual  column(s)  (by default English "en")}
  \item{nb.clust}{integer. If 0, the tree is cut at the level the user clicks on. If -1, the tree is automatically cut at the suggested level (by defaul -1)}
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
 \item{axes}{a length 2 vector specifying the dimensions to plot}
}


\value{

 Returns a list including:

 \item{Corpus}{summary of the information about the corpus}
 \item{res.TxCA}{correspondence analysis results }
 \item{res.hcpc}{hierarchical clustering results}
 \item{res.TxCharClust}{characteristic documents and words of the clusters}
 \item{ncp}{number of dimensions preserved (corresponding to the dimensions associated to an over the  mean eigenvalues) in the construction of hierarchical clustering}

}


\references{
Lebart, L., Salem, A., & Berry, L. (1998). Exploring textual data. (D. Kluwer, Ed.).

}

\author{Daria M. Hernandez \email{daria.micaela.hernandez@upc.edu},  Monica Becue-Bertaut}

\seealso{ \code{\link{print.MacroCaHcpc}}}

\examples{
\dontrun{
data(dataOpen.question)
res.TxC<-MacroCaHcpc(dataOpen.question, num.text=c(6,7), Fmin=15,Dmin=15)
print(res.TxC)
}
}
\keyword{multivariate}