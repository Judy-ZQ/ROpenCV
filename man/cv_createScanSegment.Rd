% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createScanSegment}
\alias{cv_createScanSegment}
\title{Initializes a ScanSegment object}
\usage{cv_createScanSegment(image_width, image_height, num_superpixels, slices = 8,
    merge_small = TRUE)}
\arguments{
\item{image_width}{Image width.}
\item{image_height}{Image height.}
\item{num_superpixels}{Desired number of superpixels. Note that the actual number may be smaller due to restrictions (depending on the image size). Use getNumberOfSuperpixels to get the actual number.}
\item{slices}{Number of processing threads for parallelisation. Setting -1 uses the maximum number of threads. In practice, four threads is enough for smaller images and eight threads for larger ones.}
\item{merge_small}{merge small segments to give the desired number of superpixels. Processing is much faster without merging, but many small segments will be left in the image.}
}
\value{\code{cv::Ptr<ScanSegment>} 对应的 R 对象。}
\description{Initializes a ScanSegment object.}
\details{
The function initializes a ScanSegment object for the input image. It stores the parameters of the image: image_width and image_height. It also sets the parameters of the F-DBSCAN superpixel algorithm, which are: num_superpixels, threads, and merge_small.
}
\keyword{opencv}
