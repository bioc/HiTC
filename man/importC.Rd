\name{importC}
\Rdversion{1.1}
\alias{importC}
\title{Import high-htroughput 'C' data}
\description{
  Import 5C or Hi-C data from csv file
}

\usage{importC(con, all.pairwise=TRUE)}

\arguments{
  \item{con}{input csv file. See details}
  \item{all.pairwise}{logical; generate all pairwise chromosomal interaction maps, i.e chr1-chr2, chr2-chr1}
}
\details{
  This function import high-throughput data from a csv file.
  The expected format is the following :\cr
  chrA,startA,endA,nameA,strandA,chrB,startB,endB,nameB,strandB,countAB
}

\value{
  A list of \code{HTCexp} object(s)
}
\author{N. Servant}
\seealso{\code{\link{exportC}},\code{\link{import.my5C}}, \code{\link{HTCexp-class}}}
\examples{
data(Nora_5C)

## Data binning
## E14.bin<-binningC(E14$chrXchrX)

## Export the new intervals definition
## exportC(E14.bin, file="E14.csv")

##Import
## importC("E14.csv")
}
\keyword{IO}