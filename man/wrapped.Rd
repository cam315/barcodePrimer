\name{wrapped}
\alias{wrapped}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A wrapped function to directly generate primer sets according to input files
}
\description{
This function will generate primer combinations based on the files of primer check report by Multiple Primer Analyzer in Thermo Fisher Scientific, primer list and the specified number of primer sets
}
\usage{
wrapped(repfile, primerfile, n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{repfile}{
Arguments to specify the file name of primer check result from Multiple Primer Analyzer in Thermo Fisher Scientific. The user can either specify the file handle (name) or variable containing the file.
}
  \item{primerfile}{
Arguments to specify the two-column file of primer identifiers. This file is requested to follow the format of primeExample.
}
  \item{n}{
Numeric, integer to specify the number of primer sets you expected. For technical reasons, n should be less than 2 times of the number of unique pairs of initial barcoded primers.
}
}
\details{

}
\value{
The function will return a data frame of two columns. The 1st and 2nd columns show the identifiers of forward primer and reverse primer, respectively. Each row is a combination of primer set which has passed the primer check process, and (potentially/most probably) work in PCR amplication.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Sizhong Yang <yanglzu@163.com>
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

data(report)
data(PrimerLabels)

result <- wrapped(repfile = report, primerfile = PrimerLabels, n=120)

dim(result)
head(result)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }% use one of  RShowDoc("KEYWORDS")


