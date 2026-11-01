% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvLargeKinfu}
\alias{cvLargeKinfu}
\title{Large Scale Dense Depth Fusion implementation}
\usage{cvLargeKinfu(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvLargeKinfu} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Large Scale Dense Depth Fusion implementation.}
\details{
This class implements a 3d reconstruction algorithm for larger environments using Spatially hashed TSDF volume "Submaps". It also runs a periodic posegraph optimization to minimize drift in tracking over long sequences. Currently the algorithm does not implement a relocalization or loop closure module. Potentially a Bag of words implementation or RGBD relocalization as described in Glocker et al. ISMAR 2013 will be implemented
It takes a sequence of depth images taken from depth sensor (or any depth images source such as stereo camera matching algorithm or even raymarching renderer). The output can be obtained as a vector of points and their normals or can be Phong-rendered from given camera pose.
An internal representation of a model is a spatially hashed voxel cube that stores TSDF values which represent the distance to the closest surface (for details read the [134] article about TSDF). There is no interface to that representation yet.
For posegraph optimization, a Submap abstraction over the Volume class is created. New submaps are added to the model when there is low visibility overlap between current viewing frustrum and the existing volume/model. Multiple submaps are simultaneously tracked and a posegraph is created and optimized periodically.
LargeKinfu does not use any OpenCL acceleration yet. To enable or disable it explicitly use cv::setUseOptimized or cv::ocl::setUseOpenCL .
This implementation is inspired from Kintinuous, InfiniTAM and other SOTA algorithms
You need to set the OPENCV_ENABLE_NONFREE option in CMake to use KinectFusion.
\strong{C++ 头文件：}\code{#include <opencv2/rgbd/large_kinfu.hpp>}
\strong{构造}
\preformatted{
cvLargeKinfu(params)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvLargeKinfu(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getCloud(points = NULL, normals = NULL)}
\item \code{getNormals(points, dst = NULL)}
\item \code{getPoints(dst = NULL)}
\item \code{render(dst = NULL, cameraPose)}
\item \code{reset()}
\item \code{update(depth)}
}
}
\keyword{opencv}
