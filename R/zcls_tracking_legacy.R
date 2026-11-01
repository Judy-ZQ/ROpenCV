# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::legacy::tracking::MultiTracker
.ropecv_reg("cvMultiTracker",
  new = list(
    list(f = .ropecv_cv_legacy_tracking_MultiTracker_MultiTracker_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_legacy_tracking_MultiTracker_MultiTracker_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    add = list(
      list(f = .ropecv_cv_legacy_tracking_MultiTracker_MultiTracker_add__0, p = c(newTracker = "obj", image = "mat", boundingBox = "any"), r = c(TRUE, TRUE, TRUE), s = "newTracker, image, boundingBox")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getObjects = list(
      list(f = .ropecv_cv_legacy_tracking_MultiTracker_MultiTracker_getObjects__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    update = list(
      list(f = .ropecv_cv_legacy_tracking_MultiTracker_MultiTracker_update__0, p = c(image = "mat"), r = c(TRUE), s = "image")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::legacy::tracking::Tracker
.ropecv_reg("cvLegacyTracker",
  new = list(

  ),
  m = list(
    init = list(
      list(f = .ropecv_cv_legacy_tracking_Tracker_Tracker_init__0, p = c(image = "mat", boundingBox = "any"), r = c(TRUE, TRUE), s = "image, boundingBox")
    ),
    update = list(
      list(f = .ropecv_cv_legacy_tracking_Tracker_Tracker_update__0, p = c(image = "mat"), r = c(TRUE), s = "image")
    )
  )
)

# cv::legacy::tracking::TrackerBoosting
.ropecv_reg("cvTrackerBoosting",
  new = list(
    list(f = .ropecv_cv_legacy_tracking_TrackerBoosting_TrackerBoosting_create__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)

# cv::legacy::tracking::TrackerCSRT
.ropecv_reg("cvLegacyTrackerCSRT",
  new = list(
    list(f = .ropecv_cv_legacy_tracking_TrackerCSRT_TrackerCSRT_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    setInitialMask = list(
      list(f = .ropecv_cv_legacy_tracking_TrackerCSRT_TrackerCSRT_setInitialMask__0, p = c(mask = "mat"), r = c(FALSE), s = "mask = NULL")
    )
  )
)

# cv::legacy::tracking::TrackerKCF
.ropecv_reg("cvLegacyTrackerKCF",
  new = list(
    list(f = .ropecv_cv_legacy_tracking_TrackerKCF_TrackerKCF_create__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)

# cv::legacy::tracking::TrackerMIL
.ropecv_reg("cvLegacyTrackerMIL",
  new = list(
    list(f = .ropecv_cv_legacy_tracking_TrackerMIL_TrackerMIL_create__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)

# cv::legacy::tracking::TrackerMOSSE
.ropecv_reg("cvTrackerMOSSE",
  new = list(
    list(f = .ropecv_cv_legacy_tracking_TrackerMOSSE_TrackerMOSSE_create__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)

# cv::legacy::tracking::TrackerMedianFlow
.ropecv_reg("cvTrackerMedianFlow",
  new = list(
    list(f = .ropecv_cv_legacy_tracking_TrackerMedianFlow_TrackerMedianFlow_create__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)

# cv::legacy::tracking::TrackerTLD
.ropecv_reg("cvTrackerTLD",
  new = list(
    list(f = .ropecv_cv_legacy_tracking_TrackerTLD_TrackerTLD_create__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)
