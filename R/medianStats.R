#' Median Value
#'
#' Compute the sample median of left- or multiply-censored or water-quality data.
#'
#' @aliases median.lcens median.mcens median.qw
#' @param x the censored data object.
#' @param na.rm remove missing values before computation?
#' @return A vector of length one representing the sample median.
#' @note The median is computed using the flipped Kaplan-Meier method described
#'in Helsel (2012).
#' @seealso \code{\link{censQuantile}}
#' @references Helsel, D.R. 2012, Statistics for censored environmental data 
#'using Minitab and R: New York, Wiley, 324 p.\cr
#' @keywords censored univariate
#' @examples
#'median(as.lcens(1:4, 2))
#'
#' @importFrom stats median
#' @rdname medianStats
#' @export
#' @method median lcens
median.lcens <- function(x, na.rm=FALSE)
  as.vector(quantile(x, probs=0.50, na.rm=na.rm, method="flipped K-M"))

#' @rdname medianStats
#' @export
#' @method median mcens
median.mcens <- function(x, na.rm=FALSE)
  as.vector(quantile(x, probs=0.50, na.rm=na.rm, method="flipped K-M"))

#' @rdname medianStats
#' @export
#' @method median qw
median.qw <- function(x, na.rm=FALSE)
  as.vector(quantile(as.mcens(x), probs=0.50, na.rm=na.rm, method="flipped K-M"))
