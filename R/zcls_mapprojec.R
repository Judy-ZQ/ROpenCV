# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::reg::MapProjec
.ropecv_reg("cvMapProjec",
  new = list(
    list(f = .ropecv_cv_reg_MapProjec_MapProjec_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_reg_MapProjec_MapProjec_new__1, p = c(projTr = "mat"), r = c(TRUE), s = "projTr")
  ),
  m = list(
    compose = list(
      list(f = .ropecv_cv_reg_MapProjec_MapProjec_compose__0, p = c(map = "obj"), r = c(TRUE), s = "map")
    ),
    getProjTr = list(
      list(f = .ropecv_cv_reg_MapProjec_MapProjec_getProjTr__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    inverseMap = list(
      list(f = .ropecv_cv_reg_MapProjec_MapProjec_inverseMap__0, p = c(), r = c(), s = "")
    ),
    inverseWarp = list(
      list(f = .ropecv_cv_reg_MapProjec_MapProjec_inverseWarp__0, p = c(img1 = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "img1, dst = NULL")
    ),
    normalize = list(
      list(f = .ropecv_cv_reg_MapProjec_MapProjec_normalize__0, p = c(), r = c(), s = "")
    ),
    scale = list(
      list(f = .ropecv_cv_reg_MapProjec_MapProjec_scale__0, p = c(factor = "dbl"), r = c(TRUE), s = "factor")
    ),
    warp = list(
      list(f = .ropecv_cv_reg_Map_Map_warp__0, p = c(img1 = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "img1, dst = NULL")
    )
  )
)
