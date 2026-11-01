% 手写页面：cvMat 的显示与摘要
\encoding{UTF-8}
\name{cvMat-plot}
\alias{cvMat-plot}
\alias{as.raster.cvMat}
\alias{plot.cvMat}
\alias{summary.cvMat}
\title{在 R 的图形设备上看 cvMat，以及看它的统计量}
\description{
\code{plot(img)} 直接把图打在当前设备上，不开窗口也不落盘；
\code{summary(img)} 给出每个通道的六数摘要。
}
\usage{
\method{as.raster}{cvMat}(x, max = NULL, ...)

\method{plot}{cvMat}(x, ...)

\method{summary}{cvMat}(object, ...)
}
\arguments{
\item{x, object}{cvMat 对象。}
\item{max}{归一化除数。默认按深度取：\code{CV_8U} 用 255、\code{CV_16U} 用 65535，
  浮点与有符号整数按 0..1 解释。给了就按给的值除。}
\item{...}{传给下层：\code{plot()} 转给 \code{\link[graphics]{plot.raster}}，
  \code{summary()} 忽略。}
}
\value{
\code{as.raster()} 返回 \code{raster} 对象；\code{plot()} 不可见返回 \code{NULL}；
\code{summary()} 单通道时返回长度 6 的命名数值向量，多通道时返回
「每通道一行、六列」的矩阵。
}
\details{
\strong{为什么不直接 \code{plot(img)} 就完事。}cvMat 存的是 OpenCV 的 BGR(A)
交错布局，R 的 raster 要的是 RGB(A) 的分层数组，两者差一次通道翻转加一次
归一化。补上 \code{as.raster} 之后 \code{plot()} 才有东西可画——没有它，
\code{plot(img)} 走的是 \code{plot.default}，报的是
\code{invalid plotting structure}，和「这是张图」一点关系都看不出来。

\strong{通道顺序。}\code{cv_imread()} 读进来是 BGR，这里翻成 RGB 再交给
\code{as.raster()}。四通道是 BGRA，只翻前三个，alpha 留在原位。

\strong{浮点图的取值范围没有统一约定。}有的在 0..1，有的在 0..255，包不猜。
默认按 0..1 解释，越界时直接报错并把实际范围打出来，让人自己决定：

\preformatted{
as.raster(x, max = 255)                            # 已知是 0..255
cv_normalize(x, NULL, 0, 1, NORM_MINMAX, CV_32F)   # 不知道范围
}

\strong{只有 1、3、4 通道能显示。}二通道（比如 \code{cv_merge(list(g, g))}）
没有对应的颜色解释，会报错并指向 \code{cv_split()}。

\strong{\code{summary()} 的通道名按存储顺序。}三通道给 \code{B} / \code{G} /
\code{R}，四通道加 \code{A}——不是 RGB 顺序，跟 OpenCV 一致。

\strong{一个改不了的地方：}\code{dim(x) <- NULL} 不报错，但也不生效。
\code{dim<-} 不是 S3 泛型（\code{methods("dim<-")} 为空），钩不上方法；
cvMat 又始终是二维起步的，没有「去掉维度变成向量」这种状态。要向量请用
\code{as_array()}。
}
\examples{
\donttest{
img <- cv_imread("photo.jpg")
plot(img)                       # 直接看
plot(img, add = TRUE)           # 叠在已有图上

summary(img)                    # 每个通道的六数摘要
as.raster(img)                  # 交给 grid.raster() 之类的地方
}
}
\seealso{\code{\link{cv_imread}}、\code{\link{as_array}}、\code{\link{cvMat-ops}}}
\keyword{opencv}
