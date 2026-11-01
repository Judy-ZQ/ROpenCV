# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::FaceDetectorYN
.ropecv_reg("cvFaceDetectorYN",
  new = list(
    list(f = .ropecv_cv_FaceDetectorYN_FaceDetectorYN_create__0, p = c(model = "chr", config = "chr", input_size = "size", score_threshold = "dbl", nms_threshold = "dbl", top_k = "int", backend_id = "int", target_id = "int"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "model, config, input_size, score_threshold = 0.9, nms_threshold = 0.3, top_k = 5000, backend_id = 0, target_id = 0"),
    list(f = .ropecv_cv_FaceDetectorYN_FaceDetectorYN_create__1, p = c(framework = "chr", bufferModel = "int", bufferConfig = "int", input_size = "size", score_threshold = "dbl", nms_threshold = "dbl", top_k = "int", backend_id = "int", target_id = "int"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "framework, bufferModel, bufferConfig, input_size, score_threshold = 0.9, nms_threshold = 0.3, top_k = 5000, backend_id = 0, target_id = 0")
  ),
  m = list(
    detect = list(
      list(f = .ropecv_cv_FaceDetectorYN_FaceDetectorYN_detect__0, p = c(image = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "image, dst = NULL")
    ),
    getInputSize = list(
      list(f = .ropecv_cv_FaceDetectorYN_FaceDetectorYN_getInputSize__0, p = c(), r = c(), s = "")
    ),
    getNMSThreshold = list(
      list(f = .ropecv_cv_FaceDetectorYN_FaceDetectorYN_getNMSThreshold__0, p = c(), r = c(), s = "")
    ),
    getScoreThreshold = list(
      list(f = .ropecv_cv_FaceDetectorYN_FaceDetectorYN_getScoreThreshold__0, p = c(), r = c(), s = "")
    ),
    getTopK = list(
      list(f = .ropecv_cv_FaceDetectorYN_FaceDetectorYN_getTopK__0, p = c(), r = c(), s = "")
    ),
    setInputSize = list(
      list(f = .ropecv_cv_FaceDetectorYN_FaceDetectorYN_setInputSize__0, p = c(input_size = "size"), r = c(TRUE), s = "input_size")
    ),
    setNMSThreshold = list(
      list(f = .ropecv_cv_FaceDetectorYN_FaceDetectorYN_setNMSThreshold__0, p = c(nms_threshold = "dbl"), r = c(TRUE), s = "nms_threshold")
    ),
    setScoreThreshold = list(
      list(f = .ropecv_cv_FaceDetectorYN_FaceDetectorYN_setScoreThreshold__0, p = c(score_threshold = "dbl"), r = c(TRUE), s = "score_threshold")
    ),
    setTopK = list(
      list(f = .ropecv_cv_FaceDetectorYN_FaceDetectorYN_setTopK__0, p = c(top_k = "int"), r = c(TRUE), s = "top_k")
    )
  )
)

# cv::FaceRecognizerSF
.ropecv_reg("cvFaceRecognizerSF",
  new = list(
    list(f = .ropecv_cv_FaceRecognizerSF_FaceRecognizerSF_create__0, p = c(model = "chr", config = "chr", backend_id = "int", target_id = "int"), r = c(TRUE, TRUE, FALSE, FALSE), s = "model, config, backend_id = 0, target_id = 0")
  ),
  m = list(
    alignCrop = list(
      list(f = .ropecv_cv_FaceRecognizerSF_FaceRecognizerSF_alignCrop__0, p = c(src_img = "mat", face_box = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "src_img, face_box, dst = NULL")
    ),
    feature = list(
      list(f = .ropecv_cv_FaceRecognizerSF_FaceRecognizerSF_feature__0, p = c(aligned_img = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "aligned_img, dst = NULL")
    ),
    match = list(
      list(f = .ropecv_cv_FaceRecognizerSF_FaceRecognizerSF_match__0, p = c(face_feature1 = "mat", face_feature2 = "mat", dis_type = "int"), r = c(TRUE, TRUE, FALSE), s = "face_feature1, face_feature2, dis_type = FR_COSINE")
    )
  )
)

# cv::face::FaceRecognizer
.ropecv_reg("cvFaceRecognizer",
  new = list(

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
    getLabelInfo = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_getLabelInfo__0, p = c(label = "int"), r = c(TRUE), s = "label")
    ),
    getLabelsByString = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_getLabelsByString__0, p = c(str = "chr"), r = c(TRUE), s = "str")
    ),
    predict = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_predict__0, p = c(src = "mat"), r = c(TRUE), s = "src")
    ),
    read = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_read__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setLabelInfo = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_setLabelInfo__0, p = c(label = "int", strInfo = "chr"), r = c(TRUE, TRUE), s = "label, strInfo")
    ),
    train = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_train__0, p = c(src = "matlist", labels = "mat"), r = c(TRUE, TRUE), s = "src, labels")
    ),
    update = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_update__0, p = c(src = "matlist", labels = "mat"), r = c(TRUE, TRUE), s = "src, labels")
    ),
    write = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_write__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    )
  )
)
