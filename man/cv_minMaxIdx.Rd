% 手写页面：cv_minMaxIdx
\encoding{UTF-8}
\name{cv_minMaxIdx}
\alias{cv_minMaxIdx}
\title{多维数组的最小/最大值及其位置}
\description{
在任意维数组上求最小值、最大值，并给出它们在原数组里的下标。
}
\usage{
cv_minMaxIdx(src, mask = NULL)
}
\arguments{
\item{src}{输入数组：\code{cvMat}、R 数组或矩阵。}
\item{mask}{可选掩码，与 \code{src} 同尺寸；非零处参与统计。}
}
\value{
长度为 4 的 list：
\itemize{
  \item \code{minVal}、\code{maxVal}：数值。
  \item \code{minIdx}、\code{maxIdx}：整数向量，长度等于 \code{src} 的维数。
    多通道输入时为 \code{NULL}（见 \sQuote{Details}）。
}
}
\details{
与 \code{\link{cv_minMaxLoc}} 的区别：\code{minMaxLoc} 只处理二维，
返回行列；\code{minMaxIdx} 处理任意维，位置按维展开。

多通道输入下 \code{minIdx} / \code{maxIdx} 返回 \code{NULL}。这不是遗漏：
OpenCV 在多通道时明确拒绝给下标（\code{minmax.dispatch.cpp} 里断言
\code{(cn == 1 \&\& ...) || (cn > 1 \&\& _mask.empty() \&\& !minIdx \&\& !maxIdx)}）。
而 R 侧的数组是 \code{(行, 列, 通道)}，一张彩色图映射过来就是三通道，
所以这条是常规路径而不是边角情况。要定位极值就用
\code{which(a == max(a), arr.ind = TRUE)}。

这个函数是手写的，不走生成器。原因是 \code{cv::minMaxIdx} 的
\code{int* minIdx} / \code{int* maxIdx} 出参要求「allocated with a size of
\code{src.dims}」——二维图要 2 个 \code{int}，三维要 3 个。生成器把所有
\code{T*} 出参当标量处理，产出的是 \code{int _o2 = 0} 加 \code{&_o2}，
OpenCV 会往后写 \code{dims} 个 \code{int}，第二个开始就落到栈上相邻的变量里。
读数看着「差不多对」（只读回第一个），实际已经把栈写坏。
}
\seealso{\code{\link{cv_minMaxLoc}}、\code{\link{cv_meanStdDev}}}
\keyword{opencv}
