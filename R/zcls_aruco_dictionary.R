# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::aruco::Dictionary
.ropecv_reg("cvDictionary",
  new = list(
    list(f = .ropecv_cv_aruco_Dictionary_Dictionary_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_aruco_Dictionary_Dictionary_new__1, p = c(bytesList = "any", markerSize = "int", maxcorr = "int"), r = c(TRUE, TRUE, FALSE), s = "bytesList, markerSize, maxcorr = 0")
  ),
  m = list(
    generateImageMarker = list(
      list(f = .ropecv_cv_aruco_Dictionary_Dictionary_generateImageMarker__0, p = c(id = "int", sidePixels = "int", borderBits = "int", dst = "mat"), r = c(TRUE, TRUE, FALSE, FALSE), s = "id, sidePixels, borderBits = 1, dst = NULL")
    ),
    getDistanceToId = list(
      list(f = .ropecv_cv_aruco_Dictionary_Dictionary_getDistanceToId__0, p = c(bits = "mat", id = "int", allRotations = "lgl"), r = c(TRUE, TRUE, FALSE), s = "bits, id, allRotations = TRUE")
    ),
    identify = list(
      list(f = .ropecv_cv_aruco_Dictionary_Dictionary_identify__0, p = c(onlyBits = "any", maxCorrectionRate = "dbl"), r = c(TRUE, TRUE), s = "onlyBits, maxCorrectionRate")
    ),
    readDictionary = list(
      list(f = .ropecv_cv_aruco_Dictionary_Dictionary_readDictionary__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    writeDictionary = list(
      list(f = .ropecv_cv_aruco_Dictionary_Dictionary_writeDictionary__0, p = c(fs = "any", name = "chr"), r = c(TRUE, FALSE), s = "fs, name = ''")
    )
  )
)
