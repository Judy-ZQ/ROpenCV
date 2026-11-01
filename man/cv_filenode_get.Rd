% 手写页面：FileNode 下标
\encoding{UTF-8}
\name{cv_filenode_get}
\alias{cv_filenode_get}
\alias{probe_filenode_get}
\alias{[[.cvFileNode}
\title{按名字或位置取 FileNode 的子节点}
\description{
对应 \code{cv::FileNode::operator[]}。\code{cvFileStorage} 读回文件后，
\code{root()} 拿到的是整棵树的根节点，取某个键的值就靠这个函数；
R 侧包装成 \code{node[["键名"]]}。
}
\usage{
probe_filenode_get(node, key)

\method{[[}{cvFileNode}(x, i, ...)
}
\arguments{
\item{node, x}{cvFileNode 对象，一般来自 \code{fs$root()}。}
\item{key, i}{字符下标按名字取子节点（要求 map 节点）；整数下标按位置取
（要求 sequence 节点，\strong{1 起算}）。}
\item{...}{未使用。}
}
\value{
子节点（cvFileNode），或 \code{NULL}。
}
\details{
\strong{键不存在时返回 \code{NULL}，不报错。}OpenCV 内部给的是 none 节点，
这里翻成 \code{NULL}，于是可以直接写：

\preformatted{
v <- root[["version"]]
if (is.null(v)) "没有这个键" else v$string()
}

按名字取值要求节点是 map（配置文件里最常见的形态），按下标取值要求是
sequence（\code{[a, b, c]} 那种）。类型不符会报错并说明是哪一种，不会
静默返回 \code{NULL}。

\strong{节点不能活过 FileStorage。}\code{cv::FileNode} 内部存的是指向
FileStorage 缓冲区的指针，不是数据的副本。\code{fs$release()} 之后再用
之前取出的节点，读到的是已释放的内存。所以要么先取值再 \code{release()}，
要么把 \code{release()} 放在最后：

\preformatted{
fs <- cvFileStorage("camera.yml", READ)
root <- fs$root()
k <- root[["camera_matrix"]]$mat()   # 先取出来
fs$release()                         # 再关文件
}

\strong{为什么只有 FileNode 有 \code{[[}。}其余 cv 对象的「下标」语义各不相同
（\code{cvMat} 是像素，\code{cvVideoCapture} 是帧），统一加 \code{[[} 只会让
它们互相混淆。FileNode 是唯一一个「下标就是取子节点」的对象，缺了它整个
persistence 模块读不动，所以单独给它一个。
}
\seealso{\code{\link{cvFileStorage}}、\code{\link{cvFileNode}}}
\keyword{opencv}
