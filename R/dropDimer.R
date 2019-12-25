dropDimer <- function(report, ndimer){
  end = grep('Cross Primer', report)
  text = report[1:(end-1)]
    if (grepl('3|three',ndimer)){
      pattern = '^3 dimers'
    } else if (grepl('2|two',ndimer)){
      pattern = '^3|^2 dimers'
    } else {
      message("Not valid parameter for ndimer, skip checking single primer")
    }
    rms = text[grepl(pattern,text)]
    rms = gsub(".*?\\:\\s(.*)","\\1", rms)
    rms = unique(rms)
    return(rms)
}
