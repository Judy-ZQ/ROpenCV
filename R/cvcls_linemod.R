# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_linemod_ColorGradient_ColorGradient_create__0 <- function(weak_threshold, num_features, strong_threshold) .Call(`_ROpenCV_cv_linemod_ColorGradient_ColorGradient_create__0`, weak_threshold, num_features, strong_threshold)
.ropecv_cv_linemod_DepthNormal_DepthNormal_create__0 <- function(distance_threshold, difference_threshold, num_features, extract_threshold) .Call(`_ROpenCV_cv_linemod_DepthNormal_DepthNormal_create__0`, distance_threshold, difference_threshold, num_features, extract_threshold)
.ropecv_cv_linemod_Detector_Detector_new__0 <- function() .Call(`_ROpenCV_cv_linemod_Detector_Detector_new__0`)
.ropecv_cv_linemod_Detector_Detector_new__1 <- function(modalities, T_pyramid) .Call(`_ROpenCV_cv_linemod_Detector_Detector_new__1`, modalities, T_pyramid)
.ropecv_cv_linemod_Detector_Detector_addSyntheticTemplate__0 <- function(self, templates, class_id) .Call(`_ROpenCV_cv_linemod_Detector_Detector_addSyntheticTemplate__0`, self, templates, class_id)
.ropecv_cv_linemod_Detector_Detector_addTemplate__0 <- function(self, sources, class_id, object_mask) .Call(`_ROpenCV_cv_linemod_Detector_Detector_addTemplate__0`, self, sources, class_id, object_mask)
.ropecv_cv_linemod_Detector_Detector_classIds__0 <- function(self) .Call(`_ROpenCV_cv_linemod_Detector_Detector_classIds__0`, self)
.ropecv_cv_linemod_Detector_Detector_getModalities__0 <- function(self) .Call(`_ROpenCV_cv_linemod_Detector_Detector_getModalities__0`, self)
.ropecv_cv_linemod_Detector_Detector_getT__0 <- function(self, pyramid_level) .Call(`_ROpenCV_cv_linemod_Detector_Detector_getT__0`, self, pyramid_level)
.ropecv_cv_linemod_Detector_Detector_getTemplates__0 <- function(self, class_id, template_id) .Call(`_ROpenCV_cv_linemod_Detector_Detector_getTemplates__0`, self, class_id, template_id)
.ropecv_cv_linemod_Detector_Detector_match__0 <- function(self, sources, threshold, class_ids = NULL, masks = NULL, quantized_images = NULL) .Call(`_ROpenCV_cv_linemod_Detector_Detector_match__0`, self, sources, threshold, class_ids, masks, quantized_images)
.ropecv_cv_linemod_Detector_Detector_numClasses__0 <- function(self) .Call(`_ROpenCV_cv_linemod_Detector_Detector_numClasses__0`, self)
.ropecv_cv_linemod_Detector_Detector_numTemplates__0 <- function(self) .Call(`_ROpenCV_cv_linemod_Detector_Detector_numTemplates__0`, self)
.ropecv_cv_linemod_Detector_Detector_numTemplates__1 <- function(self, class_id) .Call(`_ROpenCV_cv_linemod_Detector_Detector_numTemplates__1`, self, class_id)
.ropecv_cv_linemod_Detector_Detector_pyramidLevels__0 <- function(self) .Call(`_ROpenCV_cv_linemod_Detector_Detector_pyramidLevels__0`, self)
.ropecv_cv_linemod_Detector_Detector_read__0 <- function(self, fn) .Call(`_ROpenCV_cv_linemod_Detector_Detector_read__0`, self, fn)
.ropecv_cv_linemod_Detector_Detector_readClasses__0 <- function(self, class_ids, format) .Call(`_ROpenCV_cv_linemod_Detector_Detector_readClasses__0`, self, class_ids, format)
.ropecv_cv_linemod_Detector_Detector_writeClasses__0 <- function(self, format) .Call(`_ROpenCV_cv_linemod_Detector_Detector_writeClasses__0`, self, format)
.ropecv_cv_linemod_Feature_Feature_new__0 <- function() .Call(`_ROpenCV_cv_linemod_Feature_Feature_new__0`)
.ropecv_cv_linemod_Feature_Feature_new__1 <- function(x, y, label) .Call(`_ROpenCV_cv_linemod_Feature_Feature_new__1`, x, y, label)
.ropecv_cv_linemod_Match_Match_new__0 <- function() .Call(`_ROpenCV_cv_linemod_Match_Match_new__0`)
.ropecv_cv_linemod_Match_Match_new__1 <- function(x, y, similarity, class_id, template_id) .Call(`_ROpenCV_cv_linemod_Match_Match_new__1`, x, y, similarity, class_id, template_id)
.ropecv_cv_linemod_Modality_Modality_create__0 <- function(modality_type) .Call(`_ROpenCV_cv_linemod_Modality_Modality_create__0`, modality_type)
.ropecv_cv_linemod_Modality_Modality_create__1 <- function(fn) .Call(`_ROpenCV_cv_linemod_Modality_Modality_create__1`, fn)
.ropecv_cv_linemod_Modality_Modality_name__0 <- function(self) .Call(`_ROpenCV_cv_linemod_Modality_Modality_name__0`, self)
.ropecv_cv_linemod_Modality_Modality_process__0 <- function(self, src, mask = NULL) .Call(`_ROpenCV_cv_linemod_Modality_Modality_process__0`, self, src, mask)
.ropecv_cv_linemod_Modality_Modality_read__0 <- function(self, fn) .Call(`_ROpenCV_cv_linemod_Modality_Modality_read__0`, self, fn)
.ropecv_cv_linemod_QuantizedPyramid_QuantizedPyramid_extractTemplate__0 <- function(self) .Call(`_ROpenCV_cv_linemod_QuantizedPyramid_QuantizedPyramid_extractTemplate__0`, self)
.ropecv_cv_linemod_QuantizedPyramid_QuantizedPyramid_pyrDown__0 <- function(self) .Call(`_ROpenCV_cv_linemod_QuantizedPyramid_QuantizedPyramid_pyrDown__0`, self)
.ropecv_cv_linemod_QuantizedPyramid_QuantizedPyramid_quantize__0 <- function(self) .Call(`_ROpenCV_cv_linemod_QuantizedPyramid_QuantizedPyramid_quantize__0`, self)

cvColorGradient <- function(...) .ropecv_new("cvColorGradient", "cvColorGradient", list(...))

cvDepthNormal <- function(...) .ropecv_new("cvDepthNormal", "cvDepthNormal", list(...))

cvDetector <- function(...) .ropecv_new("cvDetector", "cvDetector", list(...))

cvFeature <- function(...) .ropecv_new("cvFeature", "cvFeature", list(...))

cvMatch <- function(...) .ropecv_new("cvMatch", "cvMatch", list(...))

cvModality <- function(...) .ropecv_new("cvModality", "cvModality", list(...))

cvQuantizedPyramid <- function(...) .ropecv_new("cvQuantizedPyramid", "cvQuantizedPyramid", list(...))
