# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::reg::MapAffine
.ropecv_reg("cvMapAffine",
  new = list(
    list(f = .ropecv_cv_reg_MapAffine_MapAffine_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_reg_MapAffine_MapAffine_new__1, p = c(linTr = "mat", shift = "mat"), r = c(TRUE, TRUE), s = "linTr, shift")
  ),
  m = list(
    compose = list(
      list(f = .ropecv_cv_reg_MapAffine_MapAffine_compose__0, p = c(map = "obj"), r = c(TRUE), s = "map")
    ),
    getLinTr = list(
      list(f = .ropecv_cv_reg_MapAffine_MapAffine_getLinTr__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getShift = list(
      list(f = .ropecv_cv_reg_MapAffine_MapAffine_getShift__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    inverseMap = list(
      list(f = .ropecv_cv_reg_MapAffine_MapAffine_inverseMap__0, p = c(), r = c(), s = "")
    ),
    inverseWarp = list(
      list(f = .ropecv_cv_reg_MapAffine_MapAffine_inverseWarp__0, p = c(img1 = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "img1, dst = NULL")
    ),
    scale = list(
      list(f = .ropecv_cv_reg_MapAffine_MapAffine_scale__0, p = c(factor = "dbl"), r = c(TRUE), s = "factor")
    ),
    warp = list(
      list(f = .ropecv_cv_reg_Map_Map_warp__0, p = c(img1 = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "img1, dst = NULL")
    )
  )
)
