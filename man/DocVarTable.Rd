\name{DocVarTable}

\alias{DocVarTable}

\title{Documents by Variables Table (DocVarTable)}

\description{
Builds a data frame with the contextual variables selected from the base.
}

\usage{
DocVarTable(base, VarSel)
}

\arguments{
 \item{base}{data frame with at least one textual column and one contextual variable}
 \item{VarSel}{column index(es) or name(s) of the selected variable(s)}

}


\value{
\item{DocVar}{data frame with I rows (documents) and J columns (quantitative or categorical variables)}
}


\author{Daria M Hernandez \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut}


\examples{
data(dataBiblio)
DocVar<-DocVarTable(dataBiblio,VarSel=c(3,4,5))
}

\keyword{multivariate}




