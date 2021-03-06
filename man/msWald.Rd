% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/msWald.R
\name{msWald}
\alias{msWald}
\title{Wrapper for msWaldStat}
\usage{
msWald(nReads, alphaDM, thetaDM, wmnTest = FALSE, adjMethod = "fdr")
}
\arguments{
\item{nReads}{either (i) a \code{list} or (ii) a \code{list} of \code{list}s; more in detail:
\itemize{
  \item{}{
  in case (i) \code{nReads} has to be a list of number of reads (library size) for
  each group, {\em i.e.} the i-th element of the list contains \eqn{n_i} elements;
  }
  \item{}{
  in case (ii) \code{nReads} must be a \code{list} where each element contains a
  \code{list} with the same structure of the previous point, {\em i.e.} each element
  element is used to perform a separate analysis on the same data by subsetting the
  samples. It useful in case of simulations when several sample sizes are to be
  tried.
  }
}
See also the {\em details} section.}

\item{alphaDM}{\eqn{\alpha}{alpha} parameter for the Dirichlet-Multinomial distribution.
  Either a \code{matrix} of dimensions \eqn{K \times G}{K x G}, K = number of OTUs,
  G = number of groups, containing the parameter vectors for the Dirichlet
  distribution or a \code{list} where each element contains a \eqn{K \times G}{K x G}
  \code{matrix} in case the simulations need to be stratified, {\em e.g.} by
  enterotype. In the latter case simulations are performed separately
  stratum-by-stratum; individual and global rejection rates (power) are given as
  output (see also details).
does NOT need to be stratified (subsets of samples,
    {\em e.g.} in case of enterotypes)}

\item{thetaDM}{\eqn{\theta}{theta} overdispersion parameter for the Dirichlet-Multinomial
distribution. Either (i) a \code{numeric} vector of length equal
to the number of groups under test or (ii) a \code{matrix} where each column
corresponds to a different stratum. It is recycled when possible (same values for
each stratum).}

\item{wmnTest}{\code{logical} default to \code{FALSE}, if \code{TRUE} performs the two-samples
Wilcoxon-Mann-Whitney test one OTU at-a-time and then corrects for multiplicity.
{\bfseries Note:} it works only with case (i), thus without subsets and
without strata.}

\item{adjMethod}{\code{character} method to adjust for multiplicity in case \code{wmnTest} is
\code{TRUE}}
}
\value{
what the function returns
}
\description{
Wrapper for msWaldStat
}
\author{
Federico Mattiello <Federico.Mattiello@UGent.be>
}

