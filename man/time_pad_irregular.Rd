% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time_pad_irregular.R
\name{time_pad_irregular}
\alias{time_pad_irregular}
\title{Function to transform a irregular time-series to a continuous time-series.}
\usage{
time_pad_irregular(df, interval, by = NA, na.rm = FALSE)
}
\arguments{
\item{df}{Data frame containing an irregular time-series with \code{"date"} 
and \code{"date_end"} variables.}

\item{interval}{Interval to pad the time-series to? This will almost always
be \code{"hour"} or \code{"day"} but also accepts \code{"sec"} and 
\code{"min"}.}

\item{by}{Should \code{time_pad_irregular} apply the padding function to 
groups within \code{df}? This is helpful when there are many sites/other 
identifiers within \code{df} which need to be padded individually.}

\item{na.rm}{Should \code{NA} values be removed before the locf process? If 
\code{TRUE}, this will result in a time-series with no \code{NA} values but 
may insert observations where they were originally represented as missing.}
}
\description{
\code{time_pad_irregular} is usually used when irregularly sampled variables 
are to be analysed alongside variables which are monitored at regular hourly 
or daily intervals.
}
\details{
\code{time_pad_irregular} will pad a variable's time-series and then 
push values forwards to replace missing data after padding. This is known as 
a "last observation carried forward" (locf) process.

It is not recommended that the transformed variables are used for 
aggregations. \code{time_pad_irregular} will introduce values into a 
time-series and if these are aggregated, in most cases, this will be a flawed
procedure.

\code{time_pad_irregular} requires a data frame with a \code{"date"} and
\code{"date_end"} variables because these are used for the locf process.
}
\examples{
\dontrun{
# Make a continuous time-series
data_benzene_continuous <- time_pad_irregular(data_benzene, "day")
}

}
\seealso{
\code{\link{na.locf}}, \code{\link{round_date_interval}}, 
\code{\link{time_pad}}, \code{timeAverage}, \code{\link{round_date}}
}
\author{
Stuart K. Grange
}
