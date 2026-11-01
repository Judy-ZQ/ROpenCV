% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvCCheckerDraw}
\alias{cvCCheckerDraw}
\title{checker draw}
\usage{cvCCheckerDraw(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvCCheckerDraw} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{checker draw}
\details{
This class contains the functions for drawing a detected chart. This class expects a pointer to the checker which will be drawn by this object in the constructor and then later on whenever the draw function is called the checker will be drawn. Remember that it is not possible to change the checkers which will be draw by a given object, as it is decided in the constructor itself. If you want to draw some other object you can create a new CCheckerDraw instance.
The reason for this type of design is that in some videos we can assume that the checker is always in the same position, even if the image changes, so the drawing will always take place at the same position.
\strong{C++ 头文件：}\code{#include <opencv2/mcc/checker_model.hpp>}
\strong{构造}
\preformatted{
cvCCheckerDraw(pChecker, color, thickness = 2)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvCCheckerDraw(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{draw(img = NULL)}：Draws the checker to the given image.
}
}
\keyword{opencv}
