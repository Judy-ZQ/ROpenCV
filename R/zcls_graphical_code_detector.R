# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::GraphicalCodeDetector
.ropecv_reg("cvGraphicalCodeDetector",
  new = list(

  ),
  m = list(
    decode = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_decode__0, p = c(img = "mat", points = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "img, points, dst = NULL")
    ),
    decodeMulti = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_decodeMulti__0, p = c(img = "mat", points = "mat", straight_code = "lst"), r = c(TRUE, TRUE, FALSE), s = "img, points, straight_code = NULL")
    ),
    detect = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detect__0, p = c(img = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "img, dst = NULL")
    ),
    detectAndDecode = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detectAndDecode__0, p = c(img = "mat", points = "mat", straight_code = "mat"), r = c(TRUE, FALSE, FALSE), s = "img, points = NULL, straight_code = NULL")
    ),
    detectAndDecodeMulti = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detectAndDecodeMulti__0, p = c(img = "mat", points = "mat", straight_code = "lst"), r = c(TRUE, FALSE, FALSE), s = "img, points = NULL, straight_code = NULL")
    ),
    detectMulti = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detectMulti__0, p = c(img = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "img, dst = NULL")
    )
  )
)
