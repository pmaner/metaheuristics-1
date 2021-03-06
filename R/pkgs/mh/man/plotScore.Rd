% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/visualisation.r
\name{plotScore}
\alias{plotScore}
\title{Plots a custom view of the fitness (defaults: max score so far)}
\usage{
plotScore(logMh, FUN = rollingMax)
}
\arguments{
\item{logMh}{an mhData object}

\item{FUN}{a function to apply to the 'fitness' column as specified by the mhData object}
}
\value{
ggplot object
}
\description{
Plots a custom view of the fitness (defaults: max score so far)
}
\examples{
\dontrun{
logFileName <- 'F:/path/to/419016_IhacresClassic_19390101_19481231.csv'
logSce <- loadMhLog(logFileName)
logMh <- new("mhData",
   data= logSce,
   fitness = "NSE.logbias",
   messages = "Message",
   categories = "Category")

geomOps <- subsetByMessage(logMh)
geomOps <- copyMhData( geomOps, boundValuesDf(geomOps@data, geomOps@fitness, c(0,1)))
d <- plotMaxScore(geomOps)
d
}
}

