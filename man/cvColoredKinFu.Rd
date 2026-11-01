% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvColoredKinFu}
\alias{cvColoredKinFu}
\title{KinectFusion implementation}
\usage{cvColoredKinFu(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvColoredKinFu} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{KinectFusion implementation.}
\details{
This class implements a 3d reconstruction algorithm described in [134] paper.
It takes a sequence of depth images taken from depth sensor (or any depth images source such as stereo camera matching algorithm or even raymarching renderer). The output can be obtained as a vector of points and their normals or can be Phong-rendered from given camera pose.
An internal representation of a model is a voxel cuboid that keeps TSDF values which are a sort of distances to the surface (for details read the [134] article about TSDF). There is no interface to that representation yet.
KinFu uses OpenCL acceleration automatically if available. To enable or disable it explicitly use cv::setUseOptimized or cv::ocl::setUseOpenCL .
This implementation is based on kinfu-remake.
Note that the KinectFusion algorithm was patented and its use may be restricted by the list of patents mentioned in README.md file in this module directory.
That's why you need to set the OPENCV_ENABLE_NONFREE option in CMake to use KinectFusion.
\strong{C++ 头文件：}\code{#include <opencv2/rgbd/colored_kinfu.hpp>}
\strong{构造}
\preformatted{
cvColoredKinFu(params)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvColoredKinFu(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getCloud(points = NULL, normals = NULL)}：Gets points and normals of current 3d mesh.
\item \code{getNormals(points, dst = NULL)}：Calculates normals for given points.
\item \code{getPoints(dst = NULL)}：Gets points of current 3d mesh.
\item \code{render(dst = NULL, cameraPose)}：Renders a volume into an image.
\item \code{reset()}：Resets the algorithm.
\item \code{update(depth, rgb)}：Process next depth frame.
}
}
\keyword{opencv}
