# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_aruco_ArucoDetector_ArucoDetector_new__0 <- function(dictionary = NULL, detectorParams = list(), refineParams = list()) .Call(`_ROpenCV_cv_aruco_ArucoDetector_ArucoDetector_new__0`, dictionary, detectorParams, refineParams)
.ropecv_cv_aruco_ArucoDetector_ArucoDetector_detectMarkers__0 <- function(self, image, corners = NULL, ids = NULL, rejectedImgPoints = NULL) .Call(`_ROpenCV_cv_aruco_ArucoDetector_ArucoDetector_detectMarkers__0`, self, image, corners, ids, rejectedImgPoints)
.ropecv_cv_aruco_ArucoDetector_ArucoDetector_getDetectorParameters__0 <- function(self) .Call(`_ROpenCV_cv_aruco_ArucoDetector_ArucoDetector_getDetectorParameters__0`, self)
.ropecv_cv_aruco_ArucoDetector_ArucoDetector_getDictionary__0 <- function(self) .Call(`_ROpenCV_cv_aruco_ArucoDetector_ArucoDetector_getDictionary__0`, self)
.ropecv_cv_aruco_ArucoDetector_ArucoDetector_getRefineParameters__0 <- function(self) .Call(`_ROpenCV_cv_aruco_ArucoDetector_ArucoDetector_getRefineParameters__0`, self)
.ropecv_cv_aruco_ArucoDetector_ArucoDetector_read__0 <- function(self, fn) .Call(`_ROpenCV_cv_aruco_ArucoDetector_ArucoDetector_read__0`, self, fn)
.ropecv_cv_aruco_ArucoDetector_ArucoDetector_refineDetectedMarkers__0 <- function(self, image, board, detectedIds = NULL, cameraMatrix = NULL, distCoeffs = NULL, detectedCorners = NULL, rejectedCorners = NULL, recoveredIdxs = NULL) .Call(`_ROpenCV_cv_aruco_ArucoDetector_ArucoDetector_refineDetectedMarkers__0`, self, image, board, detectedIds, cameraMatrix, distCoeffs, detectedCorners, rejectedCorners, recoveredIdxs)
.ropecv_cv_aruco_ArucoDetector_ArucoDetector_setDetectorParameters__0 <- function(self, detectorParameters) .Call(`_ROpenCV_cv_aruco_ArucoDetector_ArucoDetector_setDetectorParameters__0`, self, detectorParameters)
.ropecv_cv_aruco_ArucoDetector_ArucoDetector_setDictionary__0 <- function(self, dictionary) .Call(`_ROpenCV_cv_aruco_ArucoDetector_ArucoDetector_setDictionary__0`, self, dictionary)
.ropecv_cv_aruco_ArucoDetector_ArucoDetector_setRefineParameters__0 <- function(self, refineParameters) .Call(`_ROpenCV_cv_aruco_ArucoDetector_ArucoDetector_setRefineParameters__0`, self, refineParameters)
.ropecv_cv_aruco_ArucoDetector_ArucoDetector_write__0 <- function(self, fs, name) .Call(`_ROpenCV_cv_aruco_ArucoDetector_ArucoDetector_write__0`, self, fs, name)
.ropecv_cv_aruco_DetectorParameters_DetectorParameters_new__0 <- function() .Call(`_ROpenCV_cv_aruco_DetectorParameters_DetectorParameters_new__0`)
.ropecv_cv_aruco_DetectorParameters_DetectorParameters_readDetectorParameters__0 <- function(self, fn) .Call(`_ROpenCV_cv_aruco_DetectorParameters_DetectorParameters_readDetectorParameters__0`, self, fn)
.ropecv_cv_aruco_DetectorParameters_DetectorParameters_writeDetectorParameters__0 <- function(self, fs, name = '') .Call(`_ROpenCV_cv_aruco_DetectorParameters_DetectorParameters_writeDetectorParameters__0`, self, fs, name)
.ropecv_cv_aruco_RefineParameters_RefineParameters_new__0 <- function(minRepDistance = 10, errorCorrectionRate = 3, checkAllOrders = TRUE) .Call(`_ROpenCV_cv_aruco_RefineParameters_RefineParameters_new__0`, minRepDistance, errorCorrectionRate, checkAllOrders)
.ropecv_cv_aruco_RefineParameters_RefineParameters_readRefineParameters__0 <- function(self, fn) .Call(`_ROpenCV_cv_aruco_RefineParameters_RefineParameters_readRefineParameters__0`, self, fn)
.ropecv_cv_aruco_RefineParameters_RefineParameters_writeRefineParameters__0 <- function(self, fs, name = '') .Call(`_ROpenCV_cv_aruco_RefineParameters_RefineParameters_writeRefineParameters__0`, self, fs, name)

cvArucoDetector <- function(...) .ropecv_new("cvArucoDetector", "cvArucoDetector", list(...))

cvArucoDetectorParameters <- function(...) .ropecv_new("cvArucoDetectorParameters", "cvArucoDetectorParameters", list(...))

cvRefineParameters <- function(...) .ropecv_new("cvRefineParameters", "cvRefineParameters", list(...))
