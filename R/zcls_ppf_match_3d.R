# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::ppf_match_3d::PPF3DDetector
.ropecv_reg("cvPPF3DDetector",
  new = list(
    list(f = .ropecv_cv_ppf_match_3d_PPF3DDetector_PPF3DDetector_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_ppf_match_3d_PPF3DDetector_PPF3DDetector_new__1, p = c(relativeSamplingStep = "dbl", relativeDistanceStep = "dbl", numAngles = "dbl"), r = c(TRUE, FALSE, FALSE), s = "relativeSamplingStep, relativeDistanceStep = 0.05, numAngles = 30")
  ),
  m = list(
    match = list(
      list(f = .ropecv_cv_ppf_match_3d_PPF3DDetector_PPF3DDetector_match__0, p = c(scene = "any", relativeSceneSampleStep = "dbl", relativeSceneDistance = "dbl"), r = c(TRUE, FALSE, FALSE), s = "scene, relativeSceneSampleStep = 0.2, relativeSceneDistance = 0.03")
    ),
    trainModel = list(
      list(f = .ropecv_cv_ppf_match_3d_PPF3DDetector_PPF3DDetector_trainModel__0, p = c(Model = "any"), r = c(TRUE), s = "Model")
    )
  )
)
