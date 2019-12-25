\name{primerCombi}
\alias{primerCombi}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
generate the theoretical combinations of barcoded primers
}
\description{
This function will generate all possible combinations of barcoded primer sets.
}
\usage{
primerCombi(primerfile)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{primerfile}{
arguments to specify the primer identifier file.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
The file will generate a data frame of two columns, each row gives a primer combination.
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

data(PrimerLabels)
tcomb = primerCombi(PrimerLabels)
dim(tcomb)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ datasets }% use one of  RShowDoc("KEYWORDS")

