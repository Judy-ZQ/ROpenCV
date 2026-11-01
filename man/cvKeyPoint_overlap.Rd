% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvKeyPoint_overlap}
\alias{cvKeyPoint_overlap}
\title{This method computes overlap for pair of keypoints}
\usage{cvKeyPoint_overlap(kp1, kp2)}
\arguments{
\item{kp1}{First keypoint}
\item{kp2}{Second keypoint}
}
\value{\code{static float} 对应的 R 对象。}
\description{This method computes overlap for pair of keypoints. Overlap is the ratio between area of keypoint regions' intersection and area of keypoint regions' union (considering keypoint region as circle). If they don't overlap, we get zero. If they coincide at same location with same size, we get 1.}
\keyword{opencv}
