wrapped <- function(repfile, primerfile, n){
  wcomb = reparser(repfile)
  tcomb = primerCombi(primerfile)
  slimed = slim(tcomb, wcomb)
  result = pickmore(slimed, n)
  return(result)
}
