% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_drawMatches}
\alias{cv_drawMatches}
\title{Draws the found matches of keypoints from two images}
\usage{cv_drawMatches(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Draws the found matches of keypoints from two images.}
\details{
This function draws matches of keypoints from two images in the output image. Match is a line connecting two keypoints (circles). See cv::DrawMatchesFlags.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void drawMatches(InputArray img1, const std::vector<KeyPoint>& keypoints1, InputArray img2, const std::vector<KeyPoint>& keypoints2, const std::vector<DMatch>& matches1to2, InputOutputArray outImg, const Scalar& matchColor = Scalar::all(-1), const Scalar& singlePointColor = Scalar::all(-1), const std::vector<char>& matchesMask = std::vector<char>(), DrawMatchesFlags flags = DrawMatchesFlags::DEFAULT)

void drawMatches(InputArray img1, const std::vector<KeyPoint>& keypoints1, InputArray img2, const std::vector<KeyPoint>& keypoints2, const std::vector<DMatch>& matches1to2, InputOutputArray outImg, const int matchesThickness, const Scalar& matchColor = Scalar::all(-1), const Scalar& singlePointColor = Scalar::all(-1), const std::vector<char>& matchesMask = std::vector<char>(), DrawMatchesFlags flags = DrawMatchesFlags::DEFAULT)

void drawMatches(InputArray img1, const std::vector<KeyPoint>& keypoints1, InputArray img2, const std::vector<KeyPoint>& keypoints2, const std::vector<std::vector<DMatch> >& matches1to2, InputOutputArray outImg, const Scalar& matchColor = Scalar::all(-1), const Scalar& singlePointColor = Scalar::all(-1), const std::vector<std::vector<char> >& matchesMask = std::vector<std::vector<char> >(), DrawMatchesFlags flags = DrawMatchesFlags::DEFAULT)

}

\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
}
\keyword{opencv}
