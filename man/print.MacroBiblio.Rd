\name{print.MacroBiblio}

\alias{print.MacroBiblio}

\title{Prints MacroBiblio results}

\description{
Prints MacroBiblio results.
}

\usage{
\method{print}{MacroBiblio}(x, file = NULL, sep = ";", ...)
}

\arguments{
  \item{x}{object of class MacroBiblio}
  \item{file}{a connection, or a character string naming the file to print to. If NULL (the default), the results are not printed in a file}
  \item{sep}{character string to insert between the objects to print (if the argument file is not NULL)}
  \item{\ldots}{further arguments passed to or from other methods}
}

\author{Daria M. Hernandez \email{daria.micaela.hernandez@upc.edu}, Belchin Kostov, Monica Becue-Bertaut}

\seealso{ \code{\link{MacroBiblio}}, \code{\link{write.infile}}}

\examples{
\dontrun{
data(dataBiblio)
res.dataBiblio<-MacroBiblio(dataBiblio,lmd = 6, lmk =6, graph=FALSE)
print(res.dataBiblio)
}
}

\keyword{multivariate}
