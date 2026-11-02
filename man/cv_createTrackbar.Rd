% 手写页面：cv_createTrackbar
\encoding{UTF-8}
\name{cv_createTrackbar}
\alias{cv_createTrackbar}
\title{在窗口上挂一个滑动条}
\description{
给一个已经存在的窗口加一条原生滑动条，位置用 \code{0..count} 的整数表示。
回调可以不给（轮询位置），也可以给一个 R 函数（拖动时直接回调）。
}
\usage{
cv_createTrackbar(trackbarname, winname, value = 0L, count = 100L,
                  onChange = NULL)
}
\arguments{
\item{trackbarname}{滑动条名字，读位置时用同一个名字。}
\item{winname}{所在的窗口名，窗口要先用 \code{\link{cv_namedWindow}} 建好。}
\item{value}{初始位置。}
\item{count}{最大值；位置范围是 \code{0..count}。}
\item{onChange}{函数或 \code{NULL}。给函数时，拖动滑动条会直接调用它，
  形参是一个整数位置；给 \code{NULL} 时用 \code{\link{cv_getTrackbarPos}} 轮询。}
}
\value{
整数，OpenCV 的返回值（0 表示成功）。
}
\details{
\strong{两种用法。}不带回调时，R 侧自己起循环读位置：

\preformatted{
cv_namedWindow("blend")
cv_createTrackbar("alpha", "blend", 50L, 100L)
repeat {
  a <- cv_getTrackbarPos("alpha", "blend") / 100
  cv_imshow("blend", cv_addWeighted(img1, a, img2, 1 - a, 0))
  if (cv_waitKey(30L) == 27L) break     # ESC 退出
}
}

带回调时不用循环，拖动直接触发 R 函数，但\strong{仍然要调 \code{cv_waitKey}}
把消息泵转起来，否则窗口不刷新、滑块也不响应：

\preformatted{
draw <- function(pos) {
  a <- pos / 100
  cv_imshow("blend", cv_addWeighted(img1, a, img2, 1 - a, 0))
}
cv_namedWindow("blend")
cv_createTrackbar("alpha", "blend", 50L, 100L, onChange = draw)
draw(50L)                             # 建完自己画第一帧
while (cv_waitKey(30L) != 27L) NULL   # ESC 退出
}

\strong{创建时不会调用 \code{onChange}。}和 \code{cv::createTrackbar} 一致：
建滑动条只挂回调、不动画面，第一帧要自己调一次函数画出来。这样多条滑动条
共用一个回调也没有先后顺序问题——先把几条都建好，再统一调一次：

\preformatted{
#阈值运算类型：0 二值化 / 1 逆二值化 / 2 截断 / 3 下折断 / 4 上折断
Threshold_Demo <- function(val) {
  type  <- cv_getTrackbarPos("Type:",  "Threshold Demo")
  value <- cv_getTrackbarPos("Value:", "Threshold Demo")
  cv_imshow("Threshold Demo", cv_threshold(src, value, 255, type))
}
cv_namedWindow("Threshold Demo", WINDOW_AUTOSIZE)
cv_createTrackbar("Type:",  "Threshold Demo",   3L,   4L, Threshold_Demo)
cv_createTrackbar("Value:", "Threshold Demo",   0L, 255L, Threshold_Demo)
Threshold_Demo(0L)                    # 两条都在了，画第一帧
}

只有你自己显式调 \code{\link{cv_setTrackbarPos}} 才会触发回调——那是程序主动
改位置，通知是对的。

\strong{回调里报错不会崩掉窗口循环。}异常在 C++ 侧被兜住，只往 stderr 打一行，
循环继续。修好 R 代码后继续拖动即可，不用重建窗口。

\strong{为什么手写：}回调是 C 函数指针（\code{void(*)(int, void*)}），生成器翻不出来。
ROpenCV 那版用一个 \code{static} 单例存 R 函数，只能有一个滑动条带回调——
建第二个时第一个的回调会被顶掉，而且异常被吞掉、什么提示都没有。这里把回调对象
挂在 OpenCV 的 \code{userdata} 上，每个滑动条各有一份，互不干扰。
}
\seealso{\code{\link{cv_getTrackbarPos}}、\code{\link{cv_setTrackbarPos}}、
  \code{\link{cv_namedWindow}}}
\keyword{opencv}
