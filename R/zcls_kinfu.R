# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::kinfu::KinFu
.ropecv_reg("cvKinFu",
  new = list(
    list(f = .ropecv_cv_kinfu_KinFu_KinFu_create__0, p = c(params = "obj"), r = c(TRUE), s = "params")
  ),
  m = list(
    getCloud = list(
      list(f = .ropecv_cv_kinfu_KinFu_KinFu_getCloud__0, p = c(points = "mat", normals = "mat"), r = c(FALSE, FALSE), s = "points = NULL, normals = NULL")
    ),
    getNormals = list(
      list(f = .ropecv_cv_kinfu_KinFu_KinFu_getNormals__0, p = c(points = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "points, dst = NULL")
    ),
    getPoints = list(
      list(f = .ropecv_cv_kinfu_KinFu_KinFu_getPoints__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    render = list(
      list(f = .ropecv_cv_kinfu_KinFu_KinFu_render__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL"),
      list(f = .ropecv_cv_kinfu_KinFu_KinFu_render__1, p = c(dst = "mat", cameraPose = "any"), r = c(FALSE, TRUE), s = "dst = NULL, cameraPose")
    ),
    reset = list(
      list(f = .ropecv_cv_kinfu_KinFu_KinFu_reset__0, p = c(), r = c(), s = "")
    ),
    update = list(
      list(f = .ropecv_cv_kinfu_KinFu_KinFu_update__0, p = c(depth = "mat"), r = c(TRUE), s = "depth")
    )
  )
)

# cv::kinfu::Params
.ropecv_reg("cvKinfuParams",
  new = list(
    list(f = .ropecv_cv_kinfu_Params_Params_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_kinfu_Params_Params_new__1, p = c(volumeInitialPose = "any"), r = c(TRUE), s = "volumeInitialPose"),
    list(f = .ropecv_cv_kinfu_Params_Params_new__2, p = c(volumeInitialPoseRot = "any", volumeInitialPoseTransl = "any"), r = c(TRUE, TRUE), s = "volumeInitialPoseRot, volumeInitialPoseTransl")
  ),
  m = list(
    setInitialVolumePose = list(
      list(f = .ropecv_cv_kinfu_Params_Params_setInitialVolumePose__0, p = c(homogen_tf = "any"), r = c(TRUE), s = "homogen_tf"),
      list(f = .ropecv_cv_kinfu_Params_Params_setInitialVolumePose__1, p = c(R = "any", t = "any"), r = c(TRUE, TRUE), s = "R, t")
    )
  )
)
