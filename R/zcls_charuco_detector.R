# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::aruco::CharucoDetector
.ropecv_reg("cvCharucoDetector",
  new = list(
    list(f = .ropecv_cv_aruco_CharucoDetector_CharucoDetector_new__0, p = c(board = "any", charucoParams = "lst", detectorParams = "lst", refineParams = "lst"), r = c(TRUE, FALSE, FALSE, FALSE), s = "board, charucoParams = list(), detectorParams = list(), refineParams = list()")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    detectBoard = list(
      list(f = .ropecv_cv_aruco_CharucoDetector_CharucoDetector_detectBoard__0, p = c(image = "mat", markerIds = "mat", charucoCorners = "mat", charucoIds = "mat", markerCorners = "lst"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE), s = "image, markerIds = NULL, charucoCorners = NULL, charucoIds = NULL, markerCorners = NULL")
    ),
    detectDiamonds = list(
      list(f = .ropecv_cv_aruco_CharucoDetector_CharucoDetector_detectDiamonds__0, p = c(image = "mat", markerIds = "mat", diamondCorners = "lst", diamondIds = "mat", markerCorners = "lst"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE), s = "image, markerIds = NULL, diamondCorners = NULL, diamondIds = NULL, markerCorners = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getBoard = list(
      list(f = .ropecv_cv_aruco_CharucoDetector_CharucoDetector_getBoard__0, p = c(), r = c(), s = "")
    ),
    getCharucoParameters = list(
      list(f = .ropecv_cv_aruco_CharucoDetector_CharucoDetector_getCharucoParameters__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDetectorParameters = list(
      list(f = .ropecv_cv_aruco_CharucoDetector_CharucoDetector_getDetectorParameters__0, p = c(), r = c(), s = "")
    ),
    getRefineParameters = list(
      list(f = .ropecv_cv_aruco_CharucoDetector_CharucoDetector_getRefineParameters__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setBoard = list(
      list(f = .ropecv_cv_aruco_CharucoDetector_CharucoDetector_setBoard__0, p = c(board = "any"), r = c(TRUE), s = "board")
    ),
    setCharucoParameters = list(
      list(f = .ropecv_cv_aruco_CharucoDetector_CharucoDetector_setCharucoParameters__0, p = c(charucoParameters = "any"), r = c(FALSE), s = "charucoParameters = NULL")
    ),
    setDetectorParameters = list(
      list(f = .ropecv_cv_aruco_CharucoDetector_CharucoDetector_setDetectorParameters__0, p = c(detectorParameters = "lst"), r = c(TRUE), s = "detectorParameters")
    ),
    setRefineParameters = list(
      list(f = .ropecv_cv_aruco_CharucoDetector_CharucoDetector_setRefineParameters__0, p = c(refineParameters = "lst"), r = c(TRUE), s = "refineParameters")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::aruco::CharucoParameters
.ropecv_reg("cvCharucoParameters",
  new = list(
    list(f = .ropecv_cv_aruco_CharucoParameters_CharucoParameters_new__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)
