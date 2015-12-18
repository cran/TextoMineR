\name{print.MacroCaHcpc}

\alias{print.MacroCaHcpc}

\title{Prints MacroCaHcpc results}

\description{
Prints MacroCaHcpc results.
}

\usage{
\method{print}{MacroCaHcpc}(x, file = NULL, sep = ";", ...)
}

\arguments{
  \item{x}{object of class MacroCaHcpc}
  \item{file}{a connection, or a character string naming the file to print to. If NULL (the default), the results are not printed in a file}
  \item{sep}{character string to insert between the objects to print (if the argument file is not NULL)}
   \item{\dots}{further arguments passed to or from other methods}
}

\author{Daria M. Hernandez \email{daria.micaela.hernandez@upc.edu}, Monica Becue-Bertaut}

\seealso{ \code{\link{MacroCaHcpc}}}

\examples{
\dontrun{
data(dataOpen.question)
res.TxC<-MacroCaHcpc(dataOpen.question, num.text=c(6,7), Fmin=15,Dmin=15)
print(res.TxC)
}
}

\keyword{multivariate}