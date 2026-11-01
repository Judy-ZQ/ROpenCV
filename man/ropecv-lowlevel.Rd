% 手写页面：低层入口
\encoding{UTF-8}
\name{ropecv-lowlevel}
\alias{probe_mat_new}
\alias{probe_mat_from}
\alias{probe_info}
\alias{probe_sum}
\alias{probe_to_r}
\alias{probe_mat_assign}
\alias{probe_mat_extract}
\alias{cv_type_constants}
\alias{cv_enums}
\title{低层入口与常量表}
\usage{
probe_mat_new(rows, cols, type, value)

probe_mat_from(x)

probe_info(m)

probe_sum(src)

probe_to_r(m)

probe_mat_assign(m, idx, value)

probe_mat_extract(m, idx)

cv_type_constants()

cv_enums()
}
\arguments{
\item{rows, cols, type, value}{见 \code{\link{Mat}}。}
\item{x, src, m}{一个 \code{cvMat}，或可被 \code{\link{Mat}} 接受的对象。}
\item{idx}{正整数向量，按「列优先展开」的 1-based 线性下标。}
}
\value{
\code{probe_*} 系列返回 \code{cvMat} 或普通 R 向量；
\code{probe_mat_assign()} 不可见地返回 \code{NULL}（它改的是原生像素缓冲）；
\code{cv_type_constants()} / \code{cv_enums()} 返回「名字 -> 整数」的命名 list。
}
\description{
这些是生成代码直接调用的入口，以及 \code{.onLoad} 用来注入枚举常量的函数。
正常使用不需要碰它们——请用 \code{\link{Mat}}、\code{\link{as_array}} 等上层函数。

\code{probe_mat_assign()} / \code{probe_mat_extract()} 是
\code{[<-} 和 \code{[} 的底层原语：前者原地写像素（走 \code{cv::saturate_cast}），
后者按下标取回单个或若干元素。下标由 R 层算成「列优先展开的 1-based 线性下标」，
和 \code{\link{as_array}} 给出的数组顺序完全一致，所以 R 的数组语义能一一对上。

\code{cv_type_constants()} 与 \code{cv_enums()} 的值全部由 C++ 编译器从 OpenCV
头文件算出，R 侧不写死任何数字：OpenCV 5 把 \code{CV_CN_SHIFT} 从 3 改成 5，
凡是抄来的常量都可能悄悄错掉。
}
\keyword{internal}
