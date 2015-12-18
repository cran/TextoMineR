\name{TxMFACT}

\alias{TxMFACT}

\title{Multiple Factor Analysis Contingency Tables for Textual Data (TxMFACT)}

\description{
Multiple Factor Analysis in the sense of Escofier and Pages with supplementary documents and supplementary groups of variables. Groups of variables can be quantitative, categorical or contingency tables. Missing values in numeric variables are replaced by the column mean. Missing values in categorical variables are treated as an additional level.
}

\usage{
TxMFACT(MDocWord, group, type = rep("s", length(group)), col.sup = NULL, ind.sup = NULL,
 ncp = 5, name.group = NULL, num.group.sup = NULL, graph = TRUE, weight.col.mfa = NULL,
 row.w = NULL, axes = c(1, 2), tab.comp = NULL)
}

\arguments{
  \item{MDocWord}{data frame with I rows (documents) and J columns (variables)}
  \item{group}{vector with the number of columns in each group}
  \item{type}{type of  group: "c" or "s" for quantitative variables ( "s" variables are scaled to unit variance), "n" for categorical variables and "f" for frequency (columns tables); by default, all variables are quantitative and scaled to unit variance}
  \item{ind.sup}{vector indicating the indexes of supplementary documents}
  \item{col.sup}{vector indicating the indexes or names of supplementary columns}
  \item{ncp}{number of dimensions stored in the results (by default 5)}
  \item{name.group}{vector with the names of the groups (by default, NULL and the group are named group.1, group.2 and so on)}
  \item{num.group.sup}{the indexes of the illustrative groups (by default, NULL and no group are illustrative)}
  \item{graph}{boolean, if TRUE graphs are displayed}
  \item{weight.col.mfa}{vector of weights, useful for HMFA method (by default, NULL and a MFA is performed)}
  \item{row.w}{an optional row weights (by default, a vector of 1 for uniform row weights)}
  \item{axes}{a length 2 vector specifying the dimensions to plot}
  \item{tab.comp}{object obtained from the imputeMFA function of the missMDA package that allows to handle missing values}
}


\value{
 Returns a list including:
  \item{summary.quali}{summary of the results for the categorical variables}
  \item{summary.quanti}{summary of the results for the quantitative variables}
  \item{separate.analyses}{results for the separate analyses}
  \item{eig}{ matrix containing all the eigenvalues, the percentage of variance and the cumulative percentage of variance}
  \item{group}{list of matrices containing all the results for the groups}
  \item{rapport.inertie}{inertia ratio}
  \item{ind}{list of matrices containing all the results for the active documents}
  \item{ind.sup}{list of matrices containing all the results for the supplementary documents}
  \item{quanti.var}{list of matrices containing all the results for the quantitative variables }
  \item{freq}{list of matrices containing all the results for the frequencies}
  \item{quanti.var.sup}{list of matrices containing all the results for the supplementary quantitative variables }
  \item{freq.sup}{list of matrices containing all the results for the supplementary frequencies}
  \item{partial.axes}{list of matrices containing all the results for the partial axes}
  \item{global.pca}{result of the analysis when it is considered as a unique weighted PCA}
}

\references{
Escofier, B., Pages, J. (1990). Analyses factorielles simples et multiples: objectifs, methodes, interpretation. Dunod, Paris

Becue-Bertaut, M.,Pages, J. (2004). A principal axes method for comparing multiple contingency tables: MFCT \emph{Computational Statistics and Data Analysis}, 45, 481-503.

Becue-Bertaut, M., Pages, J. (2008). Multiple factor analisis and clustering of a mixture of quantitative, categorical and frequency data. \emph{Computational statistics and Data Analysis}, 52, 3255-3268

}

\author{Belchin Kostov \email{badriyan@clinic.ub.es}, Monica Becue-Bertaut, Daria M. Hernandez}

\seealso{\code{\link{summary.TxMFACT}}}

\examples{
\dontrun{
data(dataOpen.question)
res.M1<-DocWordTable(dataOpen.question,num.text=c(6,7))
res.M2<-DocWordTable(dataOpen.question,num.text=8)
DocVar<-DocVarTable(dataOpen.question,VarSel=c(1,2,3,4))
MDocTerm=list(res.M1$DocTerm,res.M1$DocTerm)
MDocVar=list(DocVar,DocVar)
MTable<-MDocWordTable(MDocTerm,MDocVar,num.agg=3,idiom=c("en","en"),
Fmin=c(10,5),Dmin=c(2,1))
res.mfact<-TxMFACT(MTable$MDocWord, group=MTable$ncolTs, type =c("f","f"),
name.group=c("Important","Culture")) 
summary(res.mfact)
}
}
\keyword{multivariate}

