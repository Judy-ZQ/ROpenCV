# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_ppf_match_3d_Pose3D_Pose3D_new__0 <- function() .Call(`_ROpenCV_cv_ppf_match_3d_Pose3D_Pose3D_new__0`)
.ropecv_cv_ppf_match_3d_Pose3D_Pose3D_new__1 <- function(Alpha, ModelIndex = 0, NumVotes = 0) .Call(`_ROpenCV_cv_ppf_match_3d_Pose3D_Pose3D_new__1`, Alpha, ModelIndex, NumVotes)
.ropecv_cv_ppf_match_3d_Pose3D_Pose3D_appendPose__0 <- function(self, IncrementalPose = NULL) .Call(`_ROpenCV_cv_ppf_match_3d_Pose3D_Pose3D_appendPose__0`, self, IncrementalPose)
.ropecv_cv_ppf_match_3d_Pose3D_Pose3D_printPose__0 <- function(self) .Call(`_ROpenCV_cv_ppf_match_3d_Pose3D_Pose3D_printPose__0`, self)
.ropecv_cv_ppf_match_3d_Pose3D_Pose3D_updatePose__0 <- function(self, NewPose = NULL) .Call(`_ROpenCV_cv_ppf_match_3d_Pose3D_Pose3D_updatePose__0`, self, NewPose)
.ropecv_cv_ppf_match_3d_Pose3D_Pose3D_updatePose__1 <- function(self, NewR = NULL, NewT = NULL) .Call(`_ROpenCV_cv_ppf_match_3d_Pose3D_Pose3D_updatePose__1`, self, NewR, NewT)
.ropecv_cv_ppf_match_3d_Pose3D_Pose3D_updatePoseQuat__0 <- function(self, Q = NULL, NewT = NULL) .Call(`_ROpenCV_cv_ppf_match_3d_Pose3D_Pose3D_updatePoseQuat__0`, self, Q, NewT)

cvPose3D <- function(...) .ropecv_new("cvPose3D", "cvPose3D", list(...))
