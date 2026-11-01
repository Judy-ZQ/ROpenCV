# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_aruco_Dictionary_Dictionary_new__0 <- function() .Call(`_ROpenCV_cv_aruco_Dictionary_Dictionary_new__0`)
.ropecv_cv_aruco_Dictionary_Dictionary_new__1 <- function(bytesList, markerSize, maxcorr = 0) .Call(`_ROpenCV_cv_aruco_Dictionary_Dictionary_new__1`, bytesList, markerSize, maxcorr)
.ropecv_cv_aruco_Dictionary_Dictionary_getByteListFromBits__0 <- function(bits) .Call(`_ROpenCV_cv_aruco_Dictionary_Dictionary_getByteListFromBits__0`, bits)
.ropecv_cv_aruco_Dictionary_Dictionary_getBitsFromByteList__1 <- function(byteList, markerSize) .Call(`_ROpenCV_cv_aruco_Dictionary_Dictionary_getBitsFromByteList__1`, byteList, markerSize)
.ropecv_cv_aruco_Dictionary_Dictionary_generateImageMarker__0 <- function(self, id, sidePixels, borderBits = 1, dst = NULL) .Call(`_ROpenCV_cv_aruco_Dictionary_Dictionary_generateImageMarker__0`, self, id, sidePixels, borderBits, dst)
.ropecv_cv_aruco_Dictionary_Dictionary_getDistanceToId__0 <- function(self, bits, id, allRotations = TRUE) .Call(`_ROpenCV_cv_aruco_Dictionary_Dictionary_getDistanceToId__0`, self, bits, id, allRotations)
.ropecv_cv_aruco_Dictionary_Dictionary_identify__0 <- function(self, onlyBits, maxCorrectionRate) .Call(`_ROpenCV_cv_aruco_Dictionary_Dictionary_identify__0`, self, onlyBits, maxCorrectionRate)
.ropecv_cv_aruco_Dictionary_Dictionary_readDictionary__0 <- function(self, fn) .Call(`_ROpenCV_cv_aruco_Dictionary_Dictionary_readDictionary__0`, self, fn)
.ropecv_cv_aruco_Dictionary_Dictionary_writeDictionary__0 <- function(self, fs, name = '') .Call(`_ROpenCV_cv_aruco_Dictionary_Dictionary_writeDictionary__0`, self, fs, name)

cvDictionary <- function(...) .ropecv_new("cvDictionary", "cvDictionary", list(...))

# cv::aruco::Dictionary::getByteListFromBits
cvDictionary_getByteListFromBits <- function(bits) .Call(`_ROpenCV_cv_aruco_Dictionary_Dictionary_getByteListFromBits__0`, bits)

# cv::aruco::Dictionary::getBitsFromByteList
cvDictionary_getBitsFromByteList <- function(byteList, markerSize) .Call(`_ROpenCV_cv_aruco_Dictionary_Dictionary_getBitsFromByteList__1`, byteList, markerSize)
