# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::Stitcher
.ropecv_reg("cvStitcher",
  new = list(
    list(f = .ropecv_cv_Stitcher_Stitcher_create__0, p = c(mode = "any"), r = c(FALSE), s = "mode = PANORAMA")
  ),
  m = list(
    composePanorama = list(
      list(f = .ropecv_cv_Stitcher_Stitcher_composePanorama__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL"),
      list(f = .ropecv_cv_Stitcher_Stitcher_composePanorama__1, p = c(images = "matlist", dst = "mat"), r = c(TRUE, FALSE), s = "images, dst = NULL")
    ),
    compositingResol = list(
      list(f = .ropecv_cv_Stitcher_Stitcher_compositingResol__0, p = c(), r = c(), s = "")
    ),
    estimateTransform = list(
      list(f = .ropecv_cv_Stitcher_Stitcher_estimateTransform__0, p = c(images = "matlist", masks = "matlist"), r = c(TRUE, FALSE), s = "images, masks = NULL")
    ),
    interpolationFlags = list(
      list(f = .ropecv_cv_Stitcher_Stitcher_interpolationFlags__0, p = c(), r = c(), s = "")
    ),
    panoConfidenceThresh = list(
      list(f = .ropecv_cv_Stitcher_Stitcher_panoConfidenceThresh__0, p = c(), r = c(), s = "")
    ),
    registrationResol = list(
      list(f = .ropecv_cv_Stitcher_Stitcher_registrationResol__0, p = c(), r = c(), s = "")
    ),
    seamEstimationResol = list(
      list(f = .ropecv_cv_Stitcher_Stitcher_seamEstimationResol__0, p = c(), r = c(), s = "")
    ),
    setCompositingResol = list(
      list(f = .ropecv_cv_Stitcher_Stitcher_setCompositingResol__0, p = c(resol_mpx = "dbl"), r = c(TRUE), s = "resol_mpx")
    ),
    setInterpolationFlags = list(
      list(f = .ropecv_cv_Stitcher_Stitcher_setInterpolationFlags__0, p = c(interp_flags = "any"), r = c(TRUE), s = "interp_flags")
    ),
    setPanoConfidenceThresh = list(
      list(f = .ropecv_cv_Stitcher_Stitcher_setPanoConfidenceThresh__0, p = c(conf_thresh = "dbl"), r = c(TRUE), s = "conf_thresh")
    ),
    setRegistrationResol = list(
      list(f = .ropecv_cv_Stitcher_Stitcher_setRegistrationResol__0, p = c(resol_mpx = "dbl"), r = c(TRUE), s = "resol_mpx")
    ),
    setSeamEstimationResol = list(
      list(f = .ropecv_cv_Stitcher_Stitcher_setSeamEstimationResol__0, p = c(resol_mpx = "dbl"), r = c(TRUE), s = "resol_mpx")
    ),
    setWaveCorrection = list(
      list(f = .ropecv_cv_Stitcher_Stitcher_setWaveCorrection__0, p = c(flag = "lgl"), r = c(TRUE), s = "flag")
    ),
    stitch = list(
      list(f = .ropecv_cv_Stitcher_Stitcher_stitch__0, p = c(images = "matlist", dst = "mat"), r = c(TRUE, FALSE), s = "images, dst = NULL"),
      list(f = .ropecv_cv_Stitcher_Stitcher_stitch__1, p = c(images = "matlist", masks = "matlist", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "images, masks, dst = NULL")
    ),
    waveCorrection = list(
      list(f = .ropecv_cv_Stitcher_Stitcher_waveCorrection__0, p = c(), r = c(), s = "")
    ),
    workScale = list(
      list(f = .ropecv_cv_Stitcher_Stitcher_workScale__0, p = c(), r = c(), s = "")
    )
  )
)
