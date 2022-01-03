\name{filterPhy}
\alias{filterPhy}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Select or drop taxa or samples from a phyloseq object.
%%  ~~function to do ... ~~
}
\description{
filterPhy allows to select or drop a custom list of taxa or samples form a phyloseq object.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
filterPhy(physeq, x, type = taxa, keep = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{physeq}{a phyloseq objects.}
  \item{x}{a vector containing the list of taxa or samples to be filtered or extracted.}
  \item{type}{either 'taxa' to filter the rows or 'samples' to filter the columns of a phyloseq otu_table(). Default value is 'taxa'.}
  \item{keep}{logical, items in x will be kept if type is TRUE or discarded if type is FALSE. default value is TRUE. }
}
%%     ~~Describe \code{x} here~~
}
}
\details{

%%  ~~ If necessary, more details than the description above ~~
}
\value{
A phyloseq objects with the selected or dropped taxa or samples contained in x.
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
Gian M. N. Benucci
\email{benucci@msu.edu}
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

# generate random taxa/samples to select
otus_to_filter <-
  sample(rownames(otu_16s_prop), 2045)

sample_to_filter <-
  sample(colnames(otu_16s_prop), 32)

# selecting taxa
filterPhy(physeq = propagules_16s,
          x  = otus_to_filter,
          type = "taxa",
          keep = "TRUE")

# selecting samples
filterPhy(physeq = propagules_16s,
          x = sample_to_filter,
          type = "samples",
          keep = "FALSE")
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
