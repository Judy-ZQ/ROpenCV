% 手写页面：Mat 构造器
\encoding{UTF-8}
\name{Mat}
\alias{Mat}
\alias{print.cvMat}
\alias{dim.cvMat}
\alias{length.cvMat}
\alias{[.cvMat}
\alias{[<-.cvMat}
\alias{as.array.cvMat}
\title{构造 OpenCV 矩阵}
\usage{
Mat(rows, cols, type, value = 0)
}
\arguments{
\item{rows}{行数；或者直接给一个 R 矩阵 / 三维数组 / raw 向量，此时其余参数忽略。}
\item{cols}{列数。}
\item{type}{类型码，例如 \code{CV_8UC1}、\code{CV_8UC3}、\code{CV_32FC1}。}
\item{value}{初值，标量或长度 1--4 的向量。}
}
\value{\code{cvMat} 对象。}
\description{
四种用法：
\preformatted{
Mat(m)                      # 从 R 的矩阵 / 三维数组 / raw 向量拷贝
Mat(rows, cols, type)       # 按尺寸和类型码新建，初值 0
Mat(rows, cols, type, val)  # 同上，用标量填充
Mat()                       # 空矩阵，可交给需要预分配的输出参数
}
}
\details{
类型码直接用包里导出的常量。二维 R 矩阵按单通道处理，三维数组 \code{(h, w, c)}
按 OpenCV 的通道交错布局处理。

\code{cvMat} 是零拷贝视图：它持有原生 \code{cv::Mat} 的引用，用
\code{as_array()} 取回 R 数组时按 dtype 映射（\code{CV_8U} -> \code{raw}，
\code{CV_32S} -> \code{integer}，浮点 -> \code{double}）。

\strong{反方向的深度是按 R 的类型定的，不是按你想要的定的。}
\code{Mat(matrix(1:4, 2, 2))} 是 \code{CV_32S}（integer），
\code{Mat(matrix(c(1, 2), 1, 2))} 是 \code{CV_64F}（double）。
有些 API 对深度有硬要求，最典型的是点集——\code{cv_getPerspectiveTransform()}、
\code{cv_findHomography()} 这些要 \code{CV_32F} 的 4 个点，喂 double 矩阵得到的是：

\preformatted{
getPerspectiveTransform: ... error: (-215:Assertion failed)
src.checkVector(2, CV_32F) == 4 && dst.checkVector(2, CV_32F) == 4 ...
}

\code{checkVector(2, CV_32F)} 说的就是这个。转一次就行：

\preformatted{
cv_getPerspectiveTransform(cv_mat_convert(Mat(src), CV_32F),
                           cv_mat_convert(Mat(dst), CV_32F))
}

这是 OpenCV 自己的约束，不是绑定的取舍——Python 那边传 float64 也一样报。
}
\seealso{\code{\link{mat_info}}、\code{\link{as_array}}、\code{\link{is_cvMat}}}
\keyword{opencv}
