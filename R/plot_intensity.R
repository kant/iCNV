#' plot out the NGS plr or array lrr.
#' 
#' For quality checking purpose during intermediate steps
#' 
#' @importFrom grDevices colorRampPalette dev.off pdf
#' @importFrom graphics axis grid legend par plot points
#' @importFrom stats aggregate dnorm dunif kmeans sd
#' @importFrom utils read.table write.table
#' @param intensity Specify the ngs_plr object generated by CODEX or SNP array.
#' @param chr Specify the chromosome you want to generate. Must be of int from 1-22. Type integer
#' @return void
#' @examples
#' chr <- 22
#' plot_intensity(ngs_plr,chr)
#' plot_intensity(snp_lrr,chr)
#' @export
plot_intensity <- function(intensity,chr=numeric()){
	stopifnot(is.numeric(chr))
  	intensity <- do.call(cbind,intensity)
  	l <- 4
  	toplot <- (intensity-rowMeans(intensity,na.rm=TRUE))/apply(intensity,1,function(x){sd(x,na.rm=TRUE)})
  	fields::image.plot(x=seq_len(nrow(toplot)),y=seq_len(ncol(toplot)),
    	z=pmin(pmax(toplot,-l),l),zlim=c(-l,l),
    	xlab=paste0('chr',chr),ylab='samples')
}
