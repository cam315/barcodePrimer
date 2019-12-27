slim <- function(x,y){
  if(any(sapply(x,is.factor))) x[] = lapply(x, as.character)
  if(any(sapply(y,is.factor))) y[] = lapply(y, as.character)
  x = x[do.call(order, x),] 
  y = y[do.call(order, y),]
  result = x[!duplicated(rbind(y, x))[nrow(y) + 1:nrow(x)], ]
  return(result)
}
