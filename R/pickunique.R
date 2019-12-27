pickunique <- function(combi) {
  ot = list()
  names(combi) = c('forward','reverse')
  ord = names(sort(table(combi$forward)))
  combi = combi[combi$forward %in% ord,]
  eix = c()
  for (i in 1:length(ord)) {
    sub = subset(combi, forward == ord[i]) # get all possible pairs for x[i]
    for (j in sample(unique(sub$reverse))) {
      if (!is.element(j,eix)) yj = j
    }
    eix = c(eix, yj)
    k = sub[sub$reverse == yj,]
    ot[[i]] = k
  }
  out = Reduce(rbind,ot)
  out = na.omit(out)
  out = out[do.call(order, out),]
  rownames(out) = NULL
  return(out)
}
