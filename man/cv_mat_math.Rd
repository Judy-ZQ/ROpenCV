% 手写页面：cv_mat_math
\encoding{UTF-8}
\name{cv_mat_math}
\alias{cv_mat_math}
\title{逐元素一元数学函数}
\description{
对一个 cvMat 的每个元素套一个一元函数，尺寸、通道数、深度都不变。
}
\usage{
cv_mat_math(src, op, param = 0)
}
\arguments{
\item{src}{cvMat 对象。}
\item{op}{运算名。支持 \code{"abs"}、\code{"sign"}、\code{"sqrt"}、
  \code{"floor"}、\code{"ceiling"}、\code{"trunc"}、\code{"round"}、
  \code{"exp"}、\code{"log"}、\code{"log2"}、\code{"log10"}、
  \code{"sin"}、\code{"cos"}、\code{"tan"}、\code{"asin"}、\code{"acos"}、
  \code{"atan"}，以及两个内部用的倒数运算 \code{"recip"}（\code{1/x}）和
  \code{"rdiv"}（\code{param/x}）。}
\item{param}{\code{"rdiv"} 的被除数，其余运算忽略。}
}
\value{
新的 cvMat，类型与 \code{src} 相同。
}
\details{
\strong{为什么需要这个函数：}OpenCV 5 把 \code{sin} / \code{cos} / \code{tan} /
\code{asin} / \code{acos} / \code{atan} / \code{log10} 这一整族一元函数从公开
API 里删掉了——4.x 的 \code{core.hpp} 里有 \code{CV_EXPORTS_W void sin(InputArray,
OutputArray)}，5.0 里整棵头文件树只剩 \code{exp} / \code{log} / \code{sqrt} /
\code{pow} 四个。所以 \code{sin(img)} 在绑定层没有落点，不是生成器漏了，是上游没了。

这里用 \code{std::} 的同名函数补上，语义与 4.x 一致。计算在 \code{CV_64F} 上做，
最后饱和回原深度，代价是一份临时的双精度缓冲。

\strong{整数深度只允许保类型的运算。}\code{abs} / \code{floor} / \code{ceiling} /
\code{trunc} / \code{round} / \code{sign} 在整数上照常可用；\code{sin} / \code{log} /
\code{sqrt} / \code{exp} 要求 \code{CV_32F} 或 \code{CV_64F}，否则报错。
后者如果放行，\code{log(255)} 的 5.55 会被截回 5，这种静默损失比报错难查得多。

\code{"recip"} / \code{"rdiv"} 是给运算符层用的：R 里的 \code{s / x} 不是仿射
变换，走不了 \code{convertTo}，而 \code{cv::divide(double, Mat)} 在整数类型上是
截断除法，和 \code{x / s} 的取整规则对不上。统一在 double 上算完再饱和，
两个方向的行为才一致。

一般不用直接调这个函数，用 \code{\link{cvMat-ops}} 里的 \code{sin(x)}、
\code{log(x)} 等写法即可。
}
\seealso{\code{\link{cvMat-ops}}、\code{\link{cv_mat_convert}}}
\keyword{opencv}
