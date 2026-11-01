% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvColorCorrectionModel}
\alias{cvColorCorrectionModel}
\title{Core class of ccm model}
\usage{cvColorCorrectionModel(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvColorCorrectionModel} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Core class of ccm model.}
\details{
Produce a ColorCorrectionModel instance for inference
\strong{C++ 头文件：}\code{#include <opencv2/mcc/ccm.hpp>}
\strong{构造}
\preformatted{
cvColorCorrectionModel(src, constcolor)
cvColorCorrectionModel(src, colors, ref_cs)
cvColorCorrectionModel(src, colors, ref_cs, colored)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvColorCorrectionModel(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getCCM()}
\item \code{getLoss()}
\item \code{getMask()}
\item \code{getWeights()}
\item \code{get_dst_rgbl()}
\item \code{get_src_rgbl()}
\item \code{infer(img, islinear = FALSE)}：Infer using fitting ccm.
\item \code{run()}：make color correction
\item \code{setCCM_TYPE(ccm_type)}：set ccm_type
\item \code{setColorSpace(cs)}：set ColorSpace
\item \code{setDistance(distance)}：set Distance
\item \code{setEpsilon(epsilon)}：set Epsilon
\item \code{setInitialMethod(initial_method_type)}：set InitialMethod
\item \code{setLinear(linear_type)}：set Linear
\item \code{setLinearDegree(deg)}：set degree
\item \code{setLinearGamma(gamma)}：set Gamma
\item \code{setMaxCount(max_count)}：set MaxCount
\item \code{setSaturatedThreshold(lower, upper)}：set SaturatedThreshold. The colors in the closed interval [lower, upper] are reserved to participate in the calculation of the loss function and initialization parameters
\item \code{setWeightCoeff(weights_coeff)}
\item \code{setWeightsList(weights_list)}：set WeightsList
}
}
\keyword{opencv}
