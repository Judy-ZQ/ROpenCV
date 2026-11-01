% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvRetina}
\alias{cvRetina}
\title{class which allows the Gipsa/Listic Labs model to be used with OpenCV}
\usage{cvRetina(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvRetina} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{class which allows the Gipsa/Listic Labs model to be used with OpenCV.}
\details{
This retina model allows spatio-temporal image processing (applied on still images, video sequences). As a summary, these are the retina model properties:
\itemize{
\item It applies a spectral whithening (mid-frequency details enhancement)
\item high frequency spatio-temporal noise reduction
\item low frequency luminance to be reduced (luminance range compression)
\item local logarithmic luminance compression allows details to be enhanced in low light conditions
}
USE : this model can be used basically for spatio-temporal video effects but also for : _using the getParvo method output matrix : texture analysiswith enhanced signal to noise ratio and enhanced details robust against input images luminance ranges _using the getMagno method output matrix : motion analysis also with the previously cited properties
for more information, reer to the following papers : Benoit A., Caplier A., Durette B., Herault, J., "USING HUMAN VISUAL SYSTEM MODELING FOR BIO-INSPIRED LOW LEVEL IMAGE PROCESSING", Elsevier, Computer Vision and Image Understanding 114 (2010), pp. 758-773, DOI: http://dx.doi.org/10.1016/j.cviu.2010.01.011 Vision: Images, Signals and Neural Networks: Models of Neural Processing in Visual Perception (Progress in Neural Processing),By: Jeanny Herault, ISBN: 9814273686. WAPI (Tower ID): 113266891.
The retina filter includes the research contributions of phd/research collegues from which code has been redrawn by the author : take a look at the retinacolor.hpp module to discover Brice Chaix de Lavarene color mosaicing/demosaicing and the reference paper: B. Chaix de Lavarene, D. Alleysson, B. Durette, J. Herault (2007). "Efficient demosaicing through recursive filtering", IEEE International Conference on Image Processing ICIP 2007 take a look at imagelogpolprojection.hpp to discover retina spatial log sampling which originates from Barthelemy Durette phd with Jeanny Herault. A Retina / V1 cortex projection is also proposed and originates from Jeanny's discussions. more informations in the above cited Jeanny Heraults's book.
\strong{C++ 头文件：}\code{#include <opencv2/bioinspired/retina.hpp>}
\strong{构造}
\preformatted{
cvRetina(inputSize)
cvRetina(inputSize, colorMode, colorSamplingMethod = RETINA_COLOR_BAYER, useRetinaLogSampling = FALSE, reductionFactor = 1.0, samplingStrength = 10.0)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvRetina(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{activateContoursProcessing(activate)}：Activate/desactivate the Parvocellular pathway processing (contours information extraction), by default, it is activated.
\item \code{activateMovingContoursProcessing(activate)}：Activate/desactivate the Magnocellular pathway processing (motion information extraction), by default, it is activated.
\item \code{applyFastToneMapping(inputImage, dst = NULL)}：Method which processes an image in the aim to correct its luminance correct backlight problems, enhance details in shadows.
\item \code{clear()}：Clears the algorithm state.
\item \code{clearBuffers()}：Clears all retina buffers.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getInputSize()}：Retreive retina input buffer size.
\item \code{getMagno(dst = NULL)}：Accessor of the motion channel of the retina (models peripheral vision).
\item \code{getMagnoRAW(dst = NULL)}：Accessor of the motion channel of the retina (models peripheral vision).
\item \code{getOutputSize()}：Retreive retina output buffer size that can be different from the input if a spatial log transformation is applied.
\item \code{getParvo(dst = NULL)}：Accessor of the details channel of the retina (models foveal vision).
\item \code{getParvoRAW(dst = NULL)}：Accessor of the details channel of the retina (models foveal vision).
\item \code{printSetup()}：Outputs a string showing the used parameters setup.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{run(inputImage)}：Method which allows retina to be applied on an input image,.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setColorSaturation(saturateColors = TRUE, colorSaturationValue = 4.0)}：Activate color saturation as the final step of the color demultiplexing process -> this saturation is a sigmoide function applied to each channel of the demultiplexed image.
\item \code{setup(retinaParameterFile = '', applyDefaultSetupOnFailure = TRUE)}：Try to open an XML retina parameters file to adjust current retina instance setup.
\item \code{setupIPLMagnoChannel(normaliseOutput = TRUE, parasolCells_beta = 0, parasolCells_tau = 0, parasolCells_k = 7, amacrinCellsTemporalCutFrequency = 1.2, V0CompressionParameter = 0.95, localAdaptintegration_tau = 0, localAdaptintegration_k = 7)}：Set parameters values for the Inner Plexiform Layer (IPL) magnocellular channel.
\item \code{setupOPLandIPLParvoChannel(colorMode = TRUE, normaliseOutput = TRUE, photoreceptorsLocalAdaptationSensitivity = 0.7, photoreceptorsTemporalConstant = 0.5, photoreceptorsSpatialConstant = 0.53, horizontalCellsGain = 0, HcellsTemporalConstant = 1, HcellsSpatialConstant = 7, ganglionCellsSensitivity = 0.7)}：Setup the OPL and IPL parvo channels (see biologocal model)
\item \code{write(fs)}：Write xml/yml formated parameters information.
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
