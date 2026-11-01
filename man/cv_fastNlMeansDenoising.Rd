% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fastNlMeansDenoising}
\alias{cv_fastNlMeansDenoising}
\title{Perform image denoising using Non-local Means Denoising algorithm http://www.ipol.im/pub/algo/bcm_non_local_means_denoising/ with several c}
\usage{cv_fastNlMeansDenoising(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Perform image denoising using Non-local Means Denoising algorithm http://www.ipol.im/pub/algo/bcm_non_local_means_denoising/ with several computational optimizations. Noise expected to be a gaussian white noise.}
\details{
This function expected to be applied to grayscale images. For colored images look at fastNlMeansDenoisingColored. Advanced usage of this functions can be manual denoising of colored image in different colorspaces. Such approach is used in fastNlMeansDenoisingColored by converting image to CIELAB colorspace and then separately denoise L and AB components with different h parameter.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void fastNlMeansDenoising(InputArray src, OutputArray dst, float h = 3, int templateWindowSize = 7, int searchWindowSize = 21)

void fastNlMeansDenoising(InputArray src, OutputArray dst, const std::vector<float>& h, int templateWindowSize = 7, int searchWindowSize = 21, int normType = NORM_L2)

}

\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
