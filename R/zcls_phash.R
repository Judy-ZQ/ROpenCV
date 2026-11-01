# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::img_hash::PHash
.ropecv_reg("cvPHash",
  new = list(
    list(f = .ropecv_cv_img_hash_PHash_PHash_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compare = list(
      list(f = .ropecv_cv_img_hash_ImgHashBase_ImgHashBase_compare__0, p = c(hashOne = "mat", hashTwo = "mat"), r = c(TRUE, TRUE), s = "hashOne, hashTwo")
    ),
    compute = list(
      list(f = .ropecv_cv_img_hash_ImgHashBase_ImgHashBase_compute__0, p = c(inputArr = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "inputArr, dst = NULL")
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
