% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidy_summary.R
\name{tidy_summary}
\alias{tidy_summary}
\title{Function to create tidy data descriptives from a data frame.}
\usage{
tidy_summary(df, round = 3, json = FALSE)
}
\arguments{
\item{df}{Data frame for descriptives to be calculated for.}

\item{round}{Rounding precision of descriptives. Default is \code{3}.}

\item{json}{Should the return be a pretty JSON array?}
}
\value{
Data frame or pretty printed JSON.
}
\description{
Function to create tidy data descriptives from a data frame.
}
\examples{
\dontrun{

# Calcuate summaries
data_summary <- tidy_summary(data_air)

}

}
\author{
Stuart K. Grange
}
