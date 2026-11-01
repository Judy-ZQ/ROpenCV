# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::text::OCRBeamSearchDecoder
.ropecv_reg("cvOCRBeamSearchDecoder",
  new = list(
    list(f = .ropecv_cv_text_OCRBeamSearchDecoder_OCRBeamSearchDecoder_create__0, p = c(classifier = "obj", vocabulary = "chr", transition_probabilities_table = "mat", emission_probabilities_table = "mat", mode = "any", beam_size = "int"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE), s = "classifier, vocabulary, transition_probabilities_table, emission_probabilities_table, mode = OCR_DECODER_VITERBI, beam_size = 500")
  ),
  m = list(
    run = list(
      list(f = .ropecv_cv_text_OCRBeamSearchDecoder_OCRBeamSearchDecoder_run__0, p = c(image = "mat", min_confidence = "int", component_level = "int"), r = c(TRUE, TRUE, FALSE), s = "image, min_confidence, component_level = 0"),
      list(f = .ropecv_cv_text_OCRBeamSearchDecoder_OCRBeamSearchDecoder_run__1, p = c(image = "mat", mask = "mat", min_confidence = "int", component_level = "int"), r = c(TRUE, FALSE, TRUE, FALSE), s = "image, mask = NULL, min_confidence, component_level = 0")
    )
  )
)

# cv::text::OCRHMMDecoder
.ropecv_reg("cvOCRHMMDecoder",
  new = list(
    list(f = .ropecv_cv_text_OCRHMMDecoder_OCRHMMDecoder_create__0, p = c(classifier = "obj", vocabulary = "chr", transition_probabilities_table = "mat", emission_probabilities_table = "mat", mode = "int"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE), s = "classifier, vocabulary, transition_probabilities_table, emission_probabilities_table, mode = OCR_DECODER_VITERBI"),
    list(f = .ropecv_cv_text_OCRHMMDecoder_OCRHMMDecoder_create__1, p = c(filename = "chr", vocabulary = "chr", transition_probabilities_table = "mat", emission_probabilities_table = "mat", mode = "int", classifier = "int"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE), s = "filename, vocabulary, transition_probabilities_table, emission_probabilities_table, mode = OCR_DECODER_VITERBI, classifier = OCR_KNN_CLASSIFIER")
  ),
  m = list(
    run = list(
      list(f = .ropecv_cv_text_OCRHMMDecoder_OCRHMMDecoder_run__0, p = c(image = "mat", min_confidence = "int", component_level = "int"), r = c(TRUE, TRUE, FALSE), s = "image, min_confidence, component_level = 0"),
      list(f = .ropecv_cv_text_OCRHMMDecoder_OCRHMMDecoder_run__1, p = c(image = "mat", mask = "mat", min_confidence = "int", component_level = "int"), r = c(TRUE, FALSE, TRUE, FALSE), s = "image, mask = NULL, min_confidence, component_level = 0")
    )
  )
)

# cv::text::OCRTesseract
.ropecv_reg("cvOCRTesseract",
  new = list(
    list(f = .ropecv_cv_text_OCRTesseract_OCRTesseract_create__0, p = c(datapath = "chr", language = "chr", char_whitelist = "chr", oem = "int", psmode = "int"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE), s = "datapath = NULL, language = NULL, char_whitelist = NULL, oem = OEM_DEFAULT, psmode = PSM_AUTO")
  ),
  m = list(
    run = list(
      list(f = .ropecv_cv_text_OCRTesseract_OCRTesseract_run__0, p = c(image = "mat", min_confidence = "int", component_level = "int"), r = c(TRUE, TRUE, FALSE), s = "image, min_confidence, component_level = 0"),
      list(f = .ropecv_cv_text_OCRTesseract_OCRTesseract_run__1, p = c(image = "mat", mask = "mat", min_confidence = "int", component_level = "int"), r = c(TRUE, FALSE, TRUE, FALSE), s = "image, mask = NULL, min_confidence, component_level = 0")
    ),
    setWhiteList = list(
      list(f = .ropecv_cv_text_OCRTesseract_OCRTesseract_setWhiteList__0, p = c(char_whitelist = "chr"), r = c(TRUE), s = "char_whitelist")
    )
  )
)
