# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_aruco_CharucoDetector_CharucoDetector_new__0 <- function(board, charucoParams = list(), detectorParams = list(), refineParams = list()) .Call(`_ROpenCV_cv_aruco_CharucoDetector_CharucoDetector_new__0`, board, charucoParams, detectorParams, refineParams)
.ropecv_cv_aruco_CharucoDetector_CharucoDetector_detectBoard__0 <- function(self, image, markerIds = NULL, charucoCorners = NULL, charucoIds = NULL, markerCorners = NULL) .Call(`_ROpenCV_cv_aruco_CharucoDetector_CharucoDetector_detectBoard__0`, self, image, markerIds, charucoCorners, charucoIds, markerCorners)
.ropecv_cv_aruco_CharucoDetector_CharucoDetector_detectDiamonds__0 <- function(self, image, markerIds = NULL, diamondCorners = NULL, diamondIds = NULL, markerCorners = NULL) .Call(`_ROpenCV_cv_aruco_CharucoDetector_CharucoDetector_detectDiamonds__0`, self, image, markerIds, diamondCorners, diamondIds, markerCorners)
.ropecv_cv_aruco_CharucoDetector_CharucoDetector_getBoard__0 <- function(self) .Call(`_ROpenCV_cv_aruco_CharucoDetector_CharucoDetector_getBoard__0`, self)
.ropecv_cv_aruco_CharucoDetector_CharucoDetector_getCharucoParameters__0 <- function(self) .Call(`_ROpenCV_cv_aruco_CharucoDetector_CharucoDetector_getCharucoParameters__0`, self)
.ropecv_cv_aruco_CharucoDetector_CharucoDetector_getDetectorParameters__0 <- function(self) .Call(`_ROpenCV_cv_aruco_CharucoDetector_CharucoDetector_getDetectorParameters__0`, self)
.ropecv_cv_aruco_CharucoDetector_CharucoDetector_getRefineParameters__0 <- function(self) .Call(`_ROpenCV_cv_aruco_CharucoDetector_CharucoDetector_getRefineParameters__0`, self)
.ropecv_cv_aruco_CharucoDetector_CharucoDetector_setBoard__0 <- function(self, board) .Call(`_ROpenCV_cv_aruco_CharucoDetector_CharucoDetector_setBoard__0`, self, board)
.ropecv_cv_aruco_CharucoDetector_CharucoDetector_setCharucoParameters__0 <- function(self, charucoParameters = NULL) .Call(`_ROpenCV_cv_aruco_CharucoDetector_CharucoDetector_setCharucoParameters__0`, self, charucoParameters)
.ropecv_cv_aruco_CharucoDetector_CharucoDetector_setDetectorParameters__0 <- function(self, detectorParameters) .Call(`_ROpenCV_cv_aruco_CharucoDetector_CharucoDetector_setDetectorParameters__0`, self, detectorParameters)
.ropecv_cv_aruco_CharucoDetector_CharucoDetector_setRefineParameters__0 <- function(self, refineParameters) .Call(`_ROpenCV_cv_aruco_CharucoDetector_CharucoDetector_setRefineParameters__0`, self, refineParameters)
.ropecv_cv_aruco_CharucoParameters_CharucoParameters_new__0 <- function() .Call(`_ROpenCV_cv_aruco_CharucoParameters_CharucoParameters_new__0`)

cvCharucoDetector <- function(...) .ropecv_new("cvCharucoDetector", "cvCharucoDetector", list(...))

cvCharucoParameters <- function(...) .ropecv_new("cvCharucoParameters", "cvCharucoParameters", list(...))
