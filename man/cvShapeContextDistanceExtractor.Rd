% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvShapeContextDistanceExtractor}
\alias{cvShapeContextDistanceExtractor}
\title{Implementation of the Shape Context descriptor and matching algorithm}
\usage{cvShapeContextDistanceExtractor(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvShapeContextDistanceExtractor} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Implementation of the Shape Context descriptor and matching algorithm.}
\details{
proposed by Belongie et al. in "Shape Matching and Object Recognition Using Shape Contexts" (PAMI 2002). This implementation is packaged in a generic scheme, in order to allow you the implementation of the common variations of the original pipeline.
\strong{C++ 头文件：}\code{#include <opencv2/shape/shape_distance.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvShapeContextDistanceExtractor(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{computeDistance(contour1, contour2)}：Compute the shape distance between two shapes defined by its contours.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getAngularBins()}
\item \code{getBendingEnergyWeight()}
\item \code{getCostExtractor()}
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getImageAppearanceWeight()}
\item \code{getImages(image1 = NULL, image2 = NULL)}
\item \code{getInnerRadius()}
\item \code{getIterations()}
\item \code{getOuterRadius()}
\item \code{getRadialBins()}
\item \code{getRotationInvariant()}
\item \code{getShapeContextWeight()}
\item \code{getStdDev()}
\item \code{getTransformAlgorithm()}
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setAngularBins(nAngularBins)}：Establish the number of angular bins for the Shape Context Descriptor used in the shape matching pipeline.
\item \code{setBendingEnergyWeight(bendingEnergyWeight)}：Set the weight of the Bending Energy in the final value of the shape distance. The bending energy definition depends on what transformation is being used to align the shapes. The final value of the shape distance is a user-defined linear combination of the shape context distance, an image appearance distance, and a bending energy.
\item \code{setCostExtractor(comparer)}：Set the algorithm used for building the shape context descriptor cost matrix.
\item \code{setImageAppearanceWeight(imageAppearanceWeight)}：Set the weight of the Image Appearance cost in the final value of the shape distance. The image appearance cost is defined as the sum of squared brightness differences in Gaussian windows around corresponding image points. The final value of the shape distance is a user-defined linear combination of the shape context distance, an image appearance distance, and a bending energy. If this value is set to a number different from 0, is mandatory to set the images that correspond to each shape.
\item \code{setImages(image1, image2)}：Set the images that correspond to each shape. This images are used in the calculation of the Image Appearance cost.
\item \code{setInnerRadius(innerRadius)}：Set the inner radius of the shape context descriptor.
\item \code{setIterations(iterations)}
\item \code{setOuterRadius(outerRadius)}：Set the outer radius of the shape context descriptor.
\item \code{setRadialBins(nRadialBins)}：Establish the number of radial bins for the Shape Context Descriptor used in the shape matching pipeline.
\item \code{setRotationInvariant(rotationInvariant)}
\item \code{setShapeContextWeight(shapeContextWeight)}：Set the weight of the shape context distance in the final value of the shape distance. The shape context distance between two shapes is defined as the symmetric sum of shape context matching costs over best matching points. The final value of the shape distance is a user-defined linear combination of the shape context distance, an image appearance distance, and a bending energy.
\item \code{setStdDev(sigma)}：Set the value of the standard deviation for the Gaussian window for the image appearance cost.
\item \code{setTransformAlgorithm(transformer)}：Set the algorithm used for aligning the shapes.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvShapeDistanceExtractor}}（\code{cv::ShapeDistanceExtractor}）}
\keyword{opencv}
