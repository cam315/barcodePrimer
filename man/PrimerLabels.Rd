\name{PrimerLabels}
\alias{PrimerLabels}
\docType{data}
\title{
Example data showing the valid primer lable table
}
\description{
A data frame containing 2 columns of primer identifiers (Note, not the sequence of barcode or barcoded primer itself). The first and second columns represent forward and reverse primers, respectively. The forward primer labels must end with 'forward' or 'for' (case insensitive), connected other info with '_' or '-', e.g. 'Uni515-10-For'. The reverse follows similar format, ending with 'reverse' or 'rev'.
}
\usage{data("PrimerLabels")}
\format{
  A data frame with 2 columns and 96 rows, each row represent the identifier of barcoded primer.
  \describe{
    \item{\code{Forward}}{a character vector}
    \item{\code{Reverse}}{a character vector}
  }
}
\details{
The identifiers in this example come from a custom dataset, amongst 'Uni515' represent universal bacterial primer starting at position 515, and 'Uni806' denotes that the universal bacterial primer with position 806.
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(PrimerLabels)
names(PrimerLabels)
dim(PrimerLabels)
}
\keyword{datasets}
