% 手写页面：cv_mat_roi
\encoding{UTF-8}
\name{cv_mat_roi}
\alias{cv_mat_roi}
\alias{probe_mat_roi}
\title{取图像的感兴趣区域（共享像素数据）}
\description{
对应 \code{cv::Mat(const Mat &, const Rect &)}：返回一个共享像素缓冲的
子矩阵，\strong{不拷贝数据}。对返回值做原地修改会反映到原图上。
}
\usage{
cv_mat_roi(m, rect)
}
\arguments{
\item{m}{cvMat 对象。}
\item{rect}{长度 4 的数值向量 \code{c(x, y, w, h)}：左上角坐标与宽高，
按 OpenCV 的像素坐标系（0 起算，原点在左上角）。注意这里的 x/y 是 0 起算的，
和 \code{img[i, j]} 的 1 起算不同——它对应的是 C++ 的 \code{cv::Rect}。}
}
\value{
共享数据的 cvMat，尺寸为 \code{h x w x channels}。
}
\details{
\strong{返回的是矩阵头，不是拷贝。}OpenCV 的 Mat 由「矩阵头 + 数据指针」两部分
组成，\code{cv_mat_roi()} 只复制了头，像素缓冲还是原图那一块，引用计数加一。
所以下面两件事是同一个来源：

\preformatted{
roi <- cv_mat_roi(img, c(120, 30, 260, 70))
cv_rectangle(roi, c(110L, 25L), c(150L, 45L), c(0, 0, 255), -1L)
# img 上 (230, 55) 起的那块区域也跟着变红了
}

需要一块独立的区域时，加一步 \code{\link{cv_copyTo}}：

\preformatted{
copy <- cv_copyTo(cv_mat_roi(img, c(120, 30, 260, 70)))   # 这一步才分配新内存
}

\strong{为什么 \code{[} 不做成视图。}\code{img[i, j]} 的读路径走
\code{\link{as_array}}，语义是「取出来一份 R 数组」。如果把它改成视图，
\code{a <- img[1:10, 1:10]} 会静默变成可写别名，和 R 的数组直觉相反——
用户改了 \code{a} 却发现原图变了，这种错极难定位。写路径（\code{img[i, j] <- v}）
本来就是原地写，已经够用。要视图就显式写 \code{cv_mat_roi()}。

越界、宽高非正都会报错，不会静默切一块出来。
}
\seealso{\code{\link{Mat}}、\code{\link{cv_copyTo}}、\code{\link{as_array}}}
\keyword{opencv}
