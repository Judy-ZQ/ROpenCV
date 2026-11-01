% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_farthestPointSampling}
\alias{cv_farthestPointSampling}
\title{Point cloud sampling by Farthest Point Sampling(FPS)}
\usage{cv_farthestPointSampling(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{int}）挂在 \code{attr(x, "value")} 上。}
\description{Point cloud sampling by Farthest Point Sampling(FPS).}
\details{
FPS Algorithm:

\itemize{
\item Input: Point cloud C, sampled_pts_size, dist_lower_limit
\item Initialize: Set sampled point cloud S to the empty set
\item Step: Randomly take a seed point from C and take it from C to S;
\item Find a point in C that is the farthest away from S and take it from C to S; (The distance from point to set S is the smallest distance from point to all points in S)
\item Repeat step 2 until the farthest distance of the point in C from S is less than dist_lower_limit, or the size of S is equal to sampled_pts_size.
\item Output: Sampled point cloud S
}

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

int farthestPointSampling(OutputArray sampled_point_flags, InputArray input_pts, int sampled_pts_size, float dist_lower_limit = 0, RNG * rng = nullptr)

int farthestPointSampling(OutputArray sampled_point_flags, InputArray input_pts, float sampled_scale, float dist_lower_limit = 0, RNG * rng = nullptr)

}

\strong{C++ 头文件：}\code{#include <opencv2/3d/ptcloud.hpp>}
}
\keyword{opencv}
