% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvGraphicalCodeDetector}
\alias{cvGraphicalCodeDetector}
\title{cv::GraphicalCodeDetector}
\usage{cvGraphicalCodeDetector(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvGraphicalCodeDetector} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::GraphicalCodeDetector} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::GraphicalCodeDetector} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/objdetect/graphical_code_detector.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvGraphicalCodeDetector(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{decode(img, points, dst = NULL)}：Decodes graphical code in image once it's found by the detect method.
\item \code{decodeMulti(img, points, straight_code = NULL)}：Decodes graphical codes in image once it's found by the detect method.
\item \code{detect(img, dst = NULL)}：Detects graphical code in image and returns the quadrangle containing the code.
\item \code{detectAndDecode(img, points = NULL, straight_code = NULL)}：Both detects and decodes graphical code.
\item \code{detectAndDecodeMulti(img, points = NULL, straight_code = NULL)}：Both detects and decodes graphical codes.
\item \code{detectMulti(img, dst = NULL)}：Detects graphical codes in image and returns the vector of the quadrangles containing the codes.
}
}
\keyword{opencv}
