% 手写页面：cvObject 基类
\encoding{UTF-8}
\name{cvObject}
\alias{cvObject}
\alias{$.cvObject}
\alias{names.cvObject}
\alias{print.cvObject}
\title{OpenCV 类实例的 R 包装}
\usage{
\method{$}{cvObject}(x, name)

\method{names}{cvObject}(x)

\method{print}{cvObject}(x, ...)
}
\arguments{
\item{x}{一个 \code{cvObject}，例如 \code{cvSIFT()}、\code{cvCLAHE()} 的返回值。}
\item{name}{方法名，用 \code{names(x)} 可以列出全部。}
\item{...}{方法的参数；\code{print} 里忽略。}
}
\value{
\code{obj$name(...)} 返回方法的结果——通常是新的 \code{cvMat}、数值向量，
或者另一个 \code{cvObject}。\code{names(obj)} 返回字符向量，\code{print}
不可见地返回 \code{obj}。
}
\description{
所有 OpenCV 类实例在 R 侧都是 \code{cvObject}：它包着一个 \code{cv::Ptr}，
方法通过 \code{$} 取用，形态贴近 C++ 的 \code{obj->method(...)}。
}
\details{
接收者不用手写——\code{obj$apply(img)} 对应 C++ 的 \code{obj->apply(img, dst)}；
输出参数 \code{dst} 和自由函数一样可以省略：

\preformatted{
clahe <- cvCLAHE()
clahe$setClipLimit(3)
out <- clahe$apply(img)          # dst 省略，直接返回新图
clahe$apply(img, dst = reuse)    # 或填进已有缓冲区
}

\code{names(obj)} 列出的是「这个对象上能调的方法」，已经包含继承来的方法
（例如所有算法对象都有 \code{getDefaultName()}、\code{save()}、\code{clear()}）。

\strong{生命周期：}对象由 R 的 finalizer 释放，正常情况下不用管；
需要立刻回收时用 \code{\link{cv_gc}}。
}
\seealso{\code{\link{is_cvObject}}、\code{\link{Mat}}}
\keyword{opencv}
