% 手写页面：cv_mat_convert
\encoding{UTF-8}
\name{cv_mat_convert}
\alias{cv_mat_convert}
\title{转换 cvMat 的类型或数值范围}
\description{
对应 \code{cv::Mat::convertTo}：\code{dst = src * alpha + beta}，结果按
\code{rtype} 饱和。\code{rtype = -1} 表示保持原类型，此时就是 OpenCV 的
\code{Mat::operator*=(double)}。
}
\usage{
cv_mat_convert(src, rtype = -1L, alpha = 1, beta = 0)
}
\arguments{
\item{src}{cvMat 对象。}
\item{rtype}{目标类型码，例如 \code{CV_32F}、\code{CV_64F}；\code{-1} 表示不变。}
\item{alpha}{乘数。}
\item{beta}{加数。}
}
\value{
新的 cvMat（不修改 \code{src}）。
}
\details{
\strong{这是整数与浮点之间唯一的显式通道。}cvMat 的运算符刻意不做隐式类型提升，
所以 \code{img8u + 10} 会饱和到 255 而不是得到 260，\code{log(img8u)} 会直接报错。
要按 R 的数值语义算，先转一次：

\preformatted{
x <- cv_mat_convert(img8u, CV_64F)   # 8 位 -> 双精度
y <- x * 2.5 - 1                     # 此时是真算术，不会饱和
back <- cv_mat_convert(y, CV_8U)     # 转回去（这一步会饱和）
}

\code{rtype} 只给深度、不给通道数时，OpenCV 会沿用原通道数，
所以 \code{CV_32F} 作用在 \code{CV_8UC3} 上得到 \code{CV_32FC3}。

饱和规则与 OpenCV 其它地方一致：超出范围的值截到类型上下界，
浮点转整数用四舍六入五成双（\code{saturate_cast} 的行为）。
}
\seealso{\code{\link{cvMat-ops}}、\code{\link{Mat}}}
\keyword{opencv}
