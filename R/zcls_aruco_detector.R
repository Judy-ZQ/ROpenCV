# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::aruco::ArucoDetector
.ropecv_reg("cvArucoDetector",
  new = list(
    list(f = .ropecv_cv_aruco_ArucoDetector_ArucoDetector_new__0, p = c(dictionary = "any", detectorParams = "lst", refineParams = "lst"), r = c(FALSE, FALSE, FALSE), s = "dictionary = NULL, detectorParams = list(), refineParams = list()")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    detectMarkers = list(
      list(f = .ropecv_cv_aruco_ArucoDetector_ArucoDetector_detectMarkers__0, p = c(image = "mat", corners = "lst", ids = "mat", rejectedImgPoints = "lst"), r = c(TRUE, FALSE, FALSE, FALSE), s = "image, corners = NULL, ids = NULL, rejectedImgPoints = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDetectorParameters = list(
      list(f = .ropecv_cv_aruco_ArucoDetector_ArucoDetector_getDetectorParameters__0, p = c(), r = c(), s = "")
    ),
    getDictionary = list(
      list(f = .ropecv_cv_aruco_ArucoDetector_ArucoDetector_getDictionary__0, p = c(), r = c(), s = "")
    ),
    getRefineParameters = list(
      list(f = .ropecv_cv_aruco_ArucoDetector_ArucoDetector_getRefineParameters__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_aruco_ArucoDetector_ArucoDetector_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    refineDetectedMarkers = list(
      list(f = .ropecv_cv_aruco_ArucoDetector_ArucoDetector_refineDetectedMarkers__0, p = c(image = "mat", board = "any", detectedIds = "mat", cameraMatrix = "mat", distCoeffs = "mat", detectedCorners = "lst", rejectedCorners = "lst", recoveredIdxs = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "image, board, detectedIds = NULL, cameraMatrix = NULL, distCoeffs = NULL, detectedCorners = NULL, rejectedCorners = NULL, recoveredIdxs = NULL")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setDetectorParameters = list(
      list(f = .ropecv_cv_aruco_ArucoDetector_ArucoDetector_setDetectorParameters__0, p = c(detectorParameters = "lst"), r = c(TRUE), s = "detectorParameters")
    ),
    setDictionary = list(
      list(f = .ropecv_cv_aruco_ArucoDetector_ArucoDetector_setDictionary__0, p = c(dictionary = "any"), r = c(TRUE), s = "dictionary")
    ),
    setRefineParameters = list(
      list(f = .ropecv_cv_aruco_ArucoDetector_ArucoDetector_setRefineParameters__0, p = c(refineParameters = "lst"), r = c(TRUE), s = "refineParameters")
    ),
    write = list(
      list(f = .ropecv_cv_aruco_ArucoDetector_ArucoDetector_write__0, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::aruco::DetectorParameters
.ropecv_reg("cvArucoDetectorParameters",
  new = list(
    list(f = .ropecv_cv_aruco_DetectorParameters_DetectorParameters_new__0, p = c(), r = c(), s = "")
  ),
  m = list(
    readDetectorParameters = list(
      list(f = .ropecv_cv_aruco_DetectorParameters_DetectorParameters_readDetectorParameters__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    writeDetectorParameters = list(
      list(f = .ropecv_cv_aruco_DetectorParameters_DetectorParameters_writeDetectorParameters__0, p = c(fs = "any", name = "chr"), r = c(TRUE, FALSE), s = "fs, name = ''")
    )
  )
)

# cv::aruco::RefineParameters
.ropecv_reg("cvRefineParameters",
  new = list(
    list(f = .ropecv_cv_aruco_RefineParameters_RefineParameters_new__0, p = c(minRepDistance = "dbl", errorCorrectionRate = "dbl", checkAllOrders = "lgl"), r = c(FALSE, FALSE, FALSE), s = "minRepDistance = 10, errorCorrectionRate = 3, checkAllOrders = TRUE")
  ),
  m = list(
    readRefineParameters = list(
      list(f = .ropecv_cv_aruco_RefineParameters_RefineParameters_readRefineParameters__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    writeRefineParameters = list(
      list(f = .ropecv_cv_aruco_RefineParameters_RefineParameters_writeRefineParameters__0, p = c(fs = "any", name = "chr"), r = c(TRUE, FALSE), s = "fs, name = ''")
    )
  )
)
