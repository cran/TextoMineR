\name{TxCaGalt}

\alias{TxCaGalt}

\title{Correspondence Analysis on Generalised Aggregated Lexical Table (TxCaGalt)}

\description{
Correspondence Analysis on Generalised Aggregated Lexical Table (TxCaGalt) aims at expanding correspondence analysis on an aggregated lexical table to the case of several quantitative and categorical variablesin order to establishing a typology of the variables and a typology of the frequencies from their mutual relationships. To avoid the instability issued from multicollinearity among the contextual variables and limit the influence of noisy measurements, the contextual variables are substituted by their principal components. Validation tests in the form of confidence ellipses for the frequencies and the variables are also proposed.
}

\usage{
TxCaGalt(DocTerm, DocVar, idiom = "en", Fmin = 5, Dmin = 1, Fmax = NULL,
 equivalence = NULL, stop.word.user = NULL, stop.word.tm = FALSE,
 type = "s", conf.ellip = FALSE, nb.ellip = 100, level.ventil = 0, 
 sx = NULL, graph = TRUE, axes = c(1, 2))
}


\arguments{
  \item{DocTerm}{data frame with I rows (documents) and J columns (words)}
  \item{DocVar}{data frame with I rows (documents) and K columns (quantitative or categorical variables)}
  \item{idiom}{language of the textual  column(s)  (by default English "en")}
  \item{Fmin}{minimum threshold on the word frequency (by default 5)}
  \item{Dmin}{minimum threshold on the number of documents using the word (by default 5)}
  \item{Fmax}{maximum threshold on the word frequency}
 \item{equivalence}{data frame with n rows and two columns (original word and new word)}
  \item{stop.word.user}{vector indicating the stopwords chosen by the user }
  \item{stop.word.tm}{boolean, if TRUE the stopword list provided by tm is taken into account}
  \item{type}{the type of variables: "c" or "s" for quantitative variables and "n" for categorical variables. The difference is that for "s" variables are scaled to unit variance (by default, variables are scaled to unit variance)}
  \item{conf.ellip}{boolean, if TRUE draw confidence ellipses around the frequencies and the variables (FALSE by default)}
  \item{nb.ellip}{number of bootstrap samples to compute the confidence ellipses (by default 100)}
  \item{level.ventil}{proportion corresponding to the level under which the category is ventilated; by default, 0 and no ventilation is done. Available only when type is equal to "n"}	
  \item{sx}{number of principal components kept from the principal axes analysis of the contextual variables (by default is NULL and all principal components are kept)}
  \item{graph}{boolean, if TRUE a graph is displayed}
  \item{axes}{a length 2 vector specifying the dimensions to plot}
}

\value{
Returns a list including: 
  \item{eig}{matrix containing all the eigenvalues, the percentage of variance and the cumulative percentage of variance}
  \item{ind}{list of matrices containing all the results for the documents (coordinates, square cosine)}  
  \item{freq}{list of matrices containing all the results for the frequencies (coordinates, square cosine, contributions)}
  \item{quanti.var}{list of matrices containing all the results for the quantitative variables (coordinates, correlation between variables and axes, square cosine)}
  \item{quali.var}{list of matrices containing all the results for the categorical variables (coordinates of each categories of each variables, square cosine)}
  \item{ellip}{list of matrices containing the coordinates of the frequencies and variables for replicated samples from which the confidence ellipses are constructed} 
  \item{DocTermR}{documents by words (all documents, selected words)}
  
Returns the documents, the frequencies and the variables factor map. If there are more than 50 frequencies, the first 50 frequencies that have the highest contribution on the 2 dimensions of your plot are drawn.
The plots may be improved using the argument autolab, modifying the size of the labels or selecting some elements thanks to the plot.TxCaGalt function. 
}

\references{
Becue-Bertaut, M., Pages, J. and Kostov, B. (2014). Untangling the influence of several contextual variables on
the respondents'\ lexical choices. A statistical approach.\emph{SORT}.

Becue-Bertaut, M. and Pages, J. (2014). Correspondence analysis of textual data involving contextual information:
Ca-galt on principal components.\emph{Advances in Data Analysis and Classification}
}

\author{Belchin Kostov \email{badriyan@clinic.ub.es}, Monica Becue-Bertaut, Daria M. Hernandez}

\seealso{ \code{\link{print.TxCaGalt}}, \code{\link{summary.TxCaGalt}}, \code{\link{plot.TxCaGalt}}}

\examples{
\dontrun{
data(dataOpen.question)
res<-DocWordTable(dataOpen.question,num.text=c(6,7))
DocTerm<-res$DocTerm
DocVar<-DocVarTable(dataOpen.question,VarSel=c(1,3))
res.Txcagalt<-TxCaGalt(DocTerm,DocVar,idiom="en", stop.word.tm=TRUE,Fmin=5,
type="n",conf.ellip=TRUE, nb.ellip=10, level.ventil=0.05,graph=FALSE)
print(res.Txcagalt)
summary(res.Txcagalt)
}
}
\keyword{multivariate}

