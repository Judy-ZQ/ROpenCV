% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvPPF3DDetector}
\alias{cvPPF3DDetector}
\title{Class, allowing the load and matching 3D models}
\usage{cvPPF3DDetector(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvPPF3DDetector} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class, allowing the load and matching 3D models. Typical Use}
\details{
C++ 类 \code{cv::ppf_match_3d::PPF3DDetector} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/surface_matching/ppf_match_3d.hpp>}
\strong{构造}
\preformatted{
cvPPF3DDetector()
cvPPF3DDetector(relativeSamplingStep, relativeDistanceStep = 0.05, numAngles = 30)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvPPF3DDetector(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{match(scene, relativeSceneSampleStep = 0.2, relativeSceneDistance = 0.03)}：Matches a trained model across a provided scene.
\item \code{trainModel(Model)}：Trains a new model.
}
}
\keyword{opencv}
