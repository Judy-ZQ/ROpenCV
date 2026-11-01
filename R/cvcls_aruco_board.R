# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_aruco_Board_Board_new__0 <- function(objPoints, dictionary, ids) .Call(`_ROpenCV_cv_aruco_Board_Board_new__0`, objPoints, dictionary, ids)
.ropecv_cv_aruco_Board_Board_generateImage__0 <- function(self, outSize, marginSize = 0, borderBits = 1, dst = NULL) .Call(`_ROpenCV_cv_aruco_Board_Board_generateImage__0`, self, outSize, marginSize, borderBits, dst)
.ropecv_cv_aruco_Board_Board_getDictionary__0 <- function(self) .Call(`_ROpenCV_cv_aruco_Board_Board_getDictionary__0`, self)
.ropecv_cv_aruco_Board_Board_getIds__0 <- function(self) .Call(`_ROpenCV_cv_aruco_Board_Board_getIds__0`, self)
.ropecv_cv_aruco_Board_Board_getObjPoints__0 <- function(self) .Call(`_ROpenCV_cv_aruco_Board_Board_getObjPoints__0`, self)
.ropecv_cv_aruco_Board_Board_getRightBottomCorner__0 <- function(self) .Call(`_ROpenCV_cv_aruco_Board_Board_getRightBottomCorner__0`, self)
.ropecv_cv_aruco_Board_Board_matchImagePoints__0 <- function(self, detectedCorners, detectedIds, objPoints = NULL, imgPoints = NULL) .Call(`_ROpenCV_cv_aruco_Board_Board_matchImagePoints__0`, self, detectedCorners, detectedIds, objPoints, imgPoints)
.ropecv_cv_aruco_CharucoBoard_CharucoBoard_new__0 <- function(size, squareLength, markerLength, dictionary, ids = NULL) .Call(`_ROpenCV_cv_aruco_CharucoBoard_CharucoBoard_new__0`, size, squareLength, markerLength, dictionary, ids)
.ropecv_cv_aruco_CharucoBoard_CharucoBoard_checkCharucoCornersCollinear__0 <- function(self, charucoIds) .Call(`_ROpenCV_cv_aruco_CharucoBoard_CharucoBoard_checkCharucoCornersCollinear__0`, self, charucoIds)
.ropecv_cv_aruco_CharucoBoard_CharucoBoard_getChessboardCorners__0 <- function(self) .Call(`_ROpenCV_cv_aruco_CharucoBoard_CharucoBoard_getChessboardCorners__0`, self)
.ropecv_cv_aruco_CharucoBoard_CharucoBoard_getChessboardSize__0 <- function(self) .Call(`_ROpenCV_cv_aruco_CharucoBoard_CharucoBoard_getChessboardSize__0`, self)
.ropecv_cv_aruco_CharucoBoard_CharucoBoard_getLegacyPattern__0 <- function(self) .Call(`_ROpenCV_cv_aruco_CharucoBoard_CharucoBoard_getLegacyPattern__0`, self)
.ropecv_cv_aruco_CharucoBoard_CharucoBoard_getMarkerLength__0 <- function(self) .Call(`_ROpenCV_cv_aruco_CharucoBoard_CharucoBoard_getMarkerLength__0`, self)
.ropecv_cv_aruco_CharucoBoard_CharucoBoard_getSquareLength__0 <- function(self) .Call(`_ROpenCV_cv_aruco_CharucoBoard_CharucoBoard_getSquareLength__0`, self)
.ropecv_cv_aruco_CharucoBoard_CharucoBoard_setLegacyPattern__0 <- function(self, legacyPattern) .Call(`_ROpenCV_cv_aruco_CharucoBoard_CharucoBoard_setLegacyPattern__0`, self, legacyPattern)
.ropecv_cv_aruco_GridBoard_GridBoard_new__0 <- function(size, markerLength, markerSeparation, dictionary, ids = NULL) .Call(`_ROpenCV_cv_aruco_GridBoard_GridBoard_new__0`, size, markerLength, markerSeparation, dictionary, ids)
.ropecv_cv_aruco_GridBoard_GridBoard_getGridSize__0 <- function(self) .Call(`_ROpenCV_cv_aruco_GridBoard_GridBoard_getGridSize__0`, self)
.ropecv_cv_aruco_GridBoard_GridBoard_getMarkerLength__0 <- function(self) .Call(`_ROpenCV_cv_aruco_GridBoard_GridBoard_getMarkerLength__0`, self)
.ropecv_cv_aruco_GridBoard_GridBoard_getMarkerSeparation__0 <- function(self) .Call(`_ROpenCV_cv_aruco_GridBoard_GridBoard_getMarkerSeparation__0`, self)

cvBoard <- function(...) .ropecv_new("cvBoard", "cvBoard", list(...))

cvCharucoBoard <- function(...) .ropecv_new("cvCharucoBoard", "cvCharucoBoard", list(...))

cvGridBoard <- function(...) .ropecv_new("cvGridBoard", "cvGridBoard", list(...))
