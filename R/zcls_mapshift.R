# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::reg::MapShift
.ropecv_reg("cvMapShift",
  new = list(
    list(f = .ropecv_cv_reg_MapShift_MapShift_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_reg_MapShift_MapShift_new__1, p = c(shift = "mat"), r = c(TRUE), s = "shift")
  ),
  m = list(
    compose = list(
      list(f = .ropecv_cv_reg_MapShift_MapShift_compose__0, p = c(map = "obj"), r = c(TRUE), s = "map")
    ),
    getShift = list(
      list(f = .ropecv_cv_reg_MapShift_MapShift_getShift__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    inverseMap = list(
      list(f = .ropecv_cv_reg_MapShift_MapShift_inverseMap__0, p = c(), r = c(), s = "")
    ),
    inverseWarp = list(
      list(f = .ropecv_cv_reg_MapShift_MapShift_inverseWarp__0, p = c(img1 = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "img1, dst = NULL")
    ),
    scale = list(
      list(f = .ropecv_cv_reg_MapShift_MapShift_scale__0, p = c(factor = "dbl"), r = c(TRUE), s = "factor")
    ),
    warp = list(
      list(f = .ropecv_cv_reg_Map_Map_warp__0, p = c(img1 = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "img1, dst = NULL")
    )
  )
)
