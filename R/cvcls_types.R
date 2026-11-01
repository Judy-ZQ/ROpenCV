# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_DMatch_DMatch_new__0 <- function() .Call(`_ROpenCV_cv_DMatch_DMatch_new__0`)
.ropecv_cv_DMatch_DMatch_new__1 <- function(queryIdx, trainIdx, distance) .Call(`_ROpenCV_cv_DMatch_DMatch_new__1`, queryIdx, trainIdx, distance)
.ropecv_cv_DMatch_DMatch_new__2 <- function(queryIdx, trainIdx, imgIdx, distance) .Call(`_ROpenCV_cv_DMatch_DMatch_new__2`, queryIdx, trainIdx, imgIdx, distance)
.ropecv_cv_KeyPoint_KeyPoint_new__0 <- function() .Call(`_ROpenCV_cv_KeyPoint_KeyPoint_new__0`)
.ropecv_cv_KeyPoint_KeyPoint_new__1 <- function(x, y, size, angle = -1, response = 0, octave = 0, class_id = -1) .Call(`_ROpenCV_cv_KeyPoint_KeyPoint_new__1`, x, y, size, angle, response, octave, class_id)
.ropecv_cv_KeyPoint_KeyPoint_overlap__0 <- function(kp1, kp2) .Call(`_ROpenCV_cv_KeyPoint_KeyPoint_overlap__0`, kp1, kp2)
.ropecv_cv_KeyPoint_KeyPoint_convert__1 <- function(keypoints, keypointIndexes = NULL) .Call(`_ROpenCV_cv_KeyPoint_KeyPoint_convert__1`, keypoints, keypointIndexes)
.ropecv_cv_KeyPoint_KeyPoint_convert__2 <- function(points2f, size = 1, response = 1, octave = 0, class_id = -1) .Call(`_ROpenCV_cv_KeyPoint_KeyPoint_convert__2`, points2f, size, response, octave, class_id)
.ropecv_cv_RotatedRect_RotatedRect_new__0 <- function() .Call(`_ROpenCV_cv_RotatedRect_RotatedRect_new__0`)
.ropecv_cv_RotatedRect_RotatedRect_new__1 <- function(center, size, angle) .Call(`_ROpenCV_cv_RotatedRect_RotatedRect_new__1`, center, size, angle)
.ropecv_cv_RotatedRect_RotatedRect_new__2 <- function(point1, point2, point3) .Call(`_ROpenCV_cv_RotatedRect_RotatedRect_new__2`, point1, point2, point3)
.ropecv_cv_RotatedRect_RotatedRect_boundingRect__0 <- function(self) .Call(`_ROpenCV_cv_RotatedRect_RotatedRect_boundingRect__0`, self)
.ropecv_cv_RotatedRect_RotatedRect_boundingRect2f__0 <- function(self) .Call(`_ROpenCV_cv_RotatedRect_RotatedRect_boundingRect2f__0`, self)
.ropecv_cv_RotatedRect_RotatedRect_points__0 <- function(self) .Call(`_ROpenCV_cv_RotatedRect_RotatedRect_points__0`, self)

cvDMatch <- function(...) .ropecv_new("cvDMatch", "cvDMatch", list(...))

cvKeyPoint <- function(...) .ropecv_new("cvKeyPoint", "cvKeyPoint", list(...))

# cv::KeyPoint::overlap
cvKeyPoint_overlap <- function(kp1, kp2) .Call(`_ROpenCV_cv_KeyPoint_KeyPoint_overlap__0`, kp1, kp2)

# cv::KeyPoint::convert
cvKeyPoint_convert <- function(keypoints, keypointIndexes = NULL) .Call(`_ROpenCV_cv_KeyPoint_KeyPoint_convert__1`, keypoints, keypointIndexes)

# cv::KeyPoint::convert
cvKeyPoint_convert <- function(points2f, size = 1, response = 1, octave = 0, class_id = -1) .Call(`_ROpenCV_cv_KeyPoint_KeyPoint_convert__2`, points2f, size, response, octave, class_id)

cvRotatedRect <- function(...) .ropecv_new("cvRotatedRect", "cvRotatedRect", list(...))
