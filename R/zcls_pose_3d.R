# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::ppf_match_3d::Pose3D
.ropecv_reg("cvPose3D",
  new = list(
    list(f = .ropecv_cv_ppf_match_3d_Pose3D_Pose3D_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_ppf_match_3d_Pose3D_Pose3D_new__1, p = c(Alpha = "dbl", ModelIndex = "int", NumVotes = "int"), r = c(TRUE, FALSE, FALSE), s = "Alpha, ModelIndex = 0, NumVotes = 0")
  ),
  m = list(
    appendPose = list(
      list(f = .ropecv_cv_ppf_match_3d_Pose3D_Pose3D_appendPose__0, p = c(IncrementalPose = "any"), r = c(FALSE), s = "IncrementalPose = NULL")
    ),
    printPose = list(
      list(f = .ropecv_cv_ppf_match_3d_Pose3D_Pose3D_printPose__0, p = c(), r = c(), s = "")
    ),
    updatePose = list(
      list(f = .ropecv_cv_ppf_match_3d_Pose3D_Pose3D_updatePose__0, p = c(NewPose = "any"), r = c(FALSE), s = "NewPose = NULL"),
      list(f = .ropecv_cv_ppf_match_3d_Pose3D_Pose3D_updatePose__1, p = c(NewR = "any", NewT = "any"), r = c(FALSE, FALSE), s = "NewR = NULL, NewT = NULL")
    ),
    updatePoseQuat = list(
      list(f = .ropecv_cv_ppf_match_3d_Pose3D_Pose3D_updatePoseQuat__0, p = c(Q = "any", NewT = "any"), r = c(FALSE, FALSE), s = "Q = NULL, NewT = NULL")
    )
  )
)
