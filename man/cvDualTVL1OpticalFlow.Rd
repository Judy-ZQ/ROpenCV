% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvDualTVL1OpticalFlow}
\alias{cvDualTVL1OpticalFlow}
\title{"Dual TV L1" Optical Flow Algorithm}
\usage{cvDualTVL1OpticalFlow(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvDualTVL1OpticalFlow} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{"Dual TV L1" Optical Flow Algorithm.}
\details{
The class implements the "Dual TV L1" optical flow algorithm described in [315] and [235] . Here are important members of the class that control the algorithm, which you can set after constructing the class instance:
\itemize{
\item member double tau Time step of the numerical scheme.
\item member double lambda Weight parameter for the data term, attachment parameter. This is the most relevant parameter, which determines the smoothness of the output. The smaller this parameter is, the smoother the solutions we obtain. It depends on the range of motions of the images, so its value should be adapted to each image sequence.
\item member double theta Weight parameter for (u - v)^2, tightness parameter. It serves as a link between the attachment and the regularization terms. In theory, it should have a small value in order to maintain both parts in correspondence. The method is stable for a large range of values of this parameter.
\item member int nscales Number of scales used to create the pyramid of images.
\item member int warps Number of warpings per scale. Represents the number of times that I1(x+u0) and grad( I1(x+u0) ) are computed per scale. This is a parameter that assures the stability of the method. It also affects the running time, so it is a compromise between speed and accuracy.
\item member double epsilon Stopping criterion threshold used in the numerical scheme, which is a trade-off between precision and running time. A small value will yield more accurate solutions at the expense of a slower convergence.
\item member int iterations Stopping criterion iterations number used in the numerical scheme.
}
C. Zach, T. Pock and H. Bischof, "A Duality Based Approach for Realtime TV-L1 Optical Flow". Javier Sanchez, Enric Meinhardt-Llopis and Gabriele Facciolo. "TV-L1 Optical Flow Estimation".
\strong{C++ 头文件：}\code{#include <opencv2/optflow.hpp>}
\strong{构造}
\preformatted{
cvDualTVL1OpticalFlow(tau = 0.25, lambda = 0.15, theta = 0.3, nscales = 5, warps = 5, epsilon = 0.01, innnerIterations = 30, outerIterations = 10, scaleStep = 0.8, gamma = 0.0, medianFiltering = 5, useInitialFlow = FALSE)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvDualTVL1OpticalFlow(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calc(I0, I1, flow = NULL)}：Calculates an optical flow.
\item \code{clear()}：Clears the algorithm state.
\item \code{collectGarbage()}：Releases all inner buffers.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getEpsilon()}：Stopping criterion threshold used in the numerical scheme, which is a trade-off between precision and running time.
\item \code{getGamma()}：coefficient for additional illumination variation term
\item \code{getInnerIterations()}：Inner iterations (between outlier filtering) used in the numerical scheme.
\item \code{getLambda()}：Weight parameter for the data term, attachment parameter.
\item \code{getMedianFiltering()}：Median filter kernel size (1 = no filter) (3 or 5)
\item \code{getOuterIterations()}：Outer iterations (number of inner loops) used in the numerical scheme.
\item \code{getScaleStep()}：Step between scales (<1)
\item \code{getScalesNumber()}：Number of scales used to create the pyramid of images.
\item \code{getTau()}：Time step of the numerical scheme.
\item \code{getTheta()}：Weight parameter for (u - v)^2, tightness parameter.
\item \code{getUseInitialFlow()}：Use initial flow.
\item \code{getWarpingsNumber()}：Number of warpings per scale.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setEpsilon(val)}：Stopping criterion threshold used in the numerical scheme, which is a trade-off between precision and running time.
\item \code{setGamma(val)}：coefficient for additional illumination variation term
\item \code{setInnerIterations(val)}：Inner iterations (between outlier filtering) used in the numerical scheme.
\item \code{setLambda(val)}：Weight parameter for the data term, attachment parameter.
\item \code{setMedianFiltering(val)}：Median filter kernel size (1 = no filter) (3 or 5)
\item \code{setOuterIterations(val)}：Outer iterations (number of inner loops) used in the numerical scheme.
\item \code{setScaleStep(val)}：Step between scales (<1)
\item \code{setScalesNumber(val)}：Number of scales used to create the pyramid of images.
\item \code{setTau(val)}：Time step of the numerical scheme.
\item \code{setTheta(val)}：Weight parameter for (u - v)^2, tightness parameter.
\item \code{setUseInitialFlow(val)}：Use initial flow.
\item \code{setWarpingsNumber(val)}：Number of warpings per scale.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvDenseOpticalFlow}}（\code{cv::DenseOpticalFlow}）}
\keyword{opencv}
