pickmore <- function(combi, n){
  sk = lapply(1:2, function(i) pickunique(combi))
  m = sapply(sk, nrow)[1]
  res =  sk[[2]][sample(m,ceiling((n-m)*1.1)),]
  result =  rbind(sk[[1]], res)
  result =  result[!duplicated(result),]
  result =  result[sample(nrow(result), n),]
  result = result[do.call(order, result),]
  result = na.omit(result)
  rownames(result) = NULL
  return(result)
}
