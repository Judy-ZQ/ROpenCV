# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::aruco::Board
.ropecv_reg("cvBoard",
  new = list(
    list(f = .ropecv_cv_aruco_Board_Board_new__0, p = c(objPoints = "matlist", dictionary = "any", ids = "mat"), r = c(TRUE, TRUE, TRUE), s = "objPoints, dictionary, ids")
  ),
  m = list(
    generateImage = list(
      list(f = .ropecv_cv_aruco_Board_Board_generateImage__0, p = c(outSize = "size", marginSize = "int", borderBits = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "outSize, marginSize = 0, borderBits = 1, dst = NULL")
    ),
    getDictionary = list(
      list(f = .ropecv_cv_aruco_Board_Board_getDictionary__0, p = c(), r = c(), s = "")
    ),
    getIds = list(
      list(f = .ropecv_cv_aruco_Board_Board_getIds__0, p = c(), r = c(), s = "")
    ),
    getObjPoints = list(
      list(f = .ropecv_cv_aruco_Board_Board_getObjPoints__0, p = c(), r = c(), s = "")
    ),
    getRightBottomCorner = list(
      list(f = .ropecv_cv_aruco_Board_Board_getRightBottomCorner__0, p = c(), r = c(), s = "")
    ),
    matchImagePoints = list(
      list(f = .ropecv_cv_aruco_Board_Board_matchImagePoints__0, p = c(detectedCorners = "matlist", detectedIds = "mat", objPoints = "mat", imgPoints = "mat"), r = c(TRUE, TRUE, FALSE, FALSE), s = "detectedCorners, detectedIds, objPoints = NULL, imgPoints = NULL")
    )
  )
)

# cv::aruco::CharucoBoard
.ropecv_reg("cvCharucoBoard",
  new = list(
    list(f = .ropecv_cv_aruco_CharucoBoard_CharucoBoard_new__0, p = c(size = "size", squareLength = "dbl", markerLength = "dbl", dictionary = "any", ids = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE), s = "size, squareLength, markerLength, dictionary, ids = NULL")
  ),
  m = list(
    checkCharucoCornersCollinear = list(
      list(f = .ropecv_cv_aruco_CharucoBoard_CharucoBoard_checkCharucoCornersCollinear__0, p = c(charucoIds = "mat"), r = c(TRUE), s = "charucoIds")
    ),
    generateImage = list(
      list(f = .ropecv_cv_aruco_Board_Board_generateImage__0, p = c(outSize = "size", marginSize = "int", borderBits = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "outSize, marginSize = 0, borderBits = 1, dst = NULL")
    ),
    getChessboardCorners = list(
      list(f = .ropecv_cv_aruco_CharucoBoard_CharucoBoard_getChessboardCorners__0, p = c(), r = c(), s = "")
    ),
    getChessboardSize = list(
      list(f = .ropecv_cv_aruco_CharucoBoard_CharucoBoard_getChessboardSize__0, p = c(), r = c(), s = "")
    ),
    getDictionary = list(
      list(f = .ropecv_cv_aruco_Board_Board_getDictionary__0, p = c(), r = c(), s = "")
    ),
    getIds = list(
      list(f = .ropecv_cv_aruco_Board_Board_getIds__0, p = c(), r = c(), s = "")
    ),
    getLegacyPattern = list(
      list(f = .ropecv_cv_aruco_CharucoBoard_CharucoBoard_getLegacyPattern__0, p = c(), r = c(), s = "")
    ),
    getMarkerLength = list(
      list(f = .ropecv_cv_aruco_CharucoBoard_CharucoBoard_getMarkerLength__0, p = c(), r = c(), s = "")
    ),
    getObjPoints = list(
      list(f = .ropecv_cv_aruco_Board_Board_getObjPoints__0, p = c(), r = c(), s = "")
    ),
    getRightBottomCorner = list(
      list(f = .ropecv_cv_aruco_Board_Board_getRightBottomCorner__0, p = c(), r = c(), s = "")
    ),
    getSquareLength = list(
      list(f = .ropecv_cv_aruco_CharucoBoard_CharucoBoard_getSquareLength__0, p = c(), r = c(), s = "")
    ),
    matchImagePoints = list(
      list(f = .ropecv_cv_aruco_Board_Board_matchImagePoints__0, p = c(detectedCorners = "matlist", detectedIds = "mat", objPoints = "mat", imgPoints = "mat"), r = c(TRUE, TRUE, FALSE, FALSE), s = "detectedCorners, detectedIds, objPoints = NULL, imgPoints = NULL")
    ),
    setLegacyPattern = list(
      list(f = .ropecv_cv_aruco_CharucoBoard_CharucoBoard_setLegacyPattern__0, p = c(legacyPattern = "lgl"), r = c(TRUE), s = "legacyPattern")
    )
  )
)

# cv::aruco::GridBoard
.ropecv_reg("cvGridBoard",
  new = list(
    list(f = .ropecv_cv_aruco_GridBoard_GridBoard_new__0, p = c(size = "size", markerLength = "dbl", markerSeparation = "dbl", dictionary = "any", ids = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE), s = "size, markerLength, markerSeparation, dictionary, ids = NULL")
  ),
  m = list(
    generateImage = list(
      list(f = .ropecv_cv_aruco_Board_Board_generateImage__0, p = c(outSize = "size", marginSize = "int", borderBits = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "outSize, marginSize = 0, borderBits = 1, dst = NULL")
    ),
    getDictionary = list(
      list(f = .ropecv_cv_aruco_Board_Board_getDictionary__0, p = c(), r = c(), s = "")
    ),
    getGridSize = list(
      list(f = .ropecv_cv_aruco_GridBoard_GridBoard_getGridSize__0, p = c(), r = c(), s = "")
    ),
    getIds = list(
      list(f = .ropecv_cv_aruco_Board_Board_getIds__0, p = c(), r = c(), s = "")
    ),
    getMarkerLength = list(
      list(f = .ropecv_cv_aruco_GridBoard_GridBoard_getMarkerLength__0, p = c(), r = c(), s = "")
    ),
    getMarkerSeparation = list(
      list(f = .ropecv_cv_aruco_GridBoard_GridBoard_getMarkerSeparation__0, p = c(), r = c(), s = "")
    ),
    getObjPoints = list(
      list(f = .ropecv_cv_aruco_Board_Board_getObjPoints__0, p = c(), r = c(), s = "")
    ),
    getRightBottomCorner = list(
      list(f = .ropecv_cv_aruco_Board_Board_getRightBottomCorner__0, p = c(), r = c(), s = "")
    ),
    matchImagePoints = list(
      list(f = .ropecv_cv_aruco_Board_Board_matchImagePoints__0, p = c(detectedCorners = "matlist", detectedIds = "mat", objPoints = "mat", imgPoints = "mat"), r = c(TRUE, TRUE, FALSE, FALSE), s = "detectedCorners, detectedIds, objPoints = NULL, imgPoints = NULL")
    )
  )
)
