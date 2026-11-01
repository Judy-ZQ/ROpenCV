# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::ppf_match_3d::ICP
.ropecv_reg("cvICP",
  new = list(
    list(f = .ropecv_cv_ppf_match_3d_ICP_ICP_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_ppf_match_3d_ICP_ICP_new__1, p = c(iterations = "int", tolerence = "dbl", rejectionScale = "dbl", numLevels = "int", sampleType = "int", numMaxCorr = "int"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "iterations, tolerence = 0.05, rejectionScale = 2.5, numLevels = 6, sampleType = ICP_SAMPLING_TYPE_UNIFORM, numMaxCorr = 1")
  ),
  m = list(
    registerModelToScene = list(
      list(f = .ropecv_cv_ppf_match_3d_ICP_ICP_registerModelToScene__0, p = c(srcPC = "any", dstPC = "any", poses = "lst"), r = c(TRUE, TRUE, FALSE), s = "srcPC, dstPC, poses = NULL"),
      list(f = .ropecv_cv_ppf_match_3d_ICP_ICP_registerModelToScene__1, p = c(srcPC = "any", dstPC = "any"), r = c(TRUE, TRUE), s = "srcPC, dstPC")
    )
  )
)
