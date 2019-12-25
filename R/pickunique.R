pickunique <- function(combi) {
  ## note data is dataframe of two columns, 1st col is forward primer and 2nd is reverse primer
  ot = list()
  names(combi) = c('forward','reverse')
  ## make an (increasing) order based on forward primer
  ord = names(sort(table(combi$forward)))
  ## then reorder the data table
  combi = combi[combi$forward %in% ord,]
  eix = c()
  for (i in 1:length(ord)) {
    sub = subset(combi, forward == ord[i]) # get all possible pairs for x[i]
    for (j in sample(unique(sub$reverse))) {
      if (!is.element(j,eix)) yj = j
      # the for loop by j will pick the last valid j
    }
    eix = c(eix, yj)
    k = sub[sub$reverse == yj,]
    ot[[i]] = k
  }
  out = Reduce(rbind,ot)
  out = na.omit(out) ## remove possible NA row if some primers are removed
  out = out[do.call(order, out),]
  rownames(out) = NULL
  return(out)
}
