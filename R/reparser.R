reparser <- function(repfile){
  report = repfile
  wrong = report[grep(".*?for.*? with .*?rev", report, ignore.case = TRUE)]
  part1 = gsub("(.*?)\\bwith\\b(.*)", "\\1",wrong)
  part1 = gsub("^\\s+|\\s+$", "", part1)
  part2 = gsub("(.*?)\\bwith\\b(.*)", "\\2",wrong)
  part2 = gsub("^\\s+|\\s+$", "", part2)
  wcomb = data.frame(forward= part1, reverse = part2)
  return(wcomb)
}

