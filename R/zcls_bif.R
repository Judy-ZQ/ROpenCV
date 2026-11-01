# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::face::BIF
.ropecv_reg("cvBIF",
  new = list(
    list(f = .ropecv_cv_face_BIF_BIF_create__0, p = c(num_bands = "int", num_rotations = "int"), r = c(FALSE, FALSE), s = "num_bands = 8, num_rotations = 12")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_face_BIF_BIF_compute__0, p = c(image = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "image, dst = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getNumBands = list(
      list(f = .ropecv_cv_face_BIF_BIF_getNumBands__0, p = c(), r = c(), s = "")
    ),
    getNumRotations = list(
      list(f = .ropecv_cv_face_BIF_BIF_getNumRotations__0, p = c(), r = c(), s = "")
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
