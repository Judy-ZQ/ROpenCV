# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::Odometry
.ropecv_reg("cvOdometry",
  new = list(
    list(f = .ropecv_cv_Odometry_Odometry_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_Odometry_Odometry_new__1, p = c(otype = "any"), r = c(TRUE), s = "otype"),
    list(f = .ropecv_cv_Odometry_Odometry_new__2, p = c(otype = "any", settings = "any", algtype = "any"), r = c(TRUE, TRUE, TRUE), s = "otype, settings, algtype")
  ),
  m = list(
    compute = list(
      list(f = .ropecv_cv_Odometry_Odometry_compute__0, p = c(srcFrame = "any", dstFrame = "any", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "srcFrame, dstFrame, dst = NULL"),
      list(f = .ropecv_cv_Odometry_Odometry_compute__1, p = c(srcDepth = "mat", dstDepth = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "srcDepth, dstDepth, dst = NULL"),
      list(f = .ropecv_cv_Odometry_Odometry_compute__2, p = c(srcDepth = "mat", srcRGB = "mat", dstDepth = "mat", dstRGB = "mat", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE), s = "srcDepth, srcRGB, dstDepth, dstRGB, dst = NULL")
    ),
    getNormalsComputer = list(
      list(f = .ropecv_cv_Odometry_Odometry_getNormalsComputer__0, p = c(), r = c(), s = "")
    ),
    prepareFrame = list(
      list(f = .ropecv_cv_Odometry_Odometry_prepareFrame__0, p = c(frame = "any"), r = c(TRUE), s = "frame")
    ),
    prepareFrames = list(
      list(f = .ropecv_cv_Odometry_Odometry_prepareFrames__0, p = c(srcFrame = "any", dstFrame = "any"), r = c(TRUE, TRUE), s = "srcFrame, dstFrame")
    )
  )
)
