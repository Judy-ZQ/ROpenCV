# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_ppf_match_3d_PPF3DDetector_PPF3DDetector_new__0 <- function() .Call(`_ROpenCV_cv_ppf_match_3d_PPF3DDetector_PPF3DDetector_new__0`)
.ropecv_cv_ppf_match_3d_PPF3DDetector_PPF3DDetector_new__1 <- function(relativeSamplingStep, relativeDistanceStep = 0.05, numAngles = 30) .Call(`_ROpenCV_cv_ppf_match_3d_PPF3DDetector_PPF3DDetector_new__1`, relativeSamplingStep, relativeDistanceStep, numAngles)
.ropecv_cv_ppf_match_3d_PPF3DDetector_PPF3DDetector_match__0 <- function(self, scene, relativeSceneSampleStep = 0.2, relativeSceneDistance = 0.03) .Call(`_ROpenCV_cv_ppf_match_3d_PPF3DDetector_PPF3DDetector_match__0`, self, scene, relativeSceneSampleStep, relativeSceneDistance)
.ropecv_cv_ppf_match_3d_PPF3DDetector_PPF3DDetector_trainModel__0 <- function(self, Model) .Call(`_ROpenCV_cv_ppf_match_3d_PPF3DDetector_PPF3DDetector_trainModel__0`, self, Model)

cvPPF3DDetector <- function(...) .ropecv_new("cvPPF3DDetector", "cvPPF3DDetector", list(...))
