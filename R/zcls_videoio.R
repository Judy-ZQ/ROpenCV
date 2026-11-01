# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::VideoCapture
.ropecv_reg("cvVideoCapture",
  new = list(
    list(f = .ropecv_cv_VideoCapture_VideoCapture_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_VideoCapture_VideoCapture_new__1, p = c(filename = "chr", apiPreference = "int"), r = c(TRUE, FALSE), s = "filename, apiPreference = CAP_ANY"),
    list(f = .ropecv_cv_VideoCapture_VideoCapture_new__2, p = c(index = "int", apiPreference = "int"), r = c(TRUE, FALSE), s = "index, apiPreference = CAP_ANY"),
    list(f = .ropecv_cv_VideoCapture_VideoCapture_new__3, p = c(filename = "chr", apiPreference = "int", params = "int"), r = c(TRUE, TRUE, TRUE), s = "filename, apiPreference, params"),
    list(f = .ropecv_cv_VideoCapture_VideoCapture_new__4, p = c(index = "int", apiPreference = "int", params = "int"), r = c(TRUE, TRUE, TRUE), s = "index, apiPreference, params")
  ),
  m = list(
    get = list(
      list(f = .ropecv_cv_VideoCapture_VideoCapture_get__0, p = c(propId = "int"), r = c(TRUE), s = "propId")
    ),
    getBackendName = list(
      list(f = .ropecv_cv_VideoCapture_VideoCapture_getBackendName__0, p = c(), r = c(), s = "")
    ),
    getExceptionMode = list(
      list(f = .ropecv_cv_VideoCapture_VideoCapture_getExceptionMode__0, p = c(), r = c(), s = "")
    ),
    grab = list(
      list(f = .ropecv_cv_VideoCapture_VideoCapture_grab__0, p = c(), r = c(), s = "")
    ),
    isOpened = list(
      list(f = .ropecv_cv_VideoCapture_VideoCapture_isOpened__0, p = c(), r = c(), s = "")
    ),
    open = list(
      list(f = .ropecv_cv_VideoCapture_VideoCapture_open__0, p = c(filename = "chr", apiPreference = "int"), r = c(TRUE, FALSE), s = "filename, apiPreference = CAP_ANY"),
      list(f = .ropecv_cv_VideoCapture_VideoCapture_open__1, p = c(index = "int", apiPreference = "int"), r = c(TRUE, FALSE), s = "index, apiPreference = CAP_ANY"),
      list(f = .ropecv_cv_VideoCapture_VideoCapture_open__2, p = c(filename = "chr", apiPreference = "int", params = "int"), r = c(TRUE, TRUE, TRUE), s = "filename, apiPreference, params"),
      list(f = .ropecv_cv_VideoCapture_VideoCapture_open__3, p = c(index = "int", apiPreference = "int", params = "int"), r = c(TRUE, TRUE, TRUE), s = "index, apiPreference, params")
    ),
    read = list(
      list(f = .ropecv_cv_VideoCapture_VideoCapture_read__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    release = list(
      list(f = .ropecv_cv_VideoCapture_VideoCapture_release__0, p = c(), r = c(), s = "")
    ),
    retrieve = list(
      list(f = .ropecv_cv_VideoCapture_VideoCapture_retrieve__0, p = c(dst = "mat", flag = "int"), r = c(FALSE, FALSE), s = "dst = NULL, flag = 0")
    ),
    set = list(
      list(f = .ropecv_cv_VideoCapture_VideoCapture_set__0, p = c(propId = "int", value = "dbl"), r = c(TRUE, TRUE), s = "propId, value")
    ),
    setExceptionMode = list(
      list(f = .ropecv_cv_VideoCapture_VideoCapture_setExceptionMode__0, p = c(enable = "lgl"), r = c(TRUE), s = "enable")
    )
  )
)

# cv::VideoWriter
.ropecv_reg("cvVideoWriter",
  new = list(
    list(f = .ropecv_cv_VideoWriter_VideoWriter_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_VideoWriter_VideoWriter_new__1, p = c(filename = "chr", fourcc = "int", fps = "dbl", frameSize = "size", isColor = "lgl"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE), s = "filename, fourcc, fps, frameSize, isColor = TRUE"),
    list(f = .ropecv_cv_VideoWriter_VideoWriter_new__2, p = c(filename = "chr", fourcc = "int", fps = "dbl", frameSize = "size", params = "int"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE), s = "filename, fourcc, fps, frameSize, params"),
    list(f = .ropecv_cv_VideoWriter_VideoWriter_new__3, p = c(filename = "chr", apiPreference = "int", fourcc = "int", fps = "dbl", frameSize = "size", isColor = "lgl"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, FALSE), s = "filename, apiPreference, fourcc, fps, frameSize, isColor = TRUE"),
    list(f = .ropecv_cv_VideoWriter_VideoWriter_new__4, p = c(filename = "chr", apiPreference = "int", fourcc = "int", fps = "dbl", frameSize = "size", params = "int"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE), s = "filename, apiPreference, fourcc, fps, frameSize, params")
  ),
  m = list(
    get = list(
      list(f = .ropecv_cv_VideoWriter_VideoWriter_get__0, p = c(propId = "int"), r = c(TRUE), s = "propId")
    ),
    getBackendName = list(
      list(f = .ropecv_cv_VideoWriter_VideoWriter_getBackendName__0, p = c(), r = c(), s = "")
    ),
    isOpened = list(
      list(f = .ropecv_cv_VideoWriter_VideoWriter_isOpened__0, p = c(), r = c(), s = "")
    ),
    open = list(
      list(f = .ropecv_cv_VideoWriter_VideoWriter_open__0, p = c(filename = "chr", fourcc = "int", fps = "dbl", frameSize = "size", isColor = "lgl"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE), s = "filename, fourcc, fps, frameSize, isColor = TRUE"),
      list(f = .ropecv_cv_VideoWriter_VideoWriter_open__1, p = c(filename = "chr", fourcc = "int", fps = "dbl", frameSize = "size", params = "int"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE), s = "filename, fourcc, fps, frameSize, params"),
      list(f = .ropecv_cv_VideoWriter_VideoWriter_open__2, p = c(filename = "chr", apiPreference = "int", fourcc = "int", fps = "dbl", frameSize = "size", isColor = "lgl"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, FALSE), s = "filename, apiPreference, fourcc, fps, frameSize, isColor = TRUE"),
      list(f = .ropecv_cv_VideoWriter_VideoWriter_open__3, p = c(filename = "chr", apiPreference = "int", fourcc = "int", fps = "dbl", frameSize = "size", params = "int"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE), s = "filename, apiPreference, fourcc, fps, frameSize, params")
    ),
    release = list(
      list(f = .ropecv_cv_VideoWriter_VideoWriter_release__0, p = c(), r = c(), s = "")
    ),
    set = list(
      list(f = .ropecv_cv_VideoWriter_VideoWriter_set__0, p = c(propId = "int", value = "dbl"), r = c(TRUE, TRUE), s = "propId, value")
    ),
    write = list(
      list(f = .ropecv_cv_VideoWriter_VideoWriter_write__0, p = c(image = "mat"), r = c(TRUE), s = "image")
    )
  )
)
