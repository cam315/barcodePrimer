primerCombi <- function(primerfile){
  ## df must contains two columns with colnames of Forward, reverse, or for-rev,
  # forward = primerfile[, grep("for",colnames(primerfile), ignore.case = TRUE)]
  # reverse = primerfile[, grep("rev",colnames(primerfile), ignore.case = TRUE)]
  forward = primerfile[, 1]
  reverse = primerfile[, 2]
  comb = expand.grid(forward,reverse)
  names(comb) = c('forward','reverse')
  return(comb)
}
