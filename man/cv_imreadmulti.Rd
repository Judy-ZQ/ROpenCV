% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_imreadmulti}
\alias{cv_imreadmulti}
\title{Loads a multi-page image from a file}
\usage{cv_imreadmulti(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{逻辑标量。}
\description{Loads a multi-page image from a file.}
\details{
The function imreadmulti loads a multi-page image from the specified file into a vector of Mat objects.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

bool imreadmulti(const String& filename, std::vector<Mat>& mats, int flags = IMREAD_ANYCOLOR)

bool imreadmulti(const String& filename, std::vector<Mat>& mats, int start, int count, int flags = IMREAD_ANYCOLOR)

}

\strong{C++ 头文件：}\code{#include <opencv2/imgcodecs.hpp>}
}
\seealso{\code{\link{cv_imread}}}
\keyword{opencv}
