# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::StereoBM
.ropecv_reg("cvStereoBM",
  new = list(
    list(f = .ropecv_cv_StereoBM_StereoBM_create__0, p = c(numDisparities = "int", blockSize = "int"), r = c(FALSE, FALSE), s = "numDisparities = 0, blockSize = 21")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_compute__0, p = c(left = "mat", right = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "left, right, dst = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getBlockSize = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getBlockSize__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDisp12MaxDiff = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getDisp12MaxDiff__0, p = c(), r = c(), s = "")
    ),
    getMinDisparity = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getMinDisparity__0, p = c(), r = c(), s = "")
    ),
    getNumDisparities = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getNumDisparities__0, p = c(), r = c(), s = "")
    ),
    getPreFilterCap = list(
      list(f = .ropecv_cv_StereoBM_StereoBM_getPreFilterCap__0, p = c(), r = c(), s = "")
    ),
    getPreFilterSize = list(
      list(f = .ropecv_cv_StereoBM_StereoBM_getPreFilterSize__0, p = c(), r = c(), s = "")
    ),
    getPreFilterType = list(
      list(f = .ropecv_cv_StereoBM_StereoBM_getPreFilterType__0, p = c(), r = c(), s = "")
    ),
    getROI1 = list(
      list(f = .ropecv_cv_StereoBM_StereoBM_getROI1__0, p = c(), r = c(), s = "")
    ),
    getROI2 = list(
      list(f = .ropecv_cv_StereoBM_StereoBM_getROI2__0, p = c(), r = c(), s = "")
    ),
    getSmallerBlockSize = list(
      list(f = .ropecv_cv_StereoBM_StereoBM_getSmallerBlockSize__0, p = c(), r = c(), s = "")
    ),
    getSpeckleRange = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getSpeckleRange__0, p = c(), r = c(), s = "")
    ),
    getSpeckleWindowSize = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getSpeckleWindowSize__0, p = c(), r = c(), s = "")
    ),
    getTextureThreshold = list(
      list(f = .ropecv_cv_StereoBM_StereoBM_getTextureThreshold__0, p = c(), r = c(), s = "")
    ),
    getUniquenessRatio = list(
      list(f = .ropecv_cv_StereoBM_StereoBM_getUniquenessRatio__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setBlockSize = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setBlockSize__0, p = c(blockSize = "int"), r = c(TRUE), s = "blockSize")
    ),
    setDisp12MaxDiff = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setDisp12MaxDiff__0, p = c(disp12MaxDiff = "int"), r = c(TRUE), s = "disp12MaxDiff")
    ),
    setMinDisparity = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setMinDisparity__0, p = c(minDisparity = "int"), r = c(TRUE), s = "minDisparity")
    ),
    setNumDisparities = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setNumDisparities__0, p = c(numDisparities = "int"), r = c(TRUE), s = "numDisparities")
    ),
    setPreFilterCap = list(
      list(f = .ropecv_cv_StereoBM_StereoBM_setPreFilterCap__0, p = c(preFilterCap = "int"), r = c(TRUE), s = "preFilterCap")
    ),
    setPreFilterSize = list(
      list(f = .ropecv_cv_StereoBM_StereoBM_setPreFilterSize__0, p = c(preFilterSize = "int"), r = c(TRUE), s = "preFilterSize")
    ),
    setPreFilterType = list(
      list(f = .ropecv_cv_StereoBM_StereoBM_setPreFilterType__0, p = c(preFilterType = "int"), r = c(TRUE), s = "preFilterType")
    ),
    setROI1 = list(
      list(f = .ropecv_cv_StereoBM_StereoBM_setROI1__0, p = c(roi1 = "rect"), r = c(TRUE), s = "roi1")
    ),
    setROI2 = list(
      list(f = .ropecv_cv_StereoBM_StereoBM_setROI2__0, p = c(roi2 = "rect"), r = c(TRUE), s = "roi2")
    ),
    setSmallerBlockSize = list(
      list(f = .ropecv_cv_StereoBM_StereoBM_setSmallerBlockSize__0, p = c(blockSize = "int"), r = c(TRUE), s = "blockSize")
    ),
    setSpeckleRange = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setSpeckleRange__0, p = c(speckleRange = "int"), r = c(TRUE), s = "speckleRange")
    ),
    setSpeckleWindowSize = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setSpeckleWindowSize__0, p = c(speckleWindowSize = "int"), r = c(TRUE), s = "speckleWindowSize")
    ),
    setTextureThreshold = list(
      list(f = .ropecv_cv_StereoBM_StereoBM_setTextureThreshold__0, p = c(textureThreshold = "int"), r = c(TRUE), s = "textureThreshold")
    ),
    setUniquenessRatio = list(
      list(f = .ropecv_cv_StereoBM_StereoBM_setUniquenessRatio__0, p = c(uniquenessRatio = "int"), r = c(TRUE), s = "uniquenessRatio")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::StereoMatcher
.ropecv_reg("cvStereoMatcher",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_compute__0, p = c(left = "mat", right = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "left, right, dst = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getBlockSize = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getBlockSize__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDisp12MaxDiff = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getDisp12MaxDiff__0, p = c(), r = c(), s = "")
    ),
    getMinDisparity = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getMinDisparity__0, p = c(), r = c(), s = "")
    ),
    getNumDisparities = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getNumDisparities__0, p = c(), r = c(), s = "")
    ),
    getSpeckleRange = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getSpeckleRange__0, p = c(), r = c(), s = "")
    ),
    getSpeckleWindowSize = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getSpeckleWindowSize__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setBlockSize = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setBlockSize__0, p = c(blockSize = "int"), r = c(TRUE), s = "blockSize")
    ),
    setDisp12MaxDiff = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setDisp12MaxDiff__0, p = c(disp12MaxDiff = "int"), r = c(TRUE), s = "disp12MaxDiff")
    ),
    setMinDisparity = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setMinDisparity__0, p = c(minDisparity = "int"), r = c(TRUE), s = "minDisparity")
    ),
    setNumDisparities = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setNumDisparities__0, p = c(numDisparities = "int"), r = c(TRUE), s = "numDisparities")
    ),
    setSpeckleRange = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setSpeckleRange__0, p = c(speckleRange = "int"), r = c(TRUE), s = "speckleRange")
    ),
    setSpeckleWindowSize = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setSpeckleWindowSize__0, p = c(speckleWindowSize = "int"), r = c(TRUE), s = "speckleWindowSize")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::StereoSGBM
