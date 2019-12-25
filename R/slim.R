slim <- function(x,y){
  ## This is a key function to filter wrong combine from theoretical combination
  if(any(sapply(x,is.factor))) x[] = lapply(x, as.character)
  if(any(sapply(y,is.factor))) y[] = lapply(y, as.character)
  x = x[do.call(order, x),] # This allows to sort whole df based on whole columns, but without specify colunn names
  y = y[do.call(order, y),]
  result = x[!duplicated(rbind(y, x))[nrow(y) + 1:nrow(x)], ]
  return(result)
}
