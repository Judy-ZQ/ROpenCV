% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_findTransformECC}
\alias{cv_findTransformECC}
\title{Finds the geometric transform (warp) between two images in terms of the ECC criterion [80] }
\usage{cv_findTransformECC(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{double}）挂在 \code{attr(x, "value")} 上。}
\description{Finds the geometric transform (warp) between two images in terms of the ECC criterion [80] .}
\details{
The function estimates the optimum transformation (warpMatrix) with respect to ECC criterion ([80]), that is

where

(the equation holds with homogeneous coordinates for homography). It returns the final enhanced correlation coefficient, that is the correlation coefficient between the template image and the final warped input image. When a matrix is given with motionType =0, 1 or 2, the third row is ignored.

Unlike findHomography and estimateRigidTransform, the function findTransformECC implements an area-based alignment that builds on intensity similarities. In essence, the function updates the initial transformation that roughly aligns the images. If this information is missing, the identity warp (unity matrix) is used as an initialization. Note that if images undergo strong displacements/rotations, an initial transformation that roughly aligns the images is necessary (e.g., a simple euclidean/similarity transform that allows for the images showing the same image content approximately). Use inverse warping in the second image to take an image close to the first one, i.e. use the flag WARP_INVERSE_MAP with warpAffine or warpPerspective. See also the OpenCV sample image_alignment.cpp that demonstrates the use of the function. Note that the function throws an exception if algorithm does not converges.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

double findTransformECC(InputArray templateImage, InputArray inputImage, InputOutputArray warpMatrix, int motionType, TermCriteria criteria, InputArray inputMask, int gaussFiltSize)

double findTransformECC(InputArray templateImage, InputArray inputImage, InputOutputArray warpMatrix, int motionType = MOTION_AFFINE, TermCriteria criteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 50, 0.001), InputArray inputMask = noArray())

}

\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
}
\seealso{\code{\link{cv_computeECC}}、\code{\link{cv_estimateAffine2D}}、\code{\link{cv_estimateAffinePartial2D}}、\code{\link{cv_findHomography}}}
\keyword{opencv}
