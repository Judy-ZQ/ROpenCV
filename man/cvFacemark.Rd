% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvFacemark}
\alias{cvFacemark}
\title{Abstract base class for all facemark models}
\usage{cvFacemark(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvFacemark} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Abstract base class for all facemark models.}
\details{
To utilize this API in your program, please take a look at the Tutorial on Facial Landmark Detector API
Facemark is a base class which provides universal access to any specific facemark algorithm. Therefore, the users should declare a desired algorithm before they can use it in their application.
Here is an example on how to declare a facemark algorithm:
\strong{C++ 头文件：}\code{#include <opencv2/face/facemark.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvFacemark(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{fit(image, faces, landmarks = NULL)}：Detect facial landmarks from an image.
\item \code{loadModel(model)}：A function to load the trained model before the fitting process.
}
}
\keyword{opencv}
