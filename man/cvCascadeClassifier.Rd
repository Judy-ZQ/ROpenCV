% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvCascadeClassifier}
\alias{cvCascadeClassifier}
\title{Cascade classifier class for object detection}
\usage{cvCascadeClassifier(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvCascadeClassifier} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Cascade classifier class for object detection.}
\details{
C++ 类 \code{cv::CascadeClassifier} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/xobjdetect.hpp>}
\strong{构造}
\preformatted{
cvCascadeClassifier()
cvCascadeClassifier(filename)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvCascadeClassifier(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{detectMultiScale(image, scaleFactor = 1.1, minNeighbors = 3, flags = 0, minSize = NULL, maxSize = NULL)}：Detects objects of different sizes in the input image. The detected objects are returned as a list of rectangles.
\item \code{empty()}：Checks whether the classifier has been loaded.
\item \code{getFeatureType()}
\item \code{getOriginalWindowSize()}
\item \code{isOldFormatCascade()}
\item \code{load(filename)}：Loads a classifier from a file.
\item \code{read(node)}：Reads a classifier from a FileStorage node.
}
}
\keyword{opencv}
