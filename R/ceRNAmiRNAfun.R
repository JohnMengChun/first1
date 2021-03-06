#' ceRNAmiRNAfun: An analysis R package to find out miRNA and ceRNA triplets.
#'
#' The ceRNAmiRNAfun package is used to identify miRNA and ceRNA triplets..
#' The ceRNAmiRNAfun package provides a whole workflow, which contains important
#' functions: `sliding_windows`, `segcluster_peakmerge`, `miRhubgene`,
#' `miRhubgeneplot`
#'
#' @section sliding_windows: The function will calculate correlation coefficients 
#'   within each window, a sliding mover that contains putative ceRNA triplets 
#'   composed of a miRNA and several genes.
#'
#' @section segcluster_peakmerge: cluster noisy correlation into neighboring 
#'   regions of distinct correlation levels. And then do the peak merging by 
#'   considering low probability of multi-peaks occurring. Also, the segments 
#'   with few samples detected by circular binary segmentation which are less 
#'   than three and make no sense to the interactions would merge to a single 
#'   peak. 
#'
#' @section miRhubgene: The miRhubgene function is used to sort the 
#'   information of miRNA and ceRNA to find out triplets.
#'   
#'
#' @section miRhubgeneplot: The miRhubgeneplot function is used to plot the
#'   top miRNA to see its expression situation.
#'
#' @docType package
#' @name ceRNAmiRNAfun
NULL