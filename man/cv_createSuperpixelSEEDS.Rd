% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createSuperpixelSEEDS}
\alias{cv_createSuperpixelSEEDS}
\title{Initializes a SuperpixelSEEDS object}
\usage{cv_createSuperpixelSEEDS(image_width, image_height, image_channels,
    num_superpixels, num_levels, prior = 2, histogram_bins = 5,
    double_step = FALSE)}
\arguments{
\item{image_width}{Image width.}
\item{image_height}{Image height.}
\item{image_channels}{Number of channels of the image.}
\item{num_superpixels}{Desired number of superpixels. Note that the actual number may be smaller due to restrictions (depending on the image size and num_levels). Use getNumberOfSuperpixels to get the actual number.}
\item{num_levels}{Number of block levels. The more levels, the more accurate is the segmentation, but needs more memory and CPU time.}
\item{prior}{enable 3x3 shape smoothing term if >0. A larger value leads to smoother shapes. prior must be in the range [0, 5].}
\item{histogram_bins}{Number of histogram bins.}
\item{double_step}{If true, iterate each block level twice for higher accuracy.}
}
\value{\code{Ptr<SuperpixelSEEDS>} 对应的 R 对象。}
\description{Initializes a SuperpixelSEEDS object.}
\details{
The function initializes a SuperpixelSEEDS object for the input image. It stores the parameters of the image: image_width, image_height and image_channels. It also sets the parameters of the SEEDS superpixel algorithm, which are: num_superpixels, num_levels, use_prior, histogram_bins and double_step.

The number of levels in num_levels defines the amount of block levels that the algorithm use in the optimization. The initialization is a grid, in which the superpixels are equally distributed through the width and the height of the image. The larger blocks correspond to the superpixel size, and the levels with smaller blocks are formed by dividing the larger blocks into 2 x 2 blocks of pixels, recursively until the smaller block level. An example of initialization of 4 block levels is illustrated in the following figure.

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/seeds.hpp>}
}
\keyword{opencv}
