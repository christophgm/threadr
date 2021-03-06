#' Function to generate a vector of colours which emulate ggplot2's colours. 
#' 
#' @param n Number of colours. 
#'  
#' @seealso \url{http://stackoverflow.com/questions/8197559/emulate-ggplot2-default-color-palette}
#' 
#' @author John Colby
#' 
#' @return Vector of hex colours. 
#'
#' @export
ggplot2_colours <- function(n = 2) {
  
  hues <- seq(15, 375, length = n + 1)
  grDevices::hcl(h = hues, l = 65, c = 100)[1:n]
  
}
