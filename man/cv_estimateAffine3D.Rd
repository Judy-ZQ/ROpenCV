% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_estimateAffine3D}
\alias{cv_estimateAffine3D}
\title{Computes an optimal affine transformation between two 3D point sets}
\usage{cv_estimateAffine3D(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{int}）挂在 \code{attr(x, "value")} 上。}
\description{Computes an optimal affine transformation between two 3D point sets.}
\details{
It computes

The function estimates an optimal 3D affine transformation between two 3D point sets using the RANSAC algorithm.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

int estimateAffine3D(InputArray src, InputArray dst, OutputArray out, OutputArray inliers, double ransacThreshold = 3, double confidence = 0.99)

cv::Mat estimateAffine3D(InputArray src, InputArray dst, double* scale = nullptr, bool force_rotation = true)

}

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
