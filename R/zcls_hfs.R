# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::hfs::HfsSegment
.ropecv_reg("cvHfsSegment",
  new = list(
    list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_create__0, p = c(height = "int", width = "int", segEgbThresholdI = "dbl", minRegionSizeI = "int", segEgbThresholdII = "dbl", minRegionSizeII = "int", spatialWeight = "dbl", slicSpixelSize = "int", numSlicIter = "int"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "height, width, segEgbThresholdI = 0.08, minRegionSizeI = 100, segEgbThresholdII = 0.28, minRegionSizeII = 200, spatialWeight = 0.6, slicSpixelSize = 8, numSlicIter = 5")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getMinRegionSizeI = list(
      list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_getMinRegionSizeI__0, p = c(), r = c(), s = "")
    ),
    getMinRegionSizeII = list(
      list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_getMinRegionSizeII__0, p = c(), r = c(), s = "")
    ),
    getNumSlicIter = list(
      list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_getNumSlicIter__0, p = c(), r = c(), s = "")
    ),
    getSegEgbThresholdI = list(
      list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_getSegEgbThresholdI__0, p = c(), r = c(), s = "")
    ),
    getSegEgbThresholdII = list(
      list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_getSegEgbThresholdII__0, p = c(), r = c(), s = "")
    ),
    getSlicSpixelSize = list(
      list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_getSlicSpixelSize__0, p = c(), r = c(), s = "")
    ),
    getSpatialWeight = list(
      list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_getSpatialWeight__0, p = c(), r = c(), s = "")
    ),
    performSegmentCpu = list(
      list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_performSegmentCpu__0, p = c(src = "mat", ifDraw = "lgl"), r = c(TRUE, FALSE), s = "src, ifDraw = TRUE")
    ),
    performSegmentGpu = list(
      list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_performSegmentGpu__0, p = c(src = "mat", ifDraw = "lgl"), r = c(TRUE, FALSE), s = "src, ifDraw = TRUE")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setMinRegionSizeI = list(
      list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_setMinRegionSizeI__0, p = c(n = "int"), r = c(TRUE), s = "n")
    ),
    setMinRegionSizeII = list(
      list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_setMinRegionSizeII__0, p = c(n = "int"), r = c(TRUE), s = "n")
    ),
    setNumSlicIter = list(
      list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_setNumSlicIter__0, p = c(n = "int"), r = c(TRUE), s = "n")
    ),
    setSegEgbThresholdI = list(
      list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_setSegEgbThresholdI__0, p = c(c = "dbl"), r = c(TRUE), s = "c")
    ),
    setSegEgbThresholdII = list(
      list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_setSegEgbThresholdII__0, p = c(c = "dbl"), r = c(TRUE), s = "c")
    ),
    setSlicSpixelSize = list(
      list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_setSlicSpixelSize__0, p = c(n = "int"), r = c(TRUE), s = "n")
    ),
    setSpatialWeight = list(
      list(f = .ropecv_cv_hfs_HfsSegment_HfsSegment_setSpatialWeight__0, p = c(w = "dbl"), r = c(TRUE), s = "w")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)
