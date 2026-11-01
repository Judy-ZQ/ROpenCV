# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::line_descriptor::BinaryDescriptor
.ropecv_reg("cvBinaryDescriptor",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_compute__0, p = c(image = "any", returnFloatDescr = "lgl"), r = c(TRUE, FALSE), s = "image, returnFloatDescr = FALSE")
    ),
    detect = list(
      list(f = .ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_detect__0, p = c(image = "any", mask = "any"), r = c(TRUE, FALSE), s = "image, mask = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getNumOfOctaves = list(
      list(f = .ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_getNumOfOctaves__0, p = c(), r = c(), s = "")
    ),
    getReductionRatio = list(
      list(f = .ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_getReductionRatio__0, p = c(), r = c(), s = "")
    ),
    getWidthOfBand = list(
      list(f = .ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_getWidthOfBand__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setNumOfOctaves = list(
      list(f = .ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_setNumOfOctaves__0, p = c(octaves = "int"), r = c(TRUE), s = "octaves")
    ),
    setReductionRatio = list(
      list(f = .ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_setReductionRatio__0, p = c(rRatio = "int"), r = c(TRUE), s = "rRatio")
    ),
    setWidthOfBand = list(
      list(f = .ropecv_cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_setWidthOfBand__0, p = c(width = "int"), r = c(TRUE), s = "width")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::line_descriptor::BinaryDescriptorMatcher
.ropecv_reg("cvBinaryDescriptorMatcher",
  new = list(
    list(f = .ropecv_cv_line_descriptor_BinaryDescriptorMatcher_BinaryDescriptorMatcher_new__0, p = c(), r = c(), s = "")
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
    knnMatch = list(
      list(f = .ropecv_cv_line_descriptor_BinaryDescriptorMatcher_BinaryDescriptorMatcher_knnMatch__0, p = c(queryDescriptors = "any", trainDescriptors = "any", k = "int", mask = "any", compactResult = "lgl"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE), s = "queryDescriptors, trainDescriptors, k, mask = NULL, compactResult = FALSE")
    ),
    match = list(
      list(f = .ropecv_cv_line_descriptor_BinaryDescriptorMatcher_BinaryDescriptorMatcher_match__0, p = c(queryDescriptors = "any", trainDescriptors = "any", mask = "any"), r = c(TRUE, TRUE, FALSE), s = "queryDescriptors, trainDescriptors, mask = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::line_descriptor::KeyLine
.ropecv_reg("cvKeyLine",
  new = list(
    list(f = .ropecv_cv_line_descriptor_KeyLine_KeyLine_new__0, p = c(), r = c(), s = "")
  ),
  m = list(
    getEndPoint = list(
      list(f = .ropecv_cv_line_descriptor_KeyLine_KeyLine_getEndPoint__0, p = c(), r = c(), s = "")
    ),
    getEndPointInOctave = list(
      list(f = .ropecv_cv_line_descriptor_KeyLine_KeyLine_getEndPointInOctave__0, p = c(), r = c(), s = "")
    ),
    getStartPoint = list(
      list(f = .ropecv_cv_line_descriptor_KeyLine_KeyLine_getStartPoint__0, p = c(), r = c(), s = "")
    ),
    getStartPointInOctave = list(
      list(f = .ropecv_cv_line_descriptor_KeyLine_KeyLine_getStartPointInOctave__0, p = c(), r = c(), s = "")
    )
  )
)

# cv::line_descriptor::LSDDetector
.ropecv_reg("cvLSDDetector",
  new = list(
    list(f = .ropecv_cv_line_descriptor_LSDDetector_LSDDetector_new__0, p = c(), r = c(), s = "")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_line_descriptor_LSDDetector_LSDDetector_detect__0, p = c(image = "any", scale = "int", numOctaves = "int", mask = "any"), r = c(TRUE, TRUE, TRUE, FALSE), s = "image, scale, numOctaves, mask = NULL"),
      list(f = .ropecv_cv_line_descriptor_LSDDetector_LSDDetector_detect__1, p = c(images = "lst", keylines = "lst", scale = "int", numOctaves = "int", masks = "lst"), r = c(TRUE, FALSE, TRUE, TRUE, FALSE), s = "images, keylines = NULL, scale, numOctaves, masks = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::line_descriptor::LSDParam
.ropecv_reg("cvLSDParam",
  new = list(
    list(f = .ropecv_cv_line_descriptor_LSDParam_LSDParam_new__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)
