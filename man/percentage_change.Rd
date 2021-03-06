% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/percentage_change.R
\name{percentage_change}
\alias{percentage_change}
\title{Function to calculate percentage change between new and old values.}
\usage{
percentage_change(previous, new)
}
\arguments{
\item{previous}{Previous or older value.}

\item{new}{Newer value.}
}
\value{
Numeric vector.
}
\description{
Function to calculate percentage change between new and old values.
}
\examples{

# A simple calculation
percentage_change(100, 50)

# Global mean CO2 concentrations
percentage_change(277, 400)

}
\author{
Stuart K. Grange
}
