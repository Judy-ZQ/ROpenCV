# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::FileNode
.ropecv_reg("cvFileNode",
  new = list(
    list(f = .ropecv_cv_FileNode_FileNode_new__0, p = c(), r = c(), s = "")
  ),
  m = list(
    empty = list(
      list(f = .ropecv_cv_FileNode_FileNode_empty__0, p = c(), r = c(), s = "")
    ),
    isInt = list(
      list(f = .ropecv_cv_FileNode_FileNode_isInt__0, p = c(), r = c(), s = "")
    ),
    isMap = list(
      list(f = .ropecv_cv_FileNode_FileNode_isMap__0, p = c(), r = c(), s = "")
    ),
    isNamed = list(
      list(f = .ropecv_cv_FileNode_FileNode_isNamed__0, p = c(), r = c(), s = "")
    ),
    isNone = list(
      list(f = .ropecv_cv_FileNode_FileNode_isNone__0, p = c(), r = c(), s = "")
    ),
    isReal = list(
      list(f = .ropecv_cv_FileNode_FileNode_isReal__0, p = c(), r = c(), s = "")
    ),
    isSeq = list(
      list(f = .ropecv_cv_FileNode_FileNode_isSeq__0, p = c(), r = c(), s = "")
    ),
    isString = list(
      list(f = .ropecv_cv_FileNode_FileNode_isString__0, p = c(), r = c(), s = "")
    ),
    keys = list(
      list(f = .ropecv_cv_FileNode_FileNode_keys__0, p = c(), r = c(), s = "")
    ),
    mat = list(
      list(f = .ropecv_cv_FileNode_FileNode_mat__0, p = c(), r = c(), s = "")
    ),
    name = list(
      list(f = .ropecv_cv_FileNode_FileNode_name__0, p = c(), r = c(), s = "")
    ),
    rawSize = list(
      list(f = .ropecv_cv_FileNode_FileNode_rawSize__0, p = c(), r = c(), s = "")
    ),
    real = list(
      list(f = .ropecv_cv_FileNode_FileNode_real__0, p = c(), r = c(), s = "")
    ),
    size = list(
      list(f = .ropecv_cv_FileNode_FileNode_size__0, p = c(), r = c(), s = "")
    ),
    string = list(
      list(f = .ropecv_cv_FileNode_FileNode_string__0, p = c(), r = c(), s = "")
    ),
    type = list(
      list(f = .ropecv_cv_FileNode_FileNode_type__0, p = c(), r = c(), s = "")
    )
  )
)

# cv::FileStorage
.ropecv_reg("cvFileStorage",
  new = list(
    list(f = .ropecv_cv_FileStorage_FileStorage_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_FileStorage_FileStorage_new__1, p = c(filename = "chr", flags = "int", encoding = "chr"), r = c(TRUE, TRUE, FALSE), s = "filename, flags, encoding = ''")
  ),
  m = list(
    endWriteStruct = list(
      list(f = .ropecv_cv_FileStorage_FileStorage_endWriteStruct__0, p = c(), r = c(), s = "")
    ),
    getFirstTopLevelNode = list(
      list(f = .ropecv_cv_FileStorage_FileStorage_getFirstTopLevelNode__0, p = c(), r = c(), s = "")
    ),
    getFormat = list(
      list(f = .ropecv_cv_FileStorage_FileStorage_getFormat__0, p = c(), r = c(), s = "")
    ),
    isOpened = list(
      list(f = .ropecv_cv_FileStorage_FileStorage_isOpened__0, p = c(), r = c(), s = "")
    ),
    open = list(
      list(f = .ropecv_cv_FileStorage_FileStorage_open__0, p = c(filename = "chr", flags = "int", encoding = "chr"), r = c(TRUE, TRUE, FALSE), s = "filename, flags, encoding = ''")
    ),
    release = list(
      list(f = .ropecv_cv_FileStorage_FileStorage_release__0, p = c(), r = c(), s = "")
    ),
    releaseAndGetString = list(
      list(f = .ropecv_cv_FileStorage_FileStorage_releaseAndGetString__0, p = c(), r = c(), s = "")
    ),
    root = list(
      list(f = .ropecv_cv_FileStorage_FileStorage_root__0, p = c(streamidx = "int"), r = c(FALSE), s = "streamidx = 0")
    ),
    startWriteStruct = list(
      list(f = .ropecv_cv_FileStorage_FileStorage_startWriteStruct__0, p = c(name = "chr", flags = "int", typeName = "chr"), r = c(TRUE, TRUE, FALSE), s = "name, flags, typeName = ''")
    ),
    write = list(
      list(f = .ropecv_cv_FileStorage_FileStorage_write__0, p = c(name = "chr", val = "int"), r = c(TRUE, TRUE), s = "name, val"),
      list(f = .ropecv_cv_FileStorage_FileStorage_write__1, p = c(name = "chr", val = "dbl"), r = c(TRUE, TRUE), s = "name, val"),
      list(f = .ropecv_cv_FileStorage_FileStorage_write__2, p = c(name = "chr", val = "chr"), r = c(TRUE, TRUE), s = "name, val"),
      list(f = .ropecv_cv_FileStorage_FileStorage_write__3, p = c(name = "chr", val = "any"), r = c(TRUE, TRUE), s = "name, val"),
      list(f = .ropecv_cv_FileStorage_FileStorage_write__4, p = c(name = "chr", val = "chr"), r = c(TRUE, TRUE), s = "name, val")
    ),
    writeComment = list(
      list(f = .ropecv_cv_FileStorage_FileStorage_writeComment__0, p = c(comment = "chr", append = "lgl"), r = c(TRUE, FALSE), s = "comment, append = FALSE")
    )
  )
)
