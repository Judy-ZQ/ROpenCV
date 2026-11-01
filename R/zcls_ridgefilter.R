# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::ximgproc::RidgeDetectionFilter
.ropecv_reg("cvRidgeDetectionFilter",
  new = list(
    list(f = .ropecv_cv_ximgproc_RidgeDetectionFilter_RidgeDetectionFilter_create__0, p = c(ddepth = "int", dx = "int", dy = "int", ksize = "int", out_dtype = "int", scale = "dbl", delta = "dbl", borderType = "int"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "ddepth = CV_32FC1, dx = 1, dy = 1, ksize = 3, out_dtype = CV_8UC1, scale = 1, delta = 0, borderType = BORDER_DEFAULT")
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
    getRidgeFilteredImage = list(
      list(f = .ropecv_cv_ximgproc_RidgeDetectionFilter_RidgeDetectionFilter_getRidgeFilteredImage__0, p = c(img = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "img, dst = NULL")
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