.ropecv_reg("cvStereoSGBM",
  new = list(
    list(f = .ropecv_cv_StereoSGBM_StereoSGBM_create__0, p = c(minDisparity = "int", numDisparities = "int", blockSize = "int", P1 = "int", P2 = "int", disp12MaxDiff = "int", preFilterCap = "int", uniquenessRatio = "int", speckleWindowSize = "int", speckleRange = "int", mode = "int"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "minDisparity = 0, numDisparities = 16, blockSize = 3, P1 = 0, P2 = 0, disp12MaxDiff = 0, preFilterCap = 0, uniquenessRatio = 0, speckleWindowSize = 0, speckleRange = 0, mode = MODE_SGBM")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_compute__0, p = c(left = "mat", right = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "left, right, dst = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getBlockSize = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getBlockSize__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDisp12MaxDiff = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getDisp12MaxDiff__0, p = c(), r = c(), s = "")
    ),
    getMinDisparity = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getMinDisparity__0, p = c(), r = c(), s = "")
    ),
    getMode = list(
      list(f = .ropecv_cv_StereoSGBM_StereoSGBM_getMode__0, p = c(), r = c(), s = "")
    ),
    getNumDisparities = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getNumDisparities__0, p = c(), r = c(), s = "")
    ),
    getP1 = list(
      list(f = .ropecv_cv_StereoSGBM_StereoSGBM_getP1__0, p = c(), r = c(), s = "")
    ),
    getP2 = list(
      list(f = .ropecv_cv_StereoSGBM_StereoSGBM_getP2__0, p = c(), r = c(), s = "")
    ),
    getPreFilterCap = list(
      list(f = .ropecv_cv_StereoSGBM_StereoSGBM_getPreFilterCap__0, p = c(), r = c(), s = "")
    ),
    getSpeckleRange = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getSpeckleRange__0, p = c(), r = c(), s = "")
    ),
    getSpeckleWindowSize = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_getSpeckleWindowSize__0, p = c(), r = c(), s = "")
    ),
    getUniquenessRatio = list(
      list(f = .ropecv_cv_StereoSGBM_StereoSGBM_getUniquenessRatio__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setBlockSize = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setBlockSize__0, p = c(blockSize = "int"), r = c(TRUE), s = "blockSize")
    ),
    setDisp12MaxDiff = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setDisp12MaxDiff__0, p = c(disp12MaxDiff = "int"), r = c(TRUE), s = "disp12MaxDiff")
    ),
    setMinDisparity = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setMinDisparity__0, p = c(minDisparity = "int"), r = c(TRUE), s = "minDisparity")
    ),
    setMode = list(
      list(f = .ropecv_cv_StereoSGBM_StereoSGBM_setMode__0, p = c(mode = "int"), r = c(TRUE), s = "mode")
    ),
    setNumDisparities = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setNumDisparities__0, p = c(numDisparities = "int"), r = c(TRUE), s = "numDisparities")
    ),
    setP1 = list(
      list(f = .ropecv_cv_StereoSGBM_StereoSGBM_setP1__0, p = c(P1 = "int"), r = c(TRUE), s = "P1")
    ),
    setP2 = list(
      list(f = .ropecv_cv_StereoSGBM_StereoSGBM_setP2__0, p = c(P2 = "int"), r = c(TRUE), s = "P2")
    ),
    setPreFilterCap = list(
      list(f = .ropecv_cv_StereoSGBM_StereoSGBM_setPreFilterCap__0, p = c(preFilterCap = "int"), r = c(TRUE), s = "preFilterCap")
    ),
    setSpeckleRange = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setSpeckleRange__0, p = c(speckleRange = "int"), r = c(TRUE), s = "speckleRange")
    ),
    setSpeckleWindowSize = list(
      list(f = .ropecv_cv_StereoMatcher_StereoMatcher_setSpeckleWindowSize__0, p = c(speckleWindowSize = "int"), r = c(TRUE), s = "speckleWindowSize")
    ),
    setUniquenessRatio = list(
      list(f = .ropecv_cv_StereoSGBM_StereoSGBM_setUniquenessRatio__0, p = c(uniquenessRatio = "int"), r = c(TRUE), s = "uniquenessRatio")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)
