# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_CascadeClassifier_CascadeClassifier_new__0 <- function() .Call(`_ROpenCV_cv_CascadeClassifier_CascadeClassifier_new__0`)
.ropecv_cv_CascadeClassifier_CascadeClassifier_new__1 <- function(filename) .Call(`_ROpenCV_cv_CascadeClassifier_CascadeClassifier_new__1`, filename)
.ropecv_cv_CascadeClassifier_CascadeClassifier_convert__0 <- function(oldcascade, newcascade) .Call(`_ROpenCV_cv_CascadeClassifier_CascadeClassifier_convert__0`, oldcascade, newcascade)
.ropecv_cv_CascadeClassifier_CascadeClassifier_detectMultiScale__0 <- function(self, image, scaleFactor = 1.1, minNeighbors = 3, flags = 0, minSize = NULL, maxSize = NULL) .Call(`_ROpenCV_cv_CascadeClassifier_CascadeClassifier_detectMultiScale__0`, self, image, scaleFactor, minNeighbors, flags, minSize, maxSize)
.ropecv_cv_CascadeClassifier_CascadeClassifier_empty__0 <- function(self) .Call(`_ROpenCV_cv_CascadeClassifier_CascadeClassifier_empty__0`, self)
.ropecv_cv_CascadeClassifier_CascadeClassifier_getFeatureType__0 <- function(self) .Call(`_ROpenCV_cv_CascadeClassifier_CascadeClassifier_getFeatureType__0`, self)
.ropecv_cv_CascadeClassifier_CascadeClassifier_getOriginalWindowSize__0 <- function(self) .Call(`_ROpenCV_cv_CascadeClassifier_CascadeClassifier_getOriginalWindowSize__0`, self)
.ropecv_cv_CascadeClassifier_CascadeClassifier_isOldFormatCascade__0 <- function(self) .Call(`_ROpenCV_cv_CascadeClassifier_CascadeClassifier_isOldFormatCascade__0`, self)
.ropecv_cv_CascadeClassifier_CascadeClassifier_load__0 <- function(self, filename) .Call(`_ROpenCV_cv_CascadeClassifier_CascadeClassifier_load__0`, self, filename)
.ropecv_cv_CascadeClassifier_CascadeClassifier_read__0 <- function(self, node) .Call(`_ROpenCV_cv_CascadeClassifier_CascadeClassifier_read__0`, self, node)
.ropecv_cv_HOGDescriptor_HOGDescriptor_new__0 <- function(filename) .Call(`_ROpenCV_cv_HOGDescriptor_HOGDescriptor_new__0`, filename)
.ropecv_cv_HOGDescriptor_HOGDescriptor_new__1 <- function(winSize = c(64, 128), blockSize = c(16, 16), blockStride = c(8, 8), cellSize = c(8, 8), nbins = 9, derivAperture = 1, winSigma = -1, histogramNormType, L2HysThreshold = 0.2, gammaCorrection = TRUE, nlevels = DEFAULT_NLEVELS, signedGradient = FALSE) .Call(`_ROpenCV_cv_HOGDescriptor_HOGDescriptor_new__1`, winSize, blockSize, blockStride, cellSize, nbins, derivAperture, winSigma, histogramNormType, L2HysThreshold, gammaCorrection, nlevels, signedGradient)
.ropecv_cv_HOGDescriptor_HOGDescriptor_getDefaultPeopleDetector__0 <- function() .Call(`_ROpenCV_cv_HOGDescriptor_HOGDescriptor_getDefaultPeopleDetector__0`)
.ropecv_cv_HOGDescriptor_HOGDescriptor_getDaimlerPeopleDetector__1 <- function() .Call(`_ROpenCV_cv_HOGDescriptor_HOGDescriptor_getDaimlerPeopleDetector__1`)
.ropecv_cv_HOGDescriptor_HOGDescriptor_checkDetectorSize__0 <- function(self) .Call(`_ROpenCV_cv_HOGDescriptor_HOGDescriptor_checkDetectorSize__0`, self)
.ropecv_cv_HOGDescriptor_HOGDescriptor_compute__0 <- function(self, img, winStride = NULL, padding = NULL, locations = NULL) .Call(`_ROpenCV_cv_HOGDescriptor_HOGDescriptor_compute__0`, self, img, winStride, padding, locations)
.ropecv_cv_HOGDescriptor_HOGDescriptor_computeGradient__0 <- function(self, img, grad = NULL, angleOfs = NULL, paddingTL = NULL, paddingBR = NULL) .Call(`_ROpenCV_cv_HOGDescriptor_HOGDescriptor_computeGradient__0`, self, img, grad, angleOfs, paddingTL, paddingBR)
.ropecv_cv_HOGDescriptor_HOGDescriptor_detect__0 <- function(self, img, hitThreshold = 0, winStride = NULL, padding = NULL, searchLocations = NULL) .Call(`_ROpenCV_cv_HOGDescriptor_HOGDescriptor_detect__0`, self, img, hitThreshold, winStride, padding, searchLocations)
.ropecv_cv_HOGDescriptor_HOGDescriptor_detectMultiScale__0 <- function(self, img, hitThreshold = 0, winStride = NULL, padding = NULL, scale = 1.05, groupThreshold = 2.0, useMeanshiftGrouping = FALSE) .Call(`_ROpenCV_cv_HOGDescriptor_HOGDescriptor_detectMultiScale__0`, self, img, hitThreshold, winStride, padding, scale, groupThreshold, useMeanshiftGrouping)
.ropecv_cv_HOGDescriptor_HOGDescriptor_getDescriptorSize__0 <- function(self) .Call(`_ROpenCV_cv_HOGDescriptor_HOGDescriptor_getDescriptorSize__0`, self)
.ropecv_cv_HOGDescriptor_HOGDescriptor_getWinSigma__0 <- function(self) .Call(`_ROpenCV_cv_HOGDescriptor_HOGDescriptor_getWinSigma__0`, self)
.ropecv_cv_HOGDescriptor_HOGDescriptor_load__0 <- function(self, filename, objname = '') .Call(`_ROpenCV_cv_HOGDescriptor_HOGDescriptor_load__0`, self, filename, objname)
.ropecv_cv_HOGDescriptor_HOGDescriptor_save__0 <- function(self, filename, objname = '') .Call(`_ROpenCV_cv_HOGDescriptor_HOGDescriptor_save__0`, self, filename, objname)
.ropecv_cv_HOGDescriptor_HOGDescriptor_setSVMDetector__0 <- function(self, svmdetector) .Call(`_ROpenCV_cv_HOGDescriptor_HOGDescriptor_setSVMDetector__0`, self, svmdetector)

cvCascadeClassifier <- function(...) .ropecv_new("cvCascadeClassifier", "cvCascadeClassifier", list(...))

# cv::CascadeClassifier::convert
cvCascadeClassifier_convert <- function(oldcascade, newcascade) .Call(`_ROpenCV_cv_CascadeClassifier_CascadeClassifier_convert__0`, oldcascade, newcascade)

cvHOGDescriptor <- function(...) .ropecv_new("cvHOGDescriptor", "cvHOGDescriptor", list(...))

# cv::HOGDescriptor::getDefaultPeopleDetector
cvHOGDescriptor_getDefaultPeopleDetector <- function() .Call(`_ROpenCV_cv_HOGDescriptor_HOGDescriptor_getDefaultPeopleDetector__0`)

# cv::HOGDescriptor::getDaimlerPeopleDetector
cvHOGDescriptor_getDaimlerPeopleDetector <- function() .Call(`_ROpenCV_cv_HOGDescriptor_HOGDescriptor_getDaimlerPeopleDetector__1`)
