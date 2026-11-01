% 手写页面：cv2r / r2cv
\encoding{UTF-8}
\name{cv2r}
\alias{cv2r}
\alias{r2cv}
\title{Mat 与 R 数组的互通}
\usage{
cv2r(m, numeric = TRUE)

r2cv(m, a)
}
\arguments{
\item{m}{\code{cvMat} 对象。}
\item{numeric}{逻辑；\code{TRUE}（\code{cv2r} 的默认值）时把 \code{raw}
结果转成 \code{integer}，\code{as_array()} 的默认值是 \code{FALSE}。}
\item{a}{数组或向量，长度必须等于 \code{prod(dim(m))}。}
}
\value{
\code{cv2r} 返回 R 数组（\code{CV_8U} -> \code{integer}（默认）或 \code{raw}，
\code{CV_32S} -> \code{integer}，浮点 -> \code{double}）；
\code{r2cv} 不可见地返回 \code{m}。
}
\description{
一对互通函数：\code{cv2r} 把图像取成 R 数组，改完之后 \code{r2cv} 写回去。
它们分别是 \code{\link{as_array}} 和原地赋值的别名，保留旧版 ROpenCV 的函数名。
}
\details{
\strong{为什么 \code{cv2r} 默认给 integer 而不是 raw：}它的用途就是「取出来改」，
而 \code{raw} 矩阵不能直接写数字——\code{a[3, 3] <- 55} 会报
\code{incompatible types (from raw to double)}，得写 \code{as.raw(55)}。
\code{as_array()} 保留 \code{raw} 是为了忠实反映 dtype（省内存、序列化不失真），
两个默认值不同是有意的。
\strong{改元素不用走这两个函数。} \code{cvMat} 直接支持 \code{[} 和 \code{[<-}，
写入是原地落在原生像素缓冲上的，不产生中间拷贝：

\preformatted{
img[100:200, 50:150] <- 0      # 涂黑一块
img[img < 10] <- 0             # 阈值清理
img[, , 1] <- 255              # 整通道
}

\code{r2cv} 适合「整块换掉」的场景，比如从文件读进来一张新图、
或者用 R 的矩阵运算算出一整幅结果。

\strong{类型与饱和：}写入走 \code{cv::saturate_cast}，
\code{img[img > 200] <- 300} 落在 \code{CV_8U} 上得到 255，不会溢出成 44。

\strong{为什么读不做零拷贝视图：} \code{cv::Mat} 在 \code{create()} /
\code{copyTo()} 时会重新分配缓冲，R 侧若持有一个指向旧缓冲的数组，指针立刻
悬垂。而 \code{[<-} 每次调用都重新取当前的 \code{cv::Mat}，所以只有「写」
能安全地原地做。

\strong{多通道的写法：} \code{dim} 是 \code{(行, 列, 通道)}。
\code{img[1, 1]} 给出该像素的全部通道（与 \code{img[1, 1, ]} 等价）——
这一点比 base R 的数组规则宽松（三维数组上 \code{a[1, 1]} 会报错），
因为「一个像素」本来就该是全部通道：

\preformatted{
p <- img[1, 1]          # 长度 3 的向量
img[1, 1, 2] <- 0       # 只改 G 通道
}

\strong{循环里读大图要注意：} \code{[} 的读路径是「先整图取成数组，再交给 R
取子集」，所以在大图上反复 \code{img[x1:x2, y1:y2]} 等于每次都拷一遍整图。
分块处理时把读取提到循环外：

\preformatted{
a <- as_array(img)              # 一次
for (k in seq_len(n)) {
  patch <- a[x1:x2, y1:y2]      # 之后都在 R 数组上切
  a[x1:x2, y1:y2] <- f(patch)
}
r2cv(img, a)                    # 最后整块写回
}

写入本身是原地的，所以「在 R 里改、立刻被 OpenCV 看到」这条路径没有额外成本。
}
\seealso{\code{\link{Mat}}、\code{\link{as_array}}、\code{\link{mat_info}}}
\keyword{opencv}
