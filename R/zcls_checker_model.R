# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::mcc::CChecker
.ropecv_reg("cvCChecker",
  new = list(
    list(f = .ropecv_cv_mcc_CChecker_CChecker_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    getBox = list(
      list(f = .ropecv_cv_mcc_CChecker_CChecker_getBox__0, p = c(), r = c(), s = "")
    ),
    getCenter = list(
      list(f = .ropecv_cv_mcc_CChecker_CChecker_getCenter__0, p = c(), r = c(), s = "")
    ),
    getChartsRGB = list(
      list(f = .ropecv_cv_mcc_CChecker_CChecker_getChartsRGB__0, p = c(), r = c(), s = "")
    ),
    getChartsYCbCr = list(
      list(f = .ropecv_cv_mcc_CChecker_CChecker_getChartsYCbCr__0, p = c(), r = c(), s = "")
    ),
    getColorCharts = list(
      list(f = .ropecv_cv_mcc_CChecker_CChecker_getColorCharts__0, p = c(), r = c(), s = "")
    ),
    getCost = list(
      list(f = .ropecv_cv_mcc_CChecker_CChecker_getCost__0, p = c(), r = c(), s = "")
    ),
    getTarget = list(
      list(f = .ropecv_cv_mcc_CChecker_CChecker_getTarget__0, p = c(), r = c(), s = "")
    ),
    setBox = list(
      list(f = .ropecv_cv_mcc_CChecker_CChecker_setBox__0, p = c(box = "lst"), r = c(TRUE), s = "box")
    ),
    setCenter = list(
      list(f = .ropecv_cv_mcc_CChecker_CChecker_setCenter__0, p = c(center = "pt"), r = c(TRUE), s = "center")
    ),
    setChartsRGB = list(
      list(f = .ropecv_cv_mcc_CChecker_CChecker_setChartsRGB__0, p = c(chartsRGB = "any"), r = c(TRUE), s = "chartsRGB")
    ),
    setChartsYCbCr = list(
      list(f = .ropecv_cv_mcc_CChecker_CChecker_setChartsYCbCr__0, p = c(chartsYCbCr = "any"), r = c(TRUE), s = "chartsYCbCr")
    ),
    setCost = list(
      list(f = .ropecv_cv_mcc_CChecker_CChecker_setCost__0, p = c(cost = "dbl"), r = c(TRUE), s = "cost")
    ),
    setTarget = list(
      list(f = .ropecv_cv_mcc_CChecker_CChecker_setTarget__0, p = c(target = "any"), r = c(TRUE), s = "target")
    )
  )
)

# cv::mcc::CCheckerDraw
.ropecv_reg("cvCCheckerDraw",
  new = list(
    list(f = .ropecv_cv_mcc_CCheckerDraw_CCheckerDraw_create__0, p = c(pChecker = "obj", color = "scalar", thickness = "int"), r = c(TRUE, TRUE, FALSE), s = "pChecker, color, thickness = 2")
  ),
  m = list(
    draw = list(
      list(f = .ropecv_cv_mcc_CCheckerDraw_CCheckerDraw_draw__0, p = c(img = "mat"), r = c(FALSE), s = "img = NULL")
    )
  )
)
