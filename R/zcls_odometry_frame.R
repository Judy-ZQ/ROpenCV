# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::OdometryFrame
.ropecv_reg("cvOdometryFrame",
  new = list(
    list(f = .ropecv_cv_OdometryFrame_OdometryFrame_new__0, p = c(depth = "mat", image = "mat", mask = "mat", normals = "mat"), r = c(FALSE, FALSE, FALSE, FALSE), s = "depth = NULL, image = NULL, mask = NULL, normals = NULL")
  ),
  m = list(
    getDepth = list(
      list(f = .ropecv_cv_OdometryFrame_OdometryFrame_getDepth__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getGrayImage = list(
      list(f = .ropecv_cv_OdometryFrame_OdometryFrame_getGrayImage__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getImage = list(
      list(f = .ropecv_cv_OdometryFrame_OdometryFrame_getImage__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getMask = list(
      list(f = .ropecv_cv_OdometryFrame_OdometryFrame_getMask__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getNormals = list(
      list(f = .ropecv_cv_OdometryFrame_OdometryFrame_getNormals__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getProcessedDepth = list(
      list(f = .ropecv_cv_OdometryFrame_OdometryFrame_getProcessedDepth__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getPyramidAt = list(
      list(f = .ropecv_cv_OdometryFrame_OdometryFrame_getPyramidAt__0, p = c(dst = "mat", pyrType = "any", level = "int"), r = c(FALSE, TRUE, TRUE), s = "dst = NULL, pyrType, level")
    ),
    getPyramidLevels = list(
      list(f = .ropecv_cv_OdometryFrame_OdometryFrame_getPyramidLevels__0, p = c(), r = c(), s = "")
    )
  )
)
