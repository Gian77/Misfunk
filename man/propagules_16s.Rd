\name{propagules_16s}
\alias{propagules_16s}
\docType{data}
\title{(Data) 16S rRNA communities from dried soil archives
%%   ~~ data name/kind ... ~~
}
\description{
Published in 2020 in PlosONE, with this study investigated if microbial communities could be reconstructed from archived soil DNA using high-throughput sequencing of the 16S rRNA gene. Originated by soil scientists, soil archive resources could be of great value for microbial ecologists and used to reconstructing land-use history, forensic science, and biosphere modelling. The dataset is composed of 33 soil samples form deciduous forest (DF) and poplar (PS) habitats, plus 3 negative controls (no DNA added). A total of 3 replicates for each site per year were analysed in a 20 year storage time.
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("propagules_16s")}
\format{
  The format is formal class 'phyloseq' [package "phyloseq"]
}
\references{
Benucci GMN, Rennick B, Bonito G (2020) Patient propagules: Do soil archives preserve the legacy of fungal and prokaryotic communities? PLoS ONE 15(8): e0237368.

The primary article can be viewed/downloaded at:
\url{https://doi.org/10.1371/journal.pone.0237368}
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(propagules_16s)
str(propagules_16s)
}
\keyword{datasets}
