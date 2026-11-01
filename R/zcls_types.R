# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::DMatch
.ropecv_reg("cvDMatch",
  new = list(
    list(f = .ropecv_cv_DMatch_DMatch_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_DMatch_DMatch_new__1, p = c(queryIdx = "int", trainIdx = "int", distance = "dbl"), r = c(TRUE, TRUE, TRUE), s = "queryIdx, trainIdx, distance"),
    list(f = .ropecv_cv_DMatch_DMatch_new__2, p = c(queryIdx = "int", trainIdx = "int", imgIdx = "int", distance = "dbl"), r = c(TRUE, TRUE, TRUE, TRUE), s = "queryIdx, trainIdx, imgIdx, distance")
  ),
  m = list(

  )
)

# cv::KeyPoint
.ropecv_reg("cvKeyPoint",
  new = list(
    list(f = .ropecv_cv_KeyPoint_KeyPoint_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_KeyPoint_KeyPoint_new__1, p = c(x = "dbl", y = "dbl", size = "dbl", angle = "dbl", response = "dbl", octave = "int", class_id = "int"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "x, y, size, angle = -1, response = 0, octave = 0, class_id = -1")
  ),
  m = list(

  )
)

# cv::RotatedRect
.ropecv_reg("cvRotatedRect",
  new = list(
    list(f = .ropecv_cv_RotatedRect_RotatedRect_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_RotatedRect_RotatedRect_new__1, p = c(center = "pt", size = "any", angle = "dbl"), r = c(TRUE, TRUE, TRUE), s = "center, size, angle"),
    list(f = .ropecv_cv_RotatedRect_RotatedRect_new__2, p = c(point1 = "pt", point2 = "pt", point3 = "pt"), r = c(TRUE, TRUE, TRUE), s = "point1, point2, point3")
  ),
  m = list(
    boundingRect = list(
      list(f = .ropecv_cv_RotatedRect_RotatedRect_boundingRect__0, p = c(), r = c(), s = "")
    ),
    boundingRect2f = list(
      list(f = .ropecv_cv_RotatedRect_RotatedRect_boundingRect2f__0, p = c(), r = c(), s = "")
    ),
    points = list(
      list(f = .ropecv_cv_RotatedRect_RotatedRect_points__0, p = c(), r = c(), s = "")
    )
  )
)
