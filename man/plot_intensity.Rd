% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_intensity.R
\name{plot_intensity}
\alias{plot_intensity}
\title{plot out the NGS plr or array lrr.}
\usage{
plot_intensity(intensity, chr = numeric())
}
\arguments{
\item{intensity}{Specify the ngs_plr object generated by CODEX or SNP array.}

\item{chr}{Specify the chromosome you want to generate. Must be of int from 1-22. Type integer}
}
\value{
void
}
\description{
For quality checking purpose during intermediate steps
}
\examples{
chr <- 22
plot_intensity(ngs_plr,chr)
plot_intensity(snp_lrr,chr)
}
