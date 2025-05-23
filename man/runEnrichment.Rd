% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/runEnrichment.R
\name{runEnrichment}
\alias{runEnrichment}
\title{Run singular enrichment analysis (SEA) for a given list of protein}
\usage{
runEnrichment(protein, os.name, blist = NULL, p.adj.method = "BH")
}
\arguments{
\item{protein}{A character vector with protein UniProt accession codes.}

\item{os.name}{A character vector of length one with exact taxonomy name of
species. If you do not know the the exact taxonomy name of species you are
working with, please read \code{\link{getTaxonomyName}}.}

\item{blist}{The background list will be substituted with the complete set of
UniProt reviewed proteins to facilitate the analysis with a background
list. The default value is NULL. Alternatively, if a vector of UniProt
Accession Codes is provided, it will serve as the background list for the
enrichment analysis.}

\item{p.adj.method}{The adjustment method to correct for multiple testing.
The default value is 'BH'. Run/see \code{\link[stats]{p.adjust.methods}} to
get a list of possible methods.}
}
\value{
The result is a dataframe with the following columns:
\itemize{
\item PTM: Post-translational modification (PTM) keyword
\item FreqinUniprot: The total number of proteins in UniProt with this PTM.
\item FreqinList: The total number of proteins in the given list with this PTM.
\item Sample: Number of proteins in the given list.
\item Population: Total number of proteins in the current version of PEIMAN database with this PTM.
\item pvalue: The p-value obtained from hypergeometric test (enrichment analysis).
\item corrected pvalue: Adjusted p-value to correct for multiple testing.
\item AC: Uniprot accession code (AC) of proteins with each PTM.
}
}
\description{
This function takes proteins with their UniProt accession code,
runs singular enrichment (SEA) analysis, and returns enrichment results.
}
\examples{
enrich1 <- runEnrichment(protein = exmplData1$pl1, os.name = 'Homo sapiens (Human)')
}
