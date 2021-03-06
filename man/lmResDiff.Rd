% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lmResDiff.R
\name{lmResDiff}
\alias{lmResDiff}
\title{linear model residual differences by subtraction and continuous var (i.e.
days to diagnosis)}
\usage{
lmResDiff(batchAdjusted = NULL, obsNames = NULL, resDiffId = NULL,
  contVar = NULL, minPintercept = 0.005, minPcontVar = 0.005,
  MTC = "BH")
}
\arguments{
\item{batchAdjusted}{a matrix or data.frame output of batch adjusted residuals obtained
from linear modelling of analytical batch covariate \code{\link{batchAdj}}. 
The matrix/ data.frame must take the form observations (samples) in columns and
mass spectral variable residuals in rows.}

\item{obsNames}{character vector of observation (i.e. sample/ QC/ Blank) names to identify appropriate observation (sample) columns.}

\item{resDiffId}{a character or logical vector containing the pair/ class identity of observations.
This identity will be used to substract the batchAdjusted residuals. (e.g. case-control status).}

\item{contVar}{a character/ factor/ numeric vector containing a continuous variable which will be modelled
\code{\link{lm}}
against the residual difference values. This vector will be subset and only the TRUE, maximum factor level
from resDiffId will be included.}

\item{minPintercept}{the minimum p value threshold for the intercept value of \code{\link{lm}}.}

\item{minPcontVar}{he minimum p value threshold for the continuous variable contVar of \code{\link{lm}}}

\item{MTC}{multiple testing correction method see(\code{\link{p.adjust}}). default = "BH".}

\item{minPintercept}{the minimum p value threshold for the intercept value of \code{\link{lm}}.}
}
\value{
returns a list containing two elements:
1. resultsTable = a data.frame containing the variables found to be below both
p value thresholds (minPintercept and minPcontVar).
2. resDiff = a data.frame containing the substraction of the resDiffId groups.
}
\description{
linear model residual differences by subtraction and continuous var (i.e.
days to diagnosis)
}

