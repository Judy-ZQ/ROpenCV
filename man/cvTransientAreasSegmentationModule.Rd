% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTransientAreasSegmentationModule}
\alias{cvTransientAreasSegmentationModule}
\title{class which provides a transient/moving areas segmentation module}
\usage{cvTransientAreasSegmentationModule(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTransientAreasSegmentationModule} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{class which provides a transient/moving areas segmentation module}
\details{
perform a locally adapted segmentation by using the retina magno input data Based on Alexandre BENOIT thesis: "Le système visuel humain au secours de la vision par ordinateur"
3 spatio temporal filters are used:
\itemize{
\item a first one which filters the noise and local variations of the input motion energy
\item a second (more powerfull low pass spatial filter) which gives the neighborhood motion energy the segmentation consists in the comparison of these both outputs, if the local motion energy is higher to the neighborhood otion energy, then the area is considered as moving and is segmented
\item a stronger third low pass filter helps decision by providing a smooth information about the "motion context" in a wider area
}
\strong{C++ 头文件：}\code{#include <opencv2/bioinspired/transientareassegmentationmodule.hpp>}
\strong{构造}
\preformatted{
cvTransientAreasSegmentationModule(inputSize)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTransientAreasSegmentationModule(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{clearAllBuffers()}：cleans all the buffers of the instance
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getSegmentationPicture(dst = NULL)}：access function return the last segmentation result: a boolean picture which is resampled between 0 and 255 for a display purpose
\item \code{getSize()}：return the sze of the manage input and output images
\item \code{printSetup()}：parameters setup display method
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{run(inputToSegment, channelIndex = 0)}：main processing method, get result using methods getSegmentationPicture
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setup(segmentationParameterFile = '', applyDefaultSetupOnFailure = TRUE)}：try to open an XML segmentation parameters file to adjust current segmentation instance setup
\item \code{write(fs)}：write xml/yml formated parameters information
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
