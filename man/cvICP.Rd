% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvICP}
\alias{cvICP}
\title{This class implements a very efficient and robust variant of the iterative closest point (ICP) algorithm}
\usage{cvICP(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvICP} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{This class implements a very efficient and robust variant of the iterative closest point (ICP) algorithm. The task is to register a 3D model (or point cloud) against a set of noisy target data. The variants are put together by myself after certain tests. The task is to be able to match partial, noisy point clouds in cluttered scenes, quickly. You will find that my emphasis is on the performance, while retaining the accuracy. This implementation is based on Tolga Birdal's MATLAB implementation in here: http://www.mathworks.com/matlabcentral/fileexchange/47152-icp-registration-using-efficient-variants-and-multi-resolution-scheme The main contributions come from}
\details{
\enumerate{
\item Picky ICP: http://www5.informatik.uni-erlangen.de/Forschung/Publikationen/2003/Zinsser03-ARI.pdf
\item Efficient variants of the ICP Algorithm: http://docs.happycoders.org/orgadoc/graphics/imaging/fasticp_paper.pdf
\item Geometrically Stable Sampling for the ICP Algorithm: https://graphics.stanford.edu/papers/stabicp/stabicp.pdf
\item Multi-resolution registration: http://www.cvl.iis.u-tokyo.ac.jp/~oishi/Papers/Alignment/Jost_MultiResolutionICP_3DIM03.pdf
\item Linearization of Point-to-Plane metric by Kok Lim Low: https://www.comp.nus.edu.sg/~lowkl/publications/lowk_point-to-plane_icp_techrep.pdf
}
\strong{C++ 头文件：}\code{#include <opencv2/surface_matching/icp.hpp>}
\strong{构造}
\preformatted{
cvICP()
cvICP(iterations, tolerence = 0.05, rejectionScale = 2.5, numLevels = 6, sampleType = ICP_SAMPLING_TYPE_UNIFORM, numMaxCorr = 1)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvICP(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{registerModelToScene(srcPC, dstPC, poses = NULL)}：Perform registration with multiple initial poses.
}
}
\keyword{opencv}
