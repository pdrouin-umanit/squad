% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distances.R
\name{normalize_qts}
\alias{normalize_qts}
\title{Quaternion time series normalization}
\usage{
normalize_qts(x, normalizer = NULL)
}
\arguments{
\item{x}{A 4-row numeric matrix.}

\item{normalizer}{A length-4 vector storing a quaternion to use as origin.
Defaults to \code{NULL}, which takes the first quaternion in QTS \code{x}
as origin.}
}
\value{
A 4-row numeric matrix storing the normalized QTS.
}
\description{
Quaternion time series normalization
}
\examples{
qts <- matrix(rnorm(40), 4, 10)
qts <- apply(qts, 2, function(.x) .x / sqrt(sum(.x^2)))
normalize_qts(qts)
}
