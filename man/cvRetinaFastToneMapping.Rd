% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvRetinaFastToneMapping}
\alias{cvRetinaFastToneMapping}
\title{a wrapper class which allows the tone mapping algorithm of Meylan&al(2007) to be used with OpenCV}
\usage{cvRetinaFastToneMapping(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvRetinaFastToneMapping} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{a wrapper class which allows the tone mapping algorithm of Meylan&al(2007) to be used with OpenCV.}
\details{
This algorithm is already implemented in thre Retina class (retina::applyFastToneMapping) but used it does not require all the retina model to be allocated. This allows a light memory use for low memory devices (smartphones, etc. As a summary, these are the model properties:
\itemize{
\item 2 stages of local luminance adaptation with a different local neighborhood for each.
\item first stage models the retina photorecetors local luminance adaptation
\item second stage models th ganglion cells local information adaptation
\item compared to the initial publication, this class uses spatio-temporal low pass filters instead of spatial only filters. this can help noise robustness and temporal stability for video sequence use cases.
}
for more information, read to the following papers : Meylan L., Alleysson D., and Susstrunk S., A Model of Retinal Local Adaptation for the Tone Mapping of Color Filter Array Images, Journal of Optical Society of America, A, Vol. 24, N 9, September, 1st, 2007, pp. 2807-2816Benoit A., Caplier A., Durette B., Herault, J., "USING HUMAN VISUAL SYSTEM MODELING FOR BIO-INSPIRED LOW LEVEL IMAGE PROCESSING", Elsevier, Computer Vision and Image Understanding 114 (2010), pp. 758-773, DOI: http://dx.doi.org/10.1016/j.cviu.2010.01.011 regarding spatio-temporal filter and the bigger retina model : Vision: Images, Signals and Neural Networks: Models of Neural Processing in Visual Perception (Progress in Neural Processing),By: Jeanny Herault, ISBN: 9814273686. WAPI (Tower ID): 113266891.
\strong{C++ 头文件：}\code{#include <opencv2/bioinspired/retinafasttonemapping.hpp>}
\strong{构造}
\preformatted{
cvRetinaFastToneMapping(inputSize)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvRetinaFastToneMapping(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{applyFastToneMapping(inputImage, dst = NULL)}：applies a luminance correction (initially High Dynamic Range (HDR) tone mapping)
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setup(photoreceptorsNeighborhoodRadius = 3, ganglioncellsNeighborhoodRadius = 1, meanLuminanceModulatorK = 1)}：updates tone mapping behaviors by adjusing the local luminance computation area
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
