% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvKalmanFilter}
\alias{cvKalmanFilter}
\title{Kalman filter class}
\usage{cvKalmanFilter(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvKalmanFilter} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Kalman filter class.}
\details{
The class implements a standard Kalman filter http://en.wikipedia.org/wiki/Kalman_filter, [298] . However, you can modify transitionMatrix, controlMatrix, and measurementMatrix to get an extended Kalman filter functionality.
\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
\strong{构造}
\preformatted{
cvKalmanFilter()
cvKalmanFilter(dynamParams, measureParams, controlParams = 0, type = CV_32F)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvKalmanFilter(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{correct(measurement)}：Updates the predicted state from the measurement.
\item \code{predict(control = NULL)}：Computes a predicted state.
}
}
\keyword{opencv}
