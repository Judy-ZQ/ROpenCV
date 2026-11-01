% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_bm3dDenoising}
\alias{cv_bm3dDenoising}
\title{Performs image denoising using the Block-Matching and 3D-filtering algorithm http://www.cs.tut.fi/~foi/GCF-BM3D/BM3D_TIP_2007.pdf with seve}
\usage{cv_bm3dDenoising(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs image denoising using the Block-Matching and 3D-filtering algorithm http://www.cs.tut.fi/~foi/GCF-BM3D/BM3D_TIP_2007.pdf with several computational optimizations. Noise expected to be a gaussian white noise.}
\details{
This function expected to be applied to grayscale images. Advanced usage of this function can be manual denoising of colored image in different colorspaces.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void bm3dDenoising(InputArray src, InputOutputArray dstStep1, OutputArray dstStep2, float h = 1, int templateWindowSize = 4, int searchWindowSize = 16, int blockMatchingStep1 = 2500, int blockMatchingStep2 = 400, int groupSize = 8, int slidingStep = 1, float beta = 2.0f, int normType = cv::NORM_L2, int step = cv::xphoto::BM3D_STEPALL, int transformType = cv::xphoto::HAAR)

void bm3dDenoising(InputArray src, OutputArray dst, float h = 1, int templateWindowSize = 4, int searchWindowSize = 16, int blockMatchingStep1 = 2500, int blockMatchingStep2 = 400, int groupSize = 8, int slidingStep = 1, float beta = 2.0f, int normType = cv::NORM_L2, int step = cv::xphoto::BM3D_STEPALL, int transformType = cv::xphoto::HAAR)

}

\strong{C++ 头文件：}\code{#include <opencv2/xphoto/bm3d_image_denoising.hpp>}
}
\keyword{opencv}
