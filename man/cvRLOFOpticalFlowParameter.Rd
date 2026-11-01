% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvRLOFOpticalFlowParameter}
\alias{cvRLOFOpticalFlowParameter}
\title{This is used store and set up the parameters of the robust local optical flow (RLOF) algoritm}
\usage{cvRLOFOpticalFlowParameter(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvRLOFOpticalFlowParameter} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{This is used store and set up the parameters of the robust local optical flow (RLOF) algoritm.}
\details{
The RLOF is a fast local optical flow approach described in [239] [240] [241] and [242] similar to the pyramidal iterative Lucas-Kanade method as proposed by [36]. More details and experiments can be found in the following thesis [243]. The implementation is derived from optflow::calcOpticalFlowPyrLK . This RLOF implementation can be seen as an improved pyramidal iterative Lucas-Kanade and includes a set of improving modules. The main improvements in respect to the pyramidal iterative Lucas-Kanade are:
\itemize{
\item A more robust redecending M-estimator framework (see [239]) to improve the accuracy at motion boundaries and appearing and disappearing pixels.
\item an adaptive support region strategies to improve the accuracy at motion boundaries to reduce the corona effect, i.e oversmoothing of the PLK at motion/object boundaries. The cross-based segementation strategy (SR_CROSS) proposed in [241] uses a simple segmenation approach to obtain the optimal shape of the support region.
\item To deal with illumination changes (outdoor sequences and shadow) the intensity constancy assumption based optical flow equation has been adopt with the Gennert and Negahdaripour illumination model (see [242]). This model can be switched on/off with the useIlluminationModel variable.
\item By using a global motion prior initialization (see [242]) of the iterative refinement the accuracy could be significantly improved for large displacements. This initialization can be switched on and of with useGlobalMotionPrior variable.
}
The RLOF can be computed with the SparseOpticalFlow class or function interface to track a set of features or with the DenseOpticalFlow class or function interface to compute dense optical flow.
\strong{C++ 头文件：}\code{#include <opencv2/optflow/rlofflow.hpp>}
\strong{构造}
\preformatted{
cvRLOFOpticalFlowParameter()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvRLOFOpticalFlowParameter(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getCrossSegmentationThreshold()}
\item \code{getGlobalMotionRansacThreshold()}
\item \code{getLargeWinSize()}
\item \code{getMaxIteration()}
\item \code{getMaxLevel()}
\item \code{getMinEigenValue()}
\item \code{getNormSigma0()}
\item \code{getNormSigma1()}
\item \code{getSmallWinSize()}
\item \code{getSolverType()}
\item \code{getSupportRegionType()}
\item \code{getUseGlobalMotionPrior()}
\item \code{getUseIlluminationModel()}
\item \code{getUseInitialFlow()}
\item \code{setCrossSegmentationThreshold(val)}
\item \code{setGlobalMotionRansacThreshold(val)}
\item \code{setLargeWinSize(val)}
\item \code{setMaxIteration(val)}
\item \code{setMaxLevel(val)}
\item \code{setMinEigenValue(val)}
\item \code{setNormSigma0(val)}
\item \code{setNormSigma1(val)}
\item \code{setSmallWinSize(val)}
\item \code{setSolverType(val)}
\item \code{setSupportRegionType(val)}
\item \code{setUseGlobalMotionPrior(val)}
\item \code{setUseIlluminationModel(val)}
\item \code{setUseInitialFlow(val)}
\item \code{setUseMEstimator(val)}：Enable M-estimator or disable and use least-square estimator.
}
}
\keyword{opencv}
