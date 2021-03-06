#' Print Instance Level Residual Diagnostics
#'
#' Generic function
#'
#' @param x an object with instance level residual diagnostics created with \code{\link{predict_diagnostics}} function
#' @param ... other parameters
#'
#' @export
print.predict_diagnostics <- function(x, ...) {
  if (is.null(x$variables)) {
    res <- x$test
  } else {
    res <- x$cp_new_instance
  }
  print(res)
}
