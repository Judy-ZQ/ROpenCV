# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_ximgproc_FastLineDetector_FastLineDetector_detect__0 <- function(self, image, dst = NULL) .Call(`_ROpenCV_cv_ximgproc_FastLineDetector_FastLineDetector_detect__0`, self, image, dst)
.ropecv_cv_ximgproc_FastLineDetector_FastLineDetector_drawSegments__0 <- function(self, image = NULL, lines, draw_arrow = FALSE, linecolor = c(0, 0, 255), linethickness = 1) .Call(`_ROpenCV_cv_ximgproc_FastLineDetector_FastLineDetector_drawSegments__0`, self, image, lines, draw_arrow, linecolor, linethickness)

cvFastLineDetector <- function(...) .ropecv_new("cvFastLineDetector", "cvFastLineDetector", list(...))
