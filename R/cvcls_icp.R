# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_ppf_match_3d_ICP_ICP_new__0 <- function() .Call(`_ROpenCV_cv_ppf_match_3d_ICP_ICP_new__0`)
.ropecv_cv_ppf_match_3d_ICP_ICP_new__1 <- function(iterations, tolerence = 0.05, rejectionScale = 2.5, numLevels = 6, sampleType = ICP_SAMPLING_TYPE_UNIFORM, numMaxCorr = 1) .Call(`_ROpenCV_cv_ppf_match_3d_ICP_ICP_new__1`, iterations, tolerence, rejectionScale, numLevels, sampleType, numMaxCorr)
.ropecv_cv_ppf_match_3d_ICP_ICP_registerModelToScene__0 <- function(self, srcPC, dstPC, poses = NULL) .Call(`_ROpenCV_cv_ppf_match_3d_ICP_ICP_registerModelToScene__0`, self, srcPC, dstPC, poses)
.ropecv_cv_ppf_match_3d_ICP_ICP_registerModelToScene__1 <- function(self, srcPC, dstPC) .Call(`_ROpenCV_cv_ppf_match_3d_ICP_ICP_registerModelToScene__1`, self, srcPC, dstPC)

cvICP <- function(...) .ropecv_new("cvICP", "cvICP", list(...))
