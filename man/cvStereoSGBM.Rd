% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvStereoSGBM}
\alias{cvStereoSGBM}
\title{The class implements the modified H}
\usage{cvStereoSGBM(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvStereoSGBM} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{The class implements the modified H. Hirschmuller algorithm [126] that differs from the original one as follows}
\details{
\itemize{
\item By default, the algorithm is single-pass, which means that you consider only 5 directions instead of 8. Set mode=StereoSGBM::MODE_HH in createStereoSGBM to run the full variant of the algorithm but beware that it may consume a lot of memory.
\item The algorithm matches blocks, not individual pixels. Though, setting blockSize=1 reduces the blocks to single pixels.
\item Mutual information cost function is not implemented. Instead, a simpler Birchfield-Tomasi sub-pixel metric from [28] is used. Though, the color images are supported as well.
\item Some pre- and post- processing steps from K. Konolige algorithm StereoBM are included, for example: pre-filtering (StereoBM::PREFILTER_XSOBEL type) and post-filtering (uniqueness check, quadratic interpolation and speckle filtering).
}
\itemize{
\item (Python) An example illustrating the use of the StereoSGBM matching algorithm can be found at opencv_source_code/samples/python/stereo_match.py
}
\strong{C++ 头文件：}\code{#include <opencv2/stereo.hpp>}
\strong{构造}
\preformatted{
cvStereoSGBM(minDisparity = 0, numDisparities = 16, blockSize = 3, P1 = 0, P2 = 0, disp12MaxDiff = 0, preFilterCap = 0, uniquenessRatio = 0, speckleWindowSize = 0, speckleRange = 0, mode = MODE_SGBM)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvStereoSGBM(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{compute(left, right, dst = NULL)}：Computes disparity map for the specified stereo pair.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getBlockSize()}
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getDisp12MaxDiff()}
\item \code{getMinDisparity()}
\item \code{getMode()}
\item \code{getNumDisparities()}
\item \code{getP1()}
\item \code{getP2()}
\item \code{getPreFilterCap()}
\item \code{getSpeckleRange()}
\item \code{getSpeckleWindowSize()}
\item \code{getUniquenessRatio()}
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setBlockSize(blockSize)}
\item \code{setDisp12MaxDiff(disp12MaxDiff)}
\item \code{setMinDisparity(minDisparity)}
\item \code{setMode(mode)}
\item \code{setNumDisparities(numDisparities)}
\item \code{setP1(P1)}
\item \code{setP2(P2)}
\item \code{setPreFilterCap(preFilterCap)}
\item \code{setSpeckleRange(speckleRange)}
\item \code{setSpeckleWindowSize(speckleWindowSize)}
\item \code{setUniquenessRatio(uniquenessRatio)}
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvStereoMatcher}}（\code{cv::StereoMatcher}）}
\keyword{opencv}
