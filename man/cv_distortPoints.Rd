% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_distortPoints}
\alias{cv_distortPoints}
\title{Distorts 2D points using fisheye model}
\usage{cv_distortPoints(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Distorts 2D points using fisheye model.}
\details{
Note that the function assumes the camera intrinsic matrix of the undistorted points to be identity. This means if you want to distort image points you have to multiply them with or use another function overload.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void distortPoints(InputArray undistorted, OutputArray distorted, InputArray K, InputArray D, double alpha = 0)

void distortPoints(InputArray undistorted, OutputArray distorted, InputArray Kundistorted, InputArray K, InputArray D, double alpha = 0)

}
}
\keyword{opencv}
