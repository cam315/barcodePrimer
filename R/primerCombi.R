primerCombi <- function(primerfile){
  forward = primerfile[, 1]
  reverse = primerfile[, 2]
  comb = expand.grid(forward,reverse)
  names(comb) = c('forward','reverse')
  return(comb)
}
