% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvOdometrySettings}
\alias{cvOdometrySettings}
\title{cv::OdometrySettings}
\usage{cvOdometrySettings(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvOdometrySettings} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::OdometrySettings} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::OdometrySettings} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/3d/odometry_settings.hpp>}
\strong{构造}
\preformatted{
cvOdometrySettings()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvOdometrySettings(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getAngleThreshold()}
\item \code{getCameraMatrix(dst = NULL)}
\item \code{getIterCounts(dst = NULL)}
\item \code{getMaxDepth()}
\item \code{getMaxDepthDiff()}
\item \code{getMaxPointsPart()}
\item \code{getMaxRotation()}
\item \code{getMaxTranslation()}
\item \code{getMinDepth()}
\item \code{getMinGradientMagnitude()}
\item \code{getMinGradientMagnitudes(dst = NULL)}
\item \code{getNormalDiffThreshold()}
\item \code{getNormalMethod()}
\item \code{getNormalWinSize()}
\item \code{getSobelScale()}
\item \code{getSobelSize()}
\item \code{setAngleThreshold(val)}
\item \code{setCameraMatrix(val)}
\item \code{setIterCounts(val)}
\item \code{setMaxDepth(val)}
\item \code{setMaxDepthDiff(val)}
\item \code{setMaxPointsPart(val)}
\item \code{setMaxRotation(val)}
\item \code{setMaxTranslation(val)}
\item \code{setMinDepth(val)}
\item \code{setMinGradientMagnitude(val)}
\item \code{setMinGradientMagnitudes(val)}
\item \code{setNormalDiffThreshold(val)}
\item \code{setNormalMethod(nm)}
\item \code{setNormalWinSize(val)}
\item \code{setSobelScale(val)}
\item \code{setSobelSize(val)}
}
}
\keyword{opencv}
