% 手写页面：cvMat 的运算符
\encoding{UTF-8}
\name{cvMat-ops}
\alias{cvMat-ops}
\alias{Ops.cvMat}
\alias{Math.cvMat}
\alias{Summary.cvMat}
\alias{mean.cvMat}
\alias{as.matrix.cvMat}
\alias{\%*\%.cvMat}
\alias{solve.cvMat}
\alias{t.cvMat}
\alias{determinant.cvMat}
\alias{cbind.cvMat}
\alias{rbind.cvMat}
\title{cvMat 的运算符与数学函数}
\description{
让 cvMat 像 R 矩阵一样参与算术，省掉 \code{cv2r} / \code{r2cv} 的来回拷贝。
}
\usage{
\method{Ops}{cvMat}(e1, e2)

\method{Math}{cvMat}(x, ...)

\method{Summary}{cvMat}(..., na.rm = FALSE)

\method{mean}{cvMat}(x, ...)

\method{as.matrix}{cvMat}(x, ...)

\method{\%*\%}{cvMat}(x, y)

\method{solve}{cvMat}(a, b, ...)

\method{t}{cvMat}(x)

\method{determinant}{cvMat}(x, logarithm = TRUE, ...)

\method{cbind}{cvMat}(..., deparse.level = 1)

\method{rbind}{cvMat}(..., deparse.level = 1)
}
\arguments{
\item{e1, e2, x, y, a, b}{cvMat 对象；标量运算时其中一个是长度 1 的数值。}
\item{na.rm}{被忽略：cvMat 里不会有 \code{NA}（浮点里可能有 \code{NaN}）。}
\item{logarithm}{逻辑；TRUE 时返回 \code{log|det|}。}
\item{deparse.level}{被忽略：拼接结果永远是 cvMat，没有名字可拼。}
\item{...}{传给具体方法，例如 \code{round(x, digits)} 的 \code{digits}、
  \code{log(x, base)} 的 \code{base}。}
}
\value{
除 \code{determinant()} 返回 \code{list(modulus, sign)} 外，其余都返回新的 cvMat。
}
\details{
\strong{结果类型永远是输入的类型，整数按 OpenCV 的规则饱和。}这是 OpenCV 的语义，
不是 R 的：

\preformatted{
img <- cv_imread("a.jpg")     # CV_8UC3，某像素 250
img + 10                      # -> 255，不是 260
-img                          # -> 全 0，不是负数
}

两条路都说得通，但包的身份是「OpenCV 的薄封装」，所以跟 OpenCV 走。
要按 R 的方式算，先显式转浮点：\code{cv_mat_convert(img, CV_64F) + 10}。
整数上第一次用运算符时会提示一次（每个会话一次），之后就安静了。

\strong{映射表：}

\tabular{ll}{
  逐元素 \code{+ - * /} \tab \code{cv_add} / \code{cv_subtract} /
    \code{cv_multiply} / \code{cv_divide} \cr
  与标量的 \code{+ - * /} \tab \code{cv_mat_convert()}，即 \code{Mat::convertTo} \cr
  \code{x ^ s} \tab \code{cv_pow} \cr
  \code{x \%*\% y} \tab \code{cv_gemm}（要求 \code{CV_32F} / \code{CV_64F}）\cr
  \code{solve(a)} \tab \code{cv_invert}（求逆）\cr
  \code{solve(a, b)} \tab \code{cv_solve} \cr
  \code{t(x)} \tab \code{cv_transpose} \cr
  \code{det(x)} \tab \code{cv_determinant} \cr
  \code{sin} \code{cos} \code{log} \code{exp} 等 \tab \code{cv_mat_math} \cr
}

\strong{一条规则概括哪些运算能用整数：}保类型的（\code{abs} / \code{floor} /
\code{ceiling} / \code{trunc} / \code{round} / \code{sign}）整数也能用；会改值域的
（\code{sin} / \code{log} / \code{sqrt} / \code{exp} / \code{^}）要求
\code{CV_32F} 或 \code{CV_64F}。

\strong{\code{as.matrix()} 是为了接住按 \code{dim} 分派的函数。}\code{apply()} 的第一句
就是 \code{if (!is.array(X)) X <- as.matrix(X)}，没有这个方法，
\code{apply(a, 1, sum)} 报的是 \code{cannot coerce type 'externalptr'}。
多通道时它返回三维数组而不是压成二维——压平会把通道维丢掉，\code{MARGIN} 就对不上。
要 R 的矩阵语义请用 \code{\link{as_array}}，那个名字和行为是对得上的。

整数深度取的是 \code{integer} 而不是 \code{raw}：\code{raw} 参与不了
\code{mean} / \code{sum} 这类运算，\code{apply(a, 1, mean)} 会返回 \code{NA}
加一句警告，等于这个方法白接。\code{\link{as_array}} 保留 \code{raw} 是为了省内存，
那是另一回事。

\strong{\code{apply()} 只对二维 cvMat 生效。}\code{apply} 内部是这么分派的：

\preformatted{
if (length(oldClass(X))) X <- if (dl == 2L) as.matrix(X) else array(X, d)
}

\code{dl} 是 \code{length(dim(X))}。彩色图的 \code{dim} 是三维，走的是
\code{array(X, d)}——把 \code{externalptr} 直接摊开，根本到不了这个方法，
切片会是 \code{raw}，\code{mean} 拿到就返回 \code{NA}。多通道要自己转一次：

\preformatted{
apply(as_array(img, numeric = TRUE), 3, mean)   # 每个通道的均值
cv_mean(img)                                    # 同一个结果，更快
}

\strong{汇总统计：}\code{sum()} / \code{max()} / \code{min()} / \code{range()} /
\code{mean()} 都接通了，结果是整张图（所有通道所有像素）上的标量。不接的话
默认实现给的是 \code{invalid 'type' (extptr) of argument}，\code{mean()} 更糟——
静默返回 \code{NA} 加一句警告。\code{prod()} / \code{all()} / \code{any()} 没有
对应实现，会明确报错并指向 \code{as_array()}。

\code{max} / \code{min} 走的是 \code{\link{cv_minMaxIdx}} 而不是
\code{\link{cv_minMaxLoc}}：后者是 \code{cv::minMaxLoc} 的绑定，OpenCV 规定它
只收单通道，彩色图进去直接抛断言。

\strong{整数类型的除法}：整数表示不了小数，\code{m / 2} 的每一步都在 double 上算完
再按四舍六入五成双落回原类型，正反向（\code{m / 2} 与 \code{2 / m}）用同一套规则。
除以 0 在整数上按 \code{cv::divide} 的约定得到 0——整数没有 \code{Inf}，
让它随类型宽度溢出成 0 或 -32768 只会更难查。

\strong{不支持的形式}（都给出明确报错，不会静默做错）：
\code{cvMat ^ cvMat}（OpenCV 的 \code{pow} 只吃标量指数）、
标量 \code{^} cvMat、cvMat 与长度大于 1 的向量运算（R 的循环补齐在二维/三维
矩阵上没有显然的尺寸含义）、以及比较运算 \code{== < >} 等（用
\code{\link{cv_compare}}，它返回 0/255 的掩码而不是 logical）。

\strong{\code{cbind()} / \code{rbind()} 走 \code{hconcat} / \code{vconcat}。}
这两个是 S3 泛型，不接的话 \code{cbind(a, b)} 不报错，返回的是一个 1x2 的
list 矩阵，里面装两个 \code{externalptr}——\code{class} 是 \code{matrix}，
\code{dim} 也对，看着像成功了。这类错不会当场暴露，会拖到很远的地方才炸。

\preformatted{
cbind(a, b)    # 横向拼接，等价 cv_hconcat(list(a, b))
rbind(a, b)    # 纵向拼接，等价 cv_vconcat(list(a, b))
}

参数只接受 cvMat，混入数值矩阵会直接报错——真要混，深度和通道怎么对齐没有
显然的答案，不如让人自己 \code{Mat(as.matrix(x))} 写清楚。

\strong{按 \code{dim} 属性取形状的函数接不上。}cvMat 没有真正的 \code{dim}
属性：\code{dim()} 是方法，从指针里算出来的。凡是不走 \code{dim()} 而是直接读
\code{attr(x, "dim")} 的函数都认不出它，而 \code{is.array()} / \code{is.matrix()}
又不是泛型，没地方挂钩子：

\preformatted{
dim(a)        # 2 3      —— 方法，正常
is.array(a)   # FALSE    —— 读的是 attr，改不了
is.matrix(a)  # FALSE    —— 同上
aperm(a)      # 报错      —— 同上
colMeans(a)   # 报错      —— 内部先 is.array()
rowMeans(a)   # 报错      —— 同上
diag(a)       # 报错      —— 内部走 array 路径，信息很难懂
dim(a) <- NULL # 不报错，也不生效 —— dim<- 不是泛型，见 \link{cvMat-plot}
}

这些不是遗漏，是「一个指向 C++ 对象的句柄」和「一个真正的 R 数组」之间没法
两全的地方。要这些行为，先 \code{as.matrix(a)} 或 \code{as_array(a)} 转一次。
\code{apply()} 是个例外，它查的是 \code{is.object()}，所以二维情况下能用。

\strong{\code{det()} 的钩子挂在 \code{determinant} 上。}base 的 \code{det()}
不是泛型，它内部调 \code{determinant()}；只定义 \code{det.cvMat} 不会生效，
报的还是 \code{no applicable method for 'determinant'}，和 \code{det} 一点
关系都看不出来。
}
\examples{
\donttest{
a <- Mat(matrix(1:4, 2, 2))
b <- Mat(matrix(4:1, 2, 2))
a + b            # 逐元素
a * 2            # 数乘

# 线性代数这几项要求浮点：Mat() 从 integer 矩阵建出来是 CV_32SC1，
# 直接 a \%*\% b 会抛 gemm 的断言，det(a) 同理。
a <- cv_mat_convert(a, CV_64F)
b <- cv_mat_convert(b, CV_64F)
a \%*\% b          # 矩阵乘
t(a)             # 转置
solve(a)         # 求逆
det(a)           # 行列式

x <- cv_mat_convert(Mat(matrix(1:9, 3, 3)), CV_64F)
log(x)           # 逐元素取对数
sin(x)
}
}
\seealso{\code{\link{cv_mat_convert}}、\code{\link{cv_mat_math}}、\code{\link{Mat}}}
\keyword{opencv}
