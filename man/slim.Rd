\name{slim}
\alias{slim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
filter the primer set combinations.
}
\description{
function to remove primer combinations from the theoretical combinations.
}
\usage{
slim(x, y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
Character, the file of all theoretical combination of primer sets.
}
  \item{y}{
Character, the file of the primer combinations with theoretical dimers.
}
}
\details{
In this function, the primer combinations with cross primer dimer with be removed from the theretical combinations of primer set.
}
\value{
This function will return a two-column data frame, giving the valid primer combinations.

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

## generate all possible combinations for the primers

tcomb = primerCombi(PrimerLabels)

## find out all cross dimer combinations

wcomb = reparser(repfile = report)

## get primer combanation by removing the cross dimers

vcomb = slim(x = tcomb, y = wcomb)
dim(vcomb)
head(vcomb)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }% use one of  RShowDoc("KEYWORDS")


