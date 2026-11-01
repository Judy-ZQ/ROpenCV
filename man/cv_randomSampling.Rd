% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_randomSampling}
\alias{cv_randomSampling}
\title{Point cloud sampling by randomly select points}
\usage{cv_randomSampling(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Point cloud sampling by randomly select points.}
\details{
Use cv::randShuffle to shuffle the point index list, then take the points corresponding to the front part of the list.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void randomSampling(OutputArray sampled_pts, InputArray input_pts, int sampled_pts_size, RNG * rng = nullptr)

void randomSampling(OutputArray sampled_pts, InputArray input_pts, float sampled_scale, RNG * rng = nullptr)

}

\strong{C++ 头文件：}\code{#include <opencv2/3d/ptcloud.hpp>}
}
\keyword{opencv}
