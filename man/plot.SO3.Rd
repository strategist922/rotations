\name{plot.SO3}
\alias{plot.SO3}
\title{Visualizing random rotations.}
\usage{
  plot.SO3(x, center, col = 1, toRange = FALSE,
    show_estimates = NULL, label_points = NULL, ...)
}
\arguments{
  \item{x}{n rotations in SO3 format}

  \item{center}{point about which to center the
  observations}

  \item{col}{integer 1 to 3 indicating which column to
  display}

  \item{toRange}{show only part of the globe that is in
  range of the data?}

  \item{show_estimates}{character vector to specify which
  of the four estimates of the principal direction to show.
  Possibilities are "all", "proj.mean", "proj.median",
  "riem.mean", "riem.median"}

  \item{label_points}{vector of labels}

  \item{...}{parameters passed onto the points layer}
}
\value{
  a ggplot2 object with the data displayed on spherical
  grid
}
\description{
  This function produces a three-dimensional globe onto
  which one of the columns of the provided sample of
  rotations is drawn.  The data are centered around a
  provided matrix and the user can choose to display this
  center or not.  Based on \code{ggplot2} package by
  \cite{Wickham (2009)}.
}
\examples{
r<-rvmises(200,1.0)
Rs<-genR(r)
plot(Rs,center=mean(Rs),show_estimates=NULL,shape=4)
# Z is computed internally and contains information on depth
plot(Rs,center=mean(Rs),show_estimates=c("proj.mean", "riem.mean"), label_points=sample(LETTERS, 200, replace=TRUE)) + aes(size=Z, alpha=Z) + scale_size(limits=c(-1,1), range=c(0.5,2.5))
}
\references{
  Wickham H (2009). _ggplot2: elegant graphics for data
  analysis_. Springer New York. ISBN 978-0-387-98140-6,
  <URL: http://had.co.nz/ggplot2/book>.
}

