\name{print.TxCaGalt}

\alias{print.TxCaGalt}

\title{Prints TxCaGalt results}

\description{
Prints TxCaGalt results.
}
\usage{
\method{print}{TxCaGalt}(x, file = NULL, sep = ";", ...)
}

\arguments{
  \item{x}{object of class TxCaGalt}
  \item{file}{a connection, or a character string naming the file to print to. If NULL (the default), the results are not printed in a file}
  \item{sep}{character string to insert between the objects to print (if the argument file is not NULL)}
  \item{\dots}{further arguments passed to or from other methods}
}

\author{Belchin Kostov \email{badriyan@clinic.ub.es}, Monica Becue-Bertaut, Daria M. Hernandez}

\seealso{ \code{\link{TxCaGalt}}, \code{\link{write.infile}}}

\examples{
\dontrun{
data(dataOpen.question)
res<-DocWordTable(dataOpen.question,num.text=c(6,7))
DocTerm<-res$DocTerm
DocVar<-DocVarTable(dataOpen.question,VarSel=c(1,3))
res.Txcagalt<-TxCaGalt(DocTerm,DocVar,idiom="en", type="n",
conf.ellip=TRUE, nb.ellip=10, level.ventil=0.05, graph=F)
print(res.Txcagalt)
}
}

\keyword{multivariate}
