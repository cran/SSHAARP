% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PALM.R
\name{PALM}
\alias{PALM}
\title{Population Allele Locating Mapmaker}
\usage{
PALM(
  motif,
  filename = SSHAARP::solberg_dataset,
  direct = getwd(),
  color = TRUE,
  filterMigrant = TRUE
)
}
\arguments{
\item{motif}{An amino acid motif in the following format: Locus*##$~##$~##$, where ## identifies a peptide position, and $ identifies an amino acid residue. Motifs can include any number of amino acids.}

\item{filename}{The filename of the local copy of the Solberg dataset - the defaulted filename is the solberg_dataset in the SSHAARP package.}

\item{direct}{The directory into which the map produced is written. The default directory is the user's working directory.}

\item{color}{A logical parameter that identifies if the heat maps should be made in color (TRUE) or gray scale (FALSE). The default option is TRUE.}

\item{filterMigrant}{A logical parameter that determines if admixed populations (OTH) and migrant populations (i.e. any complexities with the 'mig') should be excluded from the dataset. The default option is TRUE.}
}
\value{
The specified motif and the directory into which the heatmap was written are returned in an invisible character vector. If the user enters a motif that is not found in the Solberg dataset, or that does not exist, a warning message is returned. If an incorrectly formatted motif is entered, or the user does not have the GMT software installed on their operating system, a vector with a warning message is returned. The produced heatmap is written to the user's specified directory (default is user's working directory) as a .jpg file, where the filename is "'motif'.jpg".
}
\description{
Produces a frequency heatmap for a specified amino-acid motif, based on the allele frequency data in the Solberg dataset.
}
\note{
The produced frequency heatmap is generated by using the Generic Mapping Tools (GMT) R Package, which is an interface between R and the GMT Map-Making software.

The Solberg dataset is the tab-delimited ‘1-locus-alleles.dat’ text file in the results.zip archive at http://pypop.org/popdata/.

The Solberg dataset is also prepackaged into SSHAARP as 'solberg_dataset'.

While the map legend identifies the highest frequency value, values in this range may not be represented on the map due to frequency averaging over neighboring populations.
}
\examples{
#example to produce a color frequency heat map where migrant populations are filtered out
PALM("DRB1*26F~28E~30Y",filename = solberg_dataset[85:100,], filterMigrant=TRUE)
#example to produce a greyscale heat map where migrant populations are not filtered out
PALM("DRB1*26F~28E~30Y", filename = solberg_dataset[85:100,], color=FALSE, filterMigrant=FALSE)

}
\references{
Solberg et.al. (2008) <doi: 10.1016/j.humimm.2008.05.001>
}
