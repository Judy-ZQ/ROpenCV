% 手写页面：cv_struct_fields
\encoding{UTF-8}
\name{cv_struct_fields}
\alias{cv_struct_fields}
\title{查询参数结构体的字段名}
\usage{
cv_struct_fields(name = NULL)
}
\arguments{
\item{name}{结构体名。可以写全限定名 \code{"cv::SimpleBlobDetector::Params"}，
也可以省略中间的命名空间，写 \code{"SimpleBlobDetector::Params"} 或
\code{"TrackerKCF::Params"}。缺省时列出所有已知结构体。}
}
\value{
\code{name} 缺省时返回字符向量（全部结构体名）；否则返回该结构体的字段名与
字段类型的命名 list。
}
\description{
很多 OpenCV 接口用「参数结构体」传可选参数（\code{SimpleBlobDetector::Params}、
\code{TrackerKCF::Params}、\code{DetectorParameters} …）。R 侧把它表示成命名
list，字段名与 C++ 结构体完全一致。这个函数用来查字段名，免得去翻头文件。
}
\details{
字段名写错会直接报错并列出可用字段，不会静默忽略：

\preformatted{
cvSimpleBlobDetector(params = list(threshholdStep = 5))   # 报错：没有这个字段
cvSimpleBlobDetector(params = list(thresholdStep = 5))    # 正确
}

未给出的字段保持 OpenCV 的默认值，所以只需要写想改的那几个。
}
\examples{
\dontrun{
cv_struct_fields()
cv_struct_fields("SimpleBlobDetector::Params")
}}
\keyword{opencv}
