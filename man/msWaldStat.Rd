% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/msWaldStat.R
\name{msWaldStat}
\alias{msWaldStat}
\title{Multi-Sample Wald Statistic}
\usage{
msWaldStat(nReads, piMat, thetaVec)
}
\arguments{
\item{nReads}{list of number of reads (library size) for each group,
i-th element of the list contains \eqn{n_i} elements}

\item{piMat}{matrix K x G, K = number of OTUs, G = number of groups, contains probability
vectors/R.A.D.s}

\item{thetaVec}{overdispersion parameter vector, one for each group}
}
\value{
\code{numeric} Wald-type test statistic
}
\description{
Multi-sample Wald-type test statistics, basically Xmcupo.sevsample()
}
\author{
Federico Mattiello <Federico.Mattiello@UGent.be>
}

