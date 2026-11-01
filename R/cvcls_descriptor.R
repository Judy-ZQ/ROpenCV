# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_createBinaryDescriptor__0 <- function() .Call(`_ROpenCV_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_createBinaryDescriptor__0`)
.ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_compute__0 <- function(self, image, returnFloatDescr = FALSE) .Call(`_ROpenCV_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_compute__0`, self, image, returnFloatDescr)
.ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_detect__0 <- function(self, image, mask = NULL) .Call(`_ROpenCV_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_detect__0`, self, image, mask)
.ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_getNumOfOctaves__0 <- function(self) .Call(`_ROpenCV_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_getNumOfOctaves__0`, self)
.ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_getReductionRatio__0 <- function(self) .Call(`_ROpenCV_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_getReductionRatio__0`, self)
.ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_getWidthOfBand__0 <- function(self) .Call(`_ROpenCV_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_getWidthOfBand__0`, self)
.ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_setNumOfOctaves__0 <- function(self, octaves) .Call(`_ROpenCV_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_setNumOfOctaves__0`, self, octaves)
.ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_setReductionRatio__0 <- function(self, rRatio) .Call(`_ROpenCV_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_setReductionRatio__0`, self, rRatio)
.ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_setWidthOfBand__0 <- function(self, width) .Call(`_ROpenCV_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_setWidthOfBand__0`, self, width)
.ropecv_cv_line_descriptor_BinaryDescriptorMatcher_BinaryDescriptorMatcher_new__0 <- function() .Call(`_ROpenCV_cv_line_descriptor_BinaryDescriptorMatcher_BinaryDescriptorMatcher_new__0`)
.ropecv_cv_line_descriptor_BinaryDescriptorMatcher_BinaryDescriptorMatcher_knnMatch__0 <- function(self, queryDescriptors, trainDescriptors, k, mask = NULL, compactResult = FALSE) .Call(`_ROpenCV_cv_line_descriptor_BinaryDescriptorMatcher_BinaryDescriptorMatcher_knnMatch__0`, self, queryDescriptors, trainDescriptors, k, mask, compactResult)
.ropecv_cv_line_descriptor_BinaryDescriptorMatcher_BinaryDescriptorMatcher_match__0 <- function(self, queryDescriptors, trainDescriptors, mask = NULL) .Call(`_ROpenCV_cv_line_descriptor_BinaryDescriptorMatcher_BinaryDescriptorMatcher_match__0`, self, queryDescriptors, trainDescriptors, mask)
.ropecv_cv_line_descriptor_KeyLine_KeyLine_new__0 <- function() .Call(`_ROpenCV_cv_line_descriptor_KeyLine_KeyLine_new__0`)
.ropecv_cv_line_descriptor_KeyLine_KeyLine_getEndPoint__0 <- function(self) .Call(`_ROpenCV_cv_line_descriptor_KeyLine_KeyLine_getEndPoint__0`, self)
.ropecv_cv_line_descriptor_KeyLine_KeyLine_getEndPointInOctave__0 <- function(self) .Call(`_ROpenCV_cv_line_descriptor_KeyLine_KeyLine_getEndPointInOctave__0`, self)
.ropecv_cv_line_descriptor_KeyLine_KeyLine_getStartPoint__0 <- function(self) .Call(`_ROpenCV_cv_line_descriptor_KeyLine_KeyLine_getStartPoint__0`, self)
.ropecv_cv_line_descriptor_KeyLine_KeyLine_getStartPointInOctave__0 <- function(self) .Call(`_ROpenCV_cv_line_descriptor_KeyLine_KeyLine_getStartPointInOctave__0`, self)
.ropecv_cv_line_descriptor_LSDDetector_LSDDetector_new__0 <- function() .Call(`_ROpenCV_cv_line_descriptor_LSDDetector_LSDDetector_new__0`)
.ropecv_cv_line_descriptor_LSDDetector_LSDDetector_createLSDDetector__0 <- function() .Call(`_ROpenCV_cv_line_descriptor_LSDDetector_LSDDetector_createLSDDetector__0`)
.ropecv_cv_line_descriptor_LSDDetector_LSDDetector_detect__0 <- function(self, image, scale, numOctaves, mask = NULL) .Call(`_ROpenCV_cv_line_descriptor_LSDDetector_LSDDetector_detect__0`, self, image, scale, numOctaves, mask)
.ropecv_cv_line_descriptor_LSDDetector_LSDDetector_detect__1 <- function(self, images, keylines = NULL, scale, numOctaves, masks = NULL) .Call(`_ROpenCV_cv_line_descriptor_LSDDetector_LSDDetector_detect__1`, self, images, keylines, scale, numOctaves, masks)
.ropecv_cv_line_descriptor_LSDParam_LSDParam_new__0 <- function() .Call(`_ROpenCV_cv_line_descriptor_LSDParam_LSDParam_new__0`)

cvBinaryDescriptor <- function(...) .ropecv_new("cvBinaryDescriptor", "cvBinaryDescriptor", list(...))

# cv::line_descriptor::BinaryDescriptor::createBinaryDescriptor
cvBinaryDescriptor_createBinaryDescriptor <- function() .Call(`_ROpenCV_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_createBinaryDescriptor__0`)

cvBinaryDescriptorMatcher <- function(...) .ropecv_new("cvBinaryDescriptorMatcher", "cvBinaryDescriptorMatcher", list(...))

cvKeyLine <- function(...) .ropecv_new("cvKeyLine", "cvKeyLine", list(...))

cvLSDDetector <- function(...) .ropecv_new("cvLSDDetector", "cvLSDDetector", list(...))

# cv::line_descriptor::LSDDetector::createLSDDetector
cvLSDDetector_createLSDDetector <- function() .Call(`_ROpenCV_cv_line_descriptor_LSDDetector_LSDDetector_createLSDDetector__0`)

cvLSDParam <- function(...) .ropecv_new("cvLSDParam", "cvLSDParam", list(...))
