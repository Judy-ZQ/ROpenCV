# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::rapid::GOSTracker
.ropecv_reg("cvGOSTracker",
  new = list(
    list(f = .ropecv_cv_rapid_GOSTracker_GOSTracker_create__0, p = c(pts3d = "mat", tris = "mat", histBins = "int", sobelThesh = "any"), r = c(TRUE, TRUE, FALSE, FALSE), s = "pts3d, tris, histBins = 4, sobelThesh = 10")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    clearState = list(
      list(f = .ropecv_cv_rapid_Tracker_Tracker_clearState__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_rapid_Tracker_Tracker_compute__0, p = c(img = "mat", num = "int", len = "int", K = "mat", rvec = "mat", tvec = "mat", termcrit = "tc"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "img, num, len, K, rvec = NULL, tvec = NULL, termcrit = c(0, 5, 1.5)")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::rapid::OLSTracker
.ropecv_reg("cvOLSTracker",
  new = list(
    list(f = .ropecv_cv_rapid_OLSTracker_OLSTracker_create__0, p = c(pts3d = "mat", tris = "mat", histBins = "int", sobelThesh = "any"), r = c(TRUE, TRUE, FALSE, FALSE), s = "pts3d, tris, histBins = 8, sobelThesh = 10")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    clearState = list(
      list(f = .ropecv_cv_rapid_Tracker_Tracker_clearState__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_rapid_Tracker_Tracker_compute__0, p = c(img = "mat", num = "int", len = "int", K = "mat", rvec = "mat", tvec = "mat", termcrit = "tc"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "img, num, len, K, rvec = NULL, tvec = NULL, termcrit = c(0, 5, 1.5)")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::rapid::Rapid
.ropecv_reg("cvRapid",
  new = list(
    list(f = .ropecv_cv_rapid_Rapid_Rapid_create__0, p = c(pts3d = "mat", tris = "mat"), r = c(TRUE, TRUE), s = "pts3d, tris")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    clearState = list(
      list(f = .ropecv_cv_rapid_Tracker_Tracker_clearState__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_rapid_Tracker_Tracker_compute__0, p = c(img = "mat", num = "int", len = "int", K = "mat", rvec = "mat", tvec = "mat", termcrit = "tc"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "img, num, len, K, rvec = NULL, tvec = NULL, termcrit = c(0, 5, 1.5)")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::rapid::Tracker
.ropecv_reg("cvRapidTracker",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    clearState = list(
      list(f = .ropecv_cv_rapid_Tracker_Tracker_clearState__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_rapid_Tracker_Tracker_compute__0, p = c(img = "mat", num = "int", len = "int", K = "mat", rvec = "mat", tvec = "mat", termcrit = "tc"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "img, num, len, K, rvec = NULL, tvec = NULL, termcrit = c(0, 5, 1.5)")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)
