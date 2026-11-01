# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::ximgproc::DisparityFilter
.ropecv_reg("cvDisparityFilter",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    filter = list(
      list(f = .ropecv_cv_ximgproc_DisparityFilter_DisparityFilter_filter__0, p = c(disparity_map_left = "mat", left_view = "mat", disparity_map_right = "mat", ROI = "rect", right_view = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "disparity_map_left, left_view, disparity_map_right = NULL, ROI = NULL, right_view = NULL, dst = NULL")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ximgproc::DisparityWLSFilter
.ropecv_reg("cvDisparityWLSFilter",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    filter = list(
      list(f = .ropecv_cv_ximgproc_DisparityFilter_DisparityFilter_filter__0, p = c(disparity_map_left = "mat", left_view = "mat", disparity_map_right = "mat", ROI = "rect", right_view = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "disparity_map_left, left_view, disparity_map_right = NULL, ROI = NULL, right_view = NULL, dst = NULL")
    ),
    getConfidenceMap = list(
      list(f = .ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getConfidenceMap__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDepthDiscontinuityRadius = list(
      list(f = .ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getDepthDiscontinuityRadius__0, p = c(), r = c(), s = "")
    ),
    getLRCthresh = list(
      list(f = .ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getLRCthresh__0, p = c(), r = c(), s = "")
    ),
    getLambda = list(
      list(f = .ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getLambda__0, p = c(), r = c(), s = "")
    ),
    getROI = list(
      list(f = .ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getROI__0, p = c(), r = c(), s = "")
    ),
    getSigmaColor = list(
      list(f = .ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getSigmaColor__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setDepthDiscontinuityRadius = list(
      list(f = .ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_setDepthDiscontinuityRadius__0, p = c(disc_radius = "int"), r = c(TRUE), s = "disc_radius")
    ),
    setLRCthresh = list(
      list(f = .ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_setLRCthresh__0, p = c(LRC_thresh = "int"), r = c(TRUE), s = "LRC_thresh")
    ),
    setLambda = list(
      list(f = .ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_setLambda__0, p = c(lambda = "dbl"), r = c(TRUE), s = "lambda")
    ),
    setSigmaColor = list(
      list(f = .ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_setSigmaColor__0, p = c(sigma_color = "dbl"), r = c(TRUE), s = "sigma_color")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)
