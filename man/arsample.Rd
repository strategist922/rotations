\name{arsample}
\alias{arsample}
\title{Accept/Reject Algorithm}
\usage{
  arsample(f, g, M, kappa, Haar, ...)
}
\arguments{
  \item{f}{target density}

  \item{g}{sampling density}

  \item{M}{real valued constant, maximum of g}

  \item{kappa}{second parameter in the target density}

  \item{Haar}{should f be with respect to Haar or not}

  \item{...}{additional arguments passed to samping
  density, g}
}
\value{
  a random observation from target density
}
\description{
  Accept/Reject Algorithm
}
\author{
  Heike Hofmann
}

