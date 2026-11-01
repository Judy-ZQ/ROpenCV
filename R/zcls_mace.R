# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::face::MACE
.ropecv_reg("cvMACE",
  new = list(
    list(f = .ropecv_cv_face_MACE_MACE_create__0, p = c(IMGSIZE = "int"), r = c(FALSE), s = "IMGSIZE = 64")
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
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    salt = list(
      list(f = .ropecv_cv_face_MACE_MACE_salt__0, p = c(passphrase = "chr"), r = c(TRUE), s = "passphrase")
    ),
    same = list(
      list(f = .ropecv_cv_face_MACE_MACE_same__0, p = c(query = "mat"), r = c(TRUE), s = "query")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    train = list(
      list(f = .ropecv_cv_face_MACE_MACE_train__0, p = c(images = "matlist"), r = c(TRUE), s = "images")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)
