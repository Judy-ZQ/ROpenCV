# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_rapid_GOSTracker_GOSTracker_create__0 <- function(pts3d, tris, histBins = 4, sobelThesh = 10) .Call(`_ROpenCV_cv_rapid_GOSTracker_GOSTracker_create__0`, pts3d, tris, histBins, sobelThesh)
.ropecv_cv_rapid_OLSTracker_OLSTracker_create__0 <- function(pts3d, tris, histBins = 8, sobelThesh = 10) .Call(`_ROpenCV_cv_rapid_OLSTracker_OLSTracker_create__0`, pts3d, tris, histBins, sobelThesh)
.ropecv_cv_rapid_Rapid_Rapid_create__0 <- function(pts3d, tris) .Call(`_ROpenCV_cv_rapid_Rapid_Rapid_create__0`, pts3d, tris)
.ropecv_cv_rapid_Tracker_Tracker_clearState__0 <- function(self) .Call(`_ROpenCV_cv_rapid_Tracker_Tracker_clearState__0`, self)
.ropecv_cv_rapid_Tracker_Tracker_compute__0 <- function(self, img, num, len, K, rvec = NULL, tvec = NULL, termcrit = c(0, 5, 1.5)) .Call(`_ROpenCV_cv_rapid_Tracker_Tracker_compute__0`, self, img, num, len, K, rvec, tvec, termcrit)

cvGOSTracker <- function(...) .ropecv_new("cvGOSTracker", "cvGOSTracker", list(...))

cvOLSTracker <- function(...) .ropecv_new("cvOLSTracker", "cvOLSTracker", list(...))

cvRapid <- function(...) .ropecv_new("cvRapid", "cvRapid", list(...))

cvRapidTracker <- function(...) .ropecv_new("cvRapidTracker", "cvRapidTracker", list(...))
