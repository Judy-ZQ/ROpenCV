# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_text_OCRBeamSearchDecoder_OCRBeamSearchDecoder_create__0 <- function(classifier, vocabulary, transition_probabilities_table, emission_probabilities_table, mode = OCR_DECODER_VITERBI, beam_size = 500) .Call(`_ROpenCV_cv_text_OCRBeamSearchDecoder_OCRBeamSearchDecoder_create__0`, classifier, vocabulary, transition_probabilities_table, emission_probabilities_table, mode, beam_size)
.ropecv_cv_text_OCRBeamSearchDecoder_OCRBeamSearchDecoder_run__0 <- function(self, image, min_confidence, component_level = 0) .Call(`_ROpenCV_cv_text_OCRBeamSearchDecoder_OCRBeamSearchDecoder_run__0`, self, image, min_confidence, component_level)
.ropecv_cv_text_OCRBeamSearchDecoder_OCRBeamSearchDecoder_run__1 <- function(self, image, mask = NULL, min_confidence, component_level = 0) .Call(`_ROpenCV_cv_text_OCRBeamSearchDecoder_OCRBeamSearchDecoder_run__1`, self, image, mask, min_confidence, component_level)
.ropecv_cv_text_OCRHMMDecoder_OCRHMMDecoder_create__0 <- function(classifier, vocabulary, transition_probabilities_table, emission_probabilities_table, mode = OCR_DECODER_VITERBI) .Call(`_ROpenCV_cv_text_OCRHMMDecoder_OCRHMMDecoder_create__0`, classifier, vocabulary, transition_probabilities_table, emission_probabilities_table, mode)
.ropecv_cv_text_OCRHMMDecoder_OCRHMMDecoder_create__1 <- function(filename, vocabulary, transition_probabilities_table, emission_probabilities_table, mode = OCR_DECODER_VITERBI, classifier = OCR_KNN_CLASSIFIER) .Call(`_ROpenCV_cv_text_OCRHMMDecoder_OCRHMMDecoder_create__1`, filename, vocabulary, transition_probabilities_table, emission_probabilities_table, mode, classifier)
.ropecv_cv_text_OCRHMMDecoder_OCRHMMDecoder_run__0 <- function(self, image, min_confidence, component_level = 0) .Call(`_ROpenCV_cv_text_OCRHMMDecoder_OCRHMMDecoder_run__0`, self, image, min_confidence, component_level)
.ropecv_cv_text_OCRHMMDecoder_OCRHMMDecoder_run__1 <- function(self, image, mask = NULL, min_confidence, component_level = 0) .Call(`_ROpenCV_cv_text_OCRHMMDecoder_OCRHMMDecoder_run__1`, self, image, mask, min_confidence, component_level)
.ropecv_cv_text_OCRTesseract_OCRTesseract_create__0 <- function(datapath = NULL, language = NULL, char_whitelist = NULL, oem = OEM_DEFAULT, psmode = PSM_AUTO) .Call(`_ROpenCV_cv_text_OCRTesseract_OCRTesseract_create__0`, datapath, language, char_whitelist, oem, psmode)
.ropecv_cv_text_OCRTesseract_OCRTesseract_run__0 <- function(self, image, min_confidence, component_level = 0) .Call(`_ROpenCV_cv_text_OCRTesseract_OCRTesseract_run__0`, self, image, min_confidence, component_level)
.ropecv_cv_text_OCRTesseract_OCRTesseract_run__1 <- function(self, image, mask = NULL, min_confidence, component_level = 0) .Call(`_ROpenCV_cv_text_OCRTesseract_OCRTesseract_run__1`, self, image, mask, min_confidence, component_level)
.ropecv_cv_text_OCRTesseract_OCRTesseract_setWhiteList__0 <- function(self, char_whitelist) .Call(`_ROpenCV_cv_text_OCRTesseract_OCRTesseract_setWhiteList__0`, self, char_whitelist)

cvOCRBeamSearchDecoder <- function(...) .ropecv_new("cvOCRBeamSearchDecoder", "cvOCRBeamSearchDecoder", list(...))

cvOCRHMMDecoder <- function(...) .ropecv_new("cvOCRHMMDecoder", "cvOCRHMMDecoder", list(...))

cvOCRTesseract <- function(...) .ropecv_new("cvOCRTesseract", "cvOCRTesseract", list(...))
