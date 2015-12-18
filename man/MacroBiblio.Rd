\name{MacroBiblio}
\alias{MacroBiblio}

\title{Analysis of Bibliography  (MacroBiblio)}

\description{
Macro function for the analysis of a bibliographic database.
}

\usage{
MacroBiblio(base, num.text = "Abstract", num.agg = "Year", idiom = "en", 
lminword = 3, Fmin = 10, Dmin = 5, Fmax = NULL, equivalence = NULL, 
stop.word.user = NULL, lmd = 3, lmk = 3, ncp = 10, row.sup = NULL, 
col.sup = NULL, graph = TRUE, axes = c(1, 2), proba = 0.01)
}

\arguments{
  \item{base}{data frame with I rows (abstracts/articles) and J columns. The names of the main columns must be: Title, Year, Abstract, Journal; in addition, the database may   have other  quantitative or categorical variables such as: "Author", "Year_class", etc.}
  \item{num.text}{column index(es) or name(s) of the textual column(s) (by default "Abstract" )}
  \item{num.agg}{column index or name of the aggregation column (by default "Year")}
   \item{idiom}{language of the textual  column(s)  (by default English "en")}
  \item{lminword}{minimum threshold on the word length (by default 3)}
  \item{Fmin}{minimum threshold on the word frequency (by default 10)}
  \item{Dmin}{minimum threshold on the number of documents using the word (by default 5)}
  \item{Fmax}{maximum threshold on the word frequency}
 \item{equivalence}{data frame with n rows and two columns (original word and new word)} 
  \item{stop.word.user}{vector indicating the stopwords chosen by the user }
  \item{lmk}{minimum threshold on the contribution for selecting the metakeys (by default 3, which mean contribution 3 times greater than the mean contribution)}
  \item{lmd}{minimum threshold on the contribution for selecting the metadocs (by default 3, which mean contribution 3 times greater than the mean contribution)}
 \item{ncp}{number of dimensions stored in the results (by default 10)}
 \item{row.sup}{vector with the index(es) or name(s) of the supplementary row(s) }
 \item{col.sup}{vector with the index(es) or name(s) of the supplementary frequency column(s)}
 \item{graph}{boolean, if TRUE graphs are displayed}
 \item{axes}{a length 2 vector specifying the dimensions to plot}
 \item{proba}{significance threshold used to  select the characteristic words in each category (by default 0.01)}
}

\value{
 Returns a list including:
 \item{Corpus}{summary of the information about the corpus}
 \item{Glossary}{glossary of the selected words in frequency order}
 \item{DocTermR}{documents by words (all documents, selected words)}
 \item{Tagreg}{lexical aggregated table}
 \item{Metakeys.Metadocs}{graphical representation of metakeys and metadocs}
 \item{res.CA}{results of direct correspondence analysis}
 \item{res.CA.Agreg}{results of aggregate correspondence analysis by year}
 \item{CharWord}{characteristic words of each category of the aggregation variable}
 \item{res.CHCPC}{results of constrained hierarchical clustering}
 \item{res.MFACT}{result of multiple factor analysis for contingency tables}
 \item{OrdWord}{words order by their coordinates on the first dimension}
 \item{pioneers}{pioneer articles} 
}

\references{
Kerbaol, M. Bansard, JY.;Coatrieux, JL. ( 2006) An analysis of IEEE publications in biomedical engineering. \emph{IEEE Engineering in Medicine and Biology. Magazine}.

Morin, A.( 2006 )Intensive Use of Factorial Correspondence Analysis for Text Mining:\emph{ Application with Statistical Education Publications}.


Becue-Bertaut, M. (2014). Tracking verbal-based methods beyond conventional descriptive analysis in food science bibliography. A statistical approach. \emph{Food Quality and Preference},32, 2-15.

Lebart, L., Salem, A., & Berry, L. (1998). Exploring textual data. (D. Kluwer, Ed.).
}

\author{Daria M. Hernandez \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut, Belchin Kostov}

\seealso{ \code{\link{print.MacroBiblio}},\code{\link{summary.MacroBiblio}}}

\examples{
\dontrun{
data(dataBiblio)
res.dataBiblio<-MacroBiblio(dataBiblio, lmd = 6, lmk =6)
print(res.dataBiblio)
summary(res.dataBiblio, nword=20)
}
}

\keyword{multivariate}
