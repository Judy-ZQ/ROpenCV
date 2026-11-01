# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_ximgproc_ScanSegment_ScanSegment_getLabelContourMask__0 <- function(self, dst = NULL, thick_line = FALSE) .Call(`_ROpenCV_cv_ximgproc_ScanSegment_ScanSegment_getLabelContourMask__0`, self, dst, thick_line)
.ropecv_cv_ximgproc_ScanSegment_ScanSegment_getLabels__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_ximgproc_ScanSegment_ScanSegment_getLabels__0`, self, dst)
.ropecv_cv_ximgproc_ScanSegment_ScanSegment_getNumberOfSuperpixels__0 <- function(self) .Call(`_ROpenCV_cv_ximgproc_ScanSegment_ScanSegment_getNumberOfSuperpixels__0`, self)
.ropecv_cv_ximgproc_ScanSegment_ScanSegment_iterate__0 <- function(self, img) .Call(`_ROpenCV_cv_ximgproc_ScanSegment_ScanSegment_iterate__0`, self, img)

cvScanSegment <- function(...) .ropecv_new("cvScanSegment", "cvScanSegment", list(...))
