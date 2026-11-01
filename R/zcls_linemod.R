# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::linemod::ColorGradient
.ropecv_reg("cvColorGradient",
  new = list(
    list(f = .ropecv_cv_linemod_ColorGradient_ColorGradient_create__0, p = c(weak_threshold = "dbl", num_features = "int", strong_threshold = "dbl"), r = c(TRUE, TRUE, TRUE), s = "weak_threshold, num_features, strong_threshold")
  ),
  m = list(
    name = list(
      list(f = .ropecv_cv_linemod_Modality_Modality_name__0, p = c(), r = c(), s = "")
    ),
    process = list(
      list(f = .ropecv_cv_linemod_Modality_Modality_process__0, p = c(src = "any", mask = "any"), r = c(TRUE, FALSE), s = "src, mask = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_linemod_Modality_Modality_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    )
  )
)

# cv::linemod::DepthNormal
.ropecv_reg("cvDepthNormal",
  new = list(
    list(f = .ropecv_cv_linemod_DepthNormal_DepthNormal_create__0, p = c(distance_threshold = "int", difference_threshold = "int", num_features = "int", extract_threshold = "int"), r = c(TRUE, TRUE, TRUE, TRUE), s = "distance_threshold, difference_threshold, num_features, extract_threshold")
  ),
  m = list(
    name = list(
      list(f = .ropecv_cv_linemod_Modality_Modality_name__0, p = c(), r = c(), s = "")
    ),
    process = list(
      list(f = .ropecv_cv_linemod_Modality_Modality_process__0, p = c(src = "any", mask = "any"), r = c(TRUE, FALSE), s = "src, mask = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_linemod_Modality_Modality_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    )
  )
)

# cv::linemod::Detector
.ropecv_reg("cvDetector",
  new = list(
    list(f = .ropecv_cv_linemod_Detector_Detector_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_linemod_Detector_Detector_new__1, p = c(modalities = "lst", T_pyramid = "int"), r = c(TRUE, TRUE), s = "modalities, T_pyramid")
  ),
  m = list(
    addSyntheticTemplate = list(
      list(f = .ropecv_cv_linemod_Detector_Detector_addSyntheticTemplate__0, p = c(templates = "lst", class_id = "chr"), r = c(TRUE, TRUE), s = "templates, class_id")
    ),
    addTemplate = list(
      list(f = .ropecv_cv_linemod_Detector_Detector_addTemplate__0, p = c(sources = "lst", class_id = "chr", object_mask = "any"), r = c(TRUE, TRUE, TRUE), s = "sources, class_id, object_mask")
    ),
    classIds = list(
      list(f = .ropecv_cv_linemod_Detector_Detector_classIds__0, p = c(), r = c(), s = "")
    ),
    getModalities = list(
      list(f = .ropecv_cv_linemod_Detector_Detector_getModalities__0, p = c(), r = c(), s = "")
    ),
    getT = list(
      list(f = .ropecv_cv_linemod_Detector_Detector_getT__0, p = c(pyramid_level = "int"), r = c(TRUE), s = "pyramid_level")
    ),
    getTemplates = list(
      list(f = .ropecv_cv_linemod_Detector_Detector_getTemplates__0, p = c(class_id = "chr", template_id = "int"), r = c(TRUE, TRUE), s = "class_id, template_id")
    ),
    match = list(
      list(f = .ropecv_cv_linemod_Detector_Detector_match__0, p = c(sources = "lst", threshold = "dbl", class_ids = "chr", masks = "lst", quantized_images = "lst"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE), s = "sources, threshold, class_ids = NULL, masks = NULL, quantized_images = NULL")
    ),
    numClasses = list(
      list(f = .ropecv_cv_linemod_Detector_Detector_numClasses__0, p = c(), r = c(), s = "")
    ),
    numTemplates = list(
      list(f = .ropecv_cv_linemod_Detector_Detector_numTemplates__0, p = c(), r = c(), s = ""),
      list(f = .ropecv_cv_linemod_Detector_Detector_numTemplates__1, p = c(class_id = "chr"), r = c(TRUE), s = "class_id")
    ),
    pyramidLevels = list(
      list(f = .ropecv_cv_linemod_Detector_Detector_pyramidLevels__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_linemod_Detector_Detector_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    readClasses = list(
      list(f = .ropecv_cv_linemod_Detector_Detector_readClasses__0, p = c(class_ids = "chr", format = "chr"), r = c(TRUE, TRUE), s = "class_ids, format")
    ),
    writeClasses = list(
      list(f = .ropecv_cv_linemod_Detector_Detector_writeClasses__0, p = c(format = "chr"), r = c(TRUE), s = "format")
    )
  )
)

# cv::linemod::Feature
.ropecv_reg("cvFeature",
  new = list(
    list(f = .ropecv_cv_linemod_Feature_Feature_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_linemod_Feature_Feature_new__1, p = c(x = "int", y = "int", label = "int"), r = c(TRUE, TRUE, TRUE), s = "x, y, label")
  ),
  m = list(

  )
)

# cv::linemod::Match
.ropecv_reg("cvMatch",
  new = list(
    list(f = .ropecv_cv_linemod_Match_Match_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_linemod_Match_Match_new__1, p = c(x = "int", y = "int", similarity = "dbl", class_id = "chr", template_id = "int"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE), s = "x, y, similarity, class_id, template_id")
  ),
  m = list(

  )
)

# cv::linemod::Modality
.ropecv_reg("cvModality",
  new = list(
    list(f = .ropecv_cv_linemod_Modality_Modality_create__0, p = c(modality_type = "chr"), r = c(TRUE), s = "modality_type"),
    list(f = .ropecv_cv_linemod_Modality_Modality_create__1, p = c(fn = "any"), r = c(TRUE), s = "fn")
  ),
  m = list(
    name = list(
      list(f = .ropecv_cv_linemod_Modality_Modality_name__0, p = c(), r = c(), s = "")
    ),
    process = list(
      list(f = .ropecv_cv_linemod_Modality_Modality_process__0, p = c(src = "any", mask = "any"), r = c(TRUE, FALSE), s = "src, mask = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_linemod_Modality_Modality_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    )
  )
)

# cv::linemod::QuantizedPyramid
.ropecv_reg("cvQuantizedPyramid",
  new = list(

  ),
  m = list(
    extractTemplate = list(
      list(f = .ropecv_cv_linemod_QuantizedPyramid_QuantizedPyramid_extractTemplate__0, p = c(), r = c(), s = "")
    ),
    pyrDown = list(
      list(f = .ropecv_cv_linemod_QuantizedPyramid_QuantizedPyramid_pyrDown__0, p = c(), r = c(), s = "")
    ),
    quantize = list(
      list(f = .ropecv_cv_linemod_QuantizedPyramid_QuantizedPyramid_quantize__0, p = c(), r = c(), s = "")
    )
  )
)
