% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_loadTrainingData}
\alias{cv_loadTrainingData}
\title{A utility to load facial landmark dataset from a single file}
\usage{cv_loadTrainingData(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{bool}）挂在 \code{attr(x, "value")} 上。}
\description{A utility to load facial landmark dataset from a single file.}
\details{
Example of usage

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

bool loadTrainingData(String filename, std::vector<String> & images, OutputArray facePoints, char delim = ' ', float offset = 0.0f)

bool loadTrainingData(String imageList, String groundTruth, std::vector<String> & images, OutputArray facePoints, float offset = 0.0f)

bool loadTrainingData(std::vector<String> filename, std::vector< std::vector<Point2f> > & trainlandmarks, std::vector<String> & trainimages)

}

\strong{C++ 头文件：}\code{#include <opencv2/face/facemark_train.hpp>}
}
\keyword{opencv}
