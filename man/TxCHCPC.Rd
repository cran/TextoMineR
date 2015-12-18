\name{TxCHCPC}

\alias{TxCHCPC}

\title{Constrained Hierarchical Clustering (TxCHCPC)}

\description{
Agglomerative constrained hierarchical clustering of documents starting from the results CA or MFACT. The chronology  corresponds to the order of the documents in the analysed data frame.
}

\usage{
TxCHCPC(res, Table = NULL, nb.clust = 0, min = 3, max = NULL, metric = "euclidean", 
 nb.par = 5, graph = TRUE, proba = 0.05, ...)
}

\arguments{

  \item{res}{ CA or MFACT result}
  \item{Table}{data frame with I rows (documents) and J columns (words)}
  \item{nb.clust}{integer. If nb.clust=0, the tree is cut at the level the user clicks on. If nb.clust=-1, the tree is automatically cut at the suggested level (see details). If a (positive) integer, the tree is cut with nb.cluters clusters.}
  \item{min}{integer. Minimum number of suggested clusters}
  \item{max}{integer. Maximum number of suggested clusters; by default the maximum is between 10 and the number of documents divided by 2.}
  \item{metric}{used metric. The currently available options are "euclidean" and "manhattan"}
  \item{nb.par}{integer. Number of edited paragons}
  \item{graph}{if TRUE, graphis are displayed}
  \item{proba}{probability used to select axes and variables in cluster description (see catdes for details)}
  \item{\dots}{arguments passed to or from other methods}
}

\value{

 Returns a list including:
  	
  \item{data.clust}{the original data with a supplementary row called cluster containing the partition}
  \item{desc.axes}{description of the clusters by the factors (axes). (See catdes for detail)}
  \item{desc.var}{description of the clusters by the variables. (See catdes for details)}
  \item{call}{list or parameters and internal objects; call$t gives the results for the hierarchical tree }
  \item{ind.desc }{paragons (para) and the more typical documents of each cluster. (See details)}
  \item{HierWord }{characteristic words for each node of the hierarchy}

Returns the tree and a barplot of dissimilarity levels, the document factor map with the tree (3D), the factor map with documents colored by cluster (2D).
}


\references{
Legendre, P. & Legendre, L. (1998), Numerical Ecology (2nd ed.), Amsterdam: Elsevier Science.

Becue-Bertaut, M., Kostov, B., Morin, A., & Naro, G. (2014). Rhetorical Strategy in Forensic Speeches: Multidimensional Statistics-Based Methodology \emph{Journal of Classification}, 31. doi:10.1007/s00357-014-9148-9.

Murtagh F. (1985). Multidimensional Clustering Algorithms. Vienna: Physica-Verlag, COMPSTAT Lectures.

Murtagh F. (2005). Correspondence Analysis and Data Coding with R and Java. Chapman & Hall/CRC.

}


\author{Daria M Hernandez \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut, Belchin Kostov}

\seealso{ \code{\link{TxCharClust}}}

\examples{
\dontrun{
data(dataBiblio)
resT<-DocWordTable(dataBiblio,num.tex=2,lminword=3)
DocTerm<-resT$DocTerm
DocVar<-DocVarTable(dataBiblio,VarSel=c(3,4,5))
res.agg<-TxCA(DocVar,DocTerm,Fmin=100,Dmin=20,num.agg =1,graph=FALSE)
Table<-res.agg$Table
res.CH<-TxCHCPC(res.agg$res.ca, nb.clust = -1)
#With characteristic words for every node of the hierarchy
res.CH<-TxCHCPC(res.agg$res.ca, nb.clust = -1, Table)
res.CH$HierWord
print(res.CH)
}
}

\keyword{multivariate}

