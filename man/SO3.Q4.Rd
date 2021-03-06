\name{SO3.Q4}
\alias{SO3.Q4}
\title{Translate a unit quaternion to a rotation matrix}
\usage{
  SO3.Q4(q)
}
\arguments{
  \item{q}{numeric unit vector, i.e. \eqn{q^\top q=1},
  representing an element in SO(3)}
}
\value{
  vector representation of a rotation matrix in SO(3)
}
\description{
  A function to translate from unit quaternion
  representation to \eqn{SO(3)} representation of a
  rotation matrix.  Wikipedia has a good summary of this
  and other transforms.
}
\examples{
is.SO3(SO3.Q4(c(1/sqrt(2),0,0,1/sqrt(2))))
}
\seealso{
  \code{\link{is.SO3}} can be used to check the return
  vector
}

