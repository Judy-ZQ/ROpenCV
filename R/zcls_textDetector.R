# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::text::TextDetector
.ropecv_reg("cvTextDetector",
  new = list(

  ),
  m = list(
    detect = list(
      list(f = .ropecv_cv_text_TextDetector_TextDetector_detect__0, p = c(inputImage = "mat"), r = c(TRUE), s = "inputImage")
    )
  )
)

# cv::text::TextDetectorCNN
.ropecv_reg("cvTextDetectorCNN",
  new = list(
    list(f = .ropecv_cv_text_TextDetectorCNN_TextDetectorCNN_create__0, p = c(modelArchFilename = "chr", modelWeightsFilename = "chr"), r = c(TRUE, TRUE), s = "modelArchFilename, modelWeightsFilename")
  ),
  m = list(
    detect = list(
      list(f = .ropecv_cv_text_TextDetectorCNN_TextDetectorCNN_detect__0, p = c(inputImage = "mat"), r = c(TRUE), s = "inputImage")
    )
  )
)
