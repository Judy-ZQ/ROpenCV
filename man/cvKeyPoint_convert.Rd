% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvKeyPoint_convert}
\alias{cvKeyPoint_convert}
\title{This method converts vector of keypoints to vector of points or the reverse, where each keypoint is assigned the same size and the same ori}
\usage{cvKeyPoint_convert(points2f, size = 1, response = 1, octave = 0, class_id = -1)}
\arguments{
\item{points2f}{Array of (x,y) coordinates of each keypoint}
\item{size}{keypoint diameter}
\item{response}{keypoint detector response on the keypoint (that is, strength of the keypoint)}
\item{octave}{pyramid octave in which the keypoint has been detected}
\item{class_id}{object id}
}
\value{\code{static void} 对应的 R 对象。}
\description{This method converts vector of keypoints to vector of points or the reverse, where each keypoint is assigned the same size and the same orientation.}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

static void convert(const std::vector<KeyPoint>& keypoints, std::vector<Point2f>& points2f, const std::vector<int>& keypointIndexes = std::vector<int>())

static void convert(const std::vector<Point2f>& points2f, std::vector<KeyPoint>& keypoints, float size = 1, float response = 1, int octave = 0, int class_id = -1)

}
}
\keyword{opencv}
