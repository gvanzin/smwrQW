% Generated by roxygen2 (4.0.2): do not edit by hand
\name{rbindQW}
\alias{rbindQW}
\title{Combine Data by Rows}
\usage{
rbindQW(...)
}
\arguments{
\item{\dots}{any number of data frames with identical columns. The missing value \code{NA}
is permitted as a special case to allow the addition of missing values.}
}
\value{
A data frame with all columns combined in the order specified in \dots.
}
\description{
Take a sequence of data frame arguments and compine by rows. This is a specilized
version of \code{rbind} that works for data frames that contain columns of class "qw."
}
\seealso{
\code{\link{rbind}}
}
\keyword{data}

