# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_legacy_tracking_MultiTracker_MultiTracker_new__0 <- function() .Call(`_ROpenCV_cv_legacy_tracking_MultiTracker_MultiTracker_new__0`)
.ropecv_cv_legacy_tracking_MultiTracker_MultiTracker_create__0 <- function() .Call(`_ROpenCV_cv_legacy_tracking_MultiTracker_MultiTracker_create__0`)
.ropecv_cv_legacy_tracking_MultiTracker_MultiTracker_add__0 <- function(self, newTracker, image, boundingBox) .Call(`_ROpenCV_cv_legacy_tracking_MultiTracker_MultiTracker_add__0`, self, newTracker, image, boundingBox)
.ropecv_cv_legacy_tracking_MultiTracker_MultiTracker_getObjects__0 <- function(self) .Call(`_ROpenCV_cv_legacy_tracking_MultiTracker_MultiTracker_getObjects__0`, self)
.ropecv_cv_legacy_tracking_MultiTracker_MultiTracker_update__0 <- function(self, image) .Call(`_ROpenCV_cv_legacy_tracking_MultiTracker_MultiTracker_update__0`, self, image)
.ropecv_cv_legacy_tracking_Tracker_Tracker_init__0 <- function(self, image, boundingBox) .Call(`_ROpenCV_cv_legacy_tracking_Tracker_Tracker_init__0`, self, image, boundingBox)
.ropecv_cv_legacy_tracking_Tracker_Tracker_update__0 <- function(self, image) .Call(`_ROpenCV_cv_legacy_tracking_Tracker_Tracker_update__0`, self, image)
.ropecv_cv_legacy_tracking_TrackerBoosting_TrackerBoosting_create__0 <- function() .Call(`_ROpenCV_cv_legacy_tracking_TrackerBoosting_TrackerBoosting_create__0`)
.ropecv_cv_legacy_tracking_TrackerCSRT_TrackerCSRT_create__0 <- function() .Call(`_ROpenCV_cv_legacy_tracking_TrackerCSRT_TrackerCSRT_create__0`)
.ropecv_cv_legacy_tracking_TrackerCSRT_TrackerCSRT_setInitialMask__0 <- function(self, mask = NULL) .Call(`_ROpenCV_cv_legacy_tracking_TrackerCSRT_TrackerCSRT_setInitialMask__0`, self, mask)
.ropecv_cv_legacy_tracking_TrackerKCF_TrackerKCF_create__0 <- function() .Call(`_ROpenCV_cv_legacy_tracking_TrackerKCF_TrackerKCF_create__0`)
.ropecv_cv_legacy_tracking_TrackerMIL_TrackerMIL_create__0 <- function() .Call(`_ROpenCV_cv_legacy_tracking_TrackerMIL_TrackerMIL_create__0`)
.ropecv_cv_legacy_tracking_TrackerMOSSE_TrackerMOSSE_create__0 <- function() .Call(`_ROpenCV_cv_legacy_tracking_TrackerMOSSE_TrackerMOSSE_create__0`)
.ropecv_cv_legacy_tracking_TrackerMedianFlow_TrackerMedianFlow_create__0 <- function() .Call(`_ROpenCV_cv_legacy_tracking_TrackerMedianFlow_TrackerMedianFlow_create__0`)
.ropecv_cv_legacy_tracking_TrackerTLD_TrackerTLD_create__0 <- function() .Call(`_ROpenCV_cv_legacy_tracking_TrackerTLD_TrackerTLD_create__0`)

cvMultiTracker <- function(...) .ropecv_new("cvMultiTracker", "cvMultiTracker", list(...))

cvLegacyTracker <- function(...) .ropecv_new("cvLegacyTracker", "cvLegacyTracker", list(...))

cvTrackerBoosting <- function(...) .ropecv_new("cvTrackerBoosting", "cvTrackerBoosting", list(...))

cvLegacyTrackerCSRT <- function(...) .ropecv_new("cvLegacyTrackerCSRT", "cvLegacyTrackerCSRT", list(...))

cvLegacyTrackerKCF <- function(...) .ropecv_new("cvLegacyTrackerKCF", "cvLegacyTrackerKCF", list(...))

cvLegacyTrackerMIL <- function(...) .ropecv_new("cvLegacyTrackerMIL", "cvLegacyTrackerMIL", list(...))

cvTrackerMOSSE <- function(...) .ropecv_new("cvTrackerMOSSE", "cvTrackerMOSSE", list(...))

cvTrackerMedianFlow <- function(...) .ropecv_new("cvTrackerMedianFlow", "cvTrackerMedianFlow", list(...))

cvTrackerTLD <- function(...) .ropecv_new("cvTrackerTLD", "cvTrackerTLD", list(...))
