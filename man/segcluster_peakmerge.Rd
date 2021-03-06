% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/segcluster_peakmerge.R
\name{segcluster_peakmerge}
\alias{segcluster_peakmerge}
\title{do the segment clustering and peak merging to get specific miRNA expression levels of ceRNA-ceRNA interactions.}
\usage{
segcluster_peakmerge(cor_shreshold_peak, dictionary, miRNA_total,
  mirna_sam, gene_sam, Realdata)
}
\arguments{
\item{cor_shreshold_peak}{the shreshold of correlation of coefficient between two genes.}

\item{dictionary}{miRNA and the corresponding genes' combinations in list format, with miRNA name in the first column and the corresponding genes in the second column}

\item{miRNA_total}{miRNA list in a vector format, the order of miRNA_total should be the same as the first column of dictionary}

\item{mirna_sam}{expression data of miRNA in dataframe format, with miRNA's name in rows and sample name in columns}

\item{gene_sam}{expression data of gene in dataframe format, with gene's name in rows and sample name in columns}

\item{Realdata}{Realdata for input format.}
}
\value{
list format with miRNAs,candidate ceRNA-ceRNA pirs,peak locations, and the number of samples occuring ceRNA-ceRNA interactions.
}
\description{
The function will do segmentation with the method called "circular binary segmentation" to cluster noisy correlation into neighboring regions of distinct correlation levels. And then do the peak merging by considering low probability of multi-peaks occurring. Triplets with more than double peaks of segments if the distance of two peaks were smaller than a fixed value and there were significantly different between the average correlation of each peak would be merged until single or double peaks. Also, the segments with few samples detected by circular binary segmentation which are less than three and make no sense to the interactions would merge to a single peak. The sampling correlation coefficients were compared to that from the whole samples after being normalized by using Fisher transformation. mRNA pairs with peaks significantly different from the threshold and the segment would be reported as the candidate ceRNAs.
}
\examples{
## Use the internal dataset
data("dictionary", package = "ceRNAmiRNAfun", envir = environment())
data("miRNA_total", package = "ceRNAmiRNAfun", envir = environment())
data("mirna_sam", package = "ceRNAmiRNAfun", envir = environment())
data("gene_sam", package = "ceRNAmiRNAfun", envir = environment())


## evaluate correlation coefficients between two genes.
segcluster_peakmerge(cor_shreshold_peak=0.85,dictionary,miRNA_total,mirna_sam,gene_sam,Realdata)


}
