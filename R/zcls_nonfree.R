# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::xfeatures2d::SURF
.ropecv_reg("cvSURF",
  new = list(
    list(f = .ropecv_cv_xfeatures2d_SURF_SURF_create__0, p = c(hessianThreshold = "dbl", nOctaves = "int", nOctaveLayers = "int", extended = "lgl", upright = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE), s = "hessianThreshold = 100, nOctaves = 4, nOctaveLayers = 3, extended = FALSE, upright = FALSE")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__0, p = c(image = "mat", descriptors = "mat"), r = c(TRUE, FALSE), s = "image, descriptors = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__1, p = c(images = "matlist", descriptors = "lst"), r = c(TRUE, FALSE), s = "images, descriptors = NULL")
    ),
    defaultNorm = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_defaultNorm__0, p = c(), r = c(), s = "")
    ),
    descriptorSize = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorSize__0, p = c(), r = c(), s = "")
    ),
    descriptorType = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorType__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__0, p = c(image = "mat", mask = "mat"), r = c(TRUE, FALSE), s = "image, mask = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__1, p = c(images = "matlist", masks = "matlist"), r = c(TRUE, FALSE), s = "images, masks = NULL")
    ),
    detectAndCompute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detectAndCompute__0, p = c(image = "mat", mask = "mat", useProvidedKeypoints = "lgl", descriptors = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_xfeatures2d_SURF_SURF_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getExtended = list(
      list(f = .ropecv_cv_xfeatures2d_SURF_SURF_getExtended__0, p = c(), r = c(), s = "")
    ),
    getHessianThreshold = list(
      list(f = .ropecv_cv_xfeatures2d_SURF_SURF_getHessianThreshold__0, p = c(), r = c(), s = "")
    ),
    getNOctaveLayers = list(
      list(f = .ropecv_cv_xfeatures2d_SURF_SURF_getNOctaveLayers__0, p = c(), r = c(), s = "")
    ),
    getNOctaves = list(
      list(f = .ropecv_cv_xfeatures2d_SURF_SURF_getNOctaves__0, p = c(), r = c(), s = "")
    ),
    getUpright = list(
      list(f = .ropecv_cv_xfeatures2d_SURF_SURF_getUpright__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setExtended = list(
      list(f = .ropecv_cv_xfeatures2d_SURF_SURF_setExtended__0, p = c(extended = "lgl"), r = c(TRUE), s = "extended")
    ),
    setHessianThreshold = list(
      list(f = .ropecv_cv_xfeatures2d_SURF_SURF_setHessianThreshold__0, p = c(hessianThreshold = "dbl"), r = c(TRUE), s = "hessianThreshold")
    ),
    setNOctaveLayers = list(
      list(f = .ropecv_cv_xfeatures2d_SURF_SURF_setNOctaveLayers__0, p = c(nOctaveLayers = "int"), r = c(TRUE), s = "nOctaveLayers")
    ),
    setNOctaves = list(
      list(f = .ropecv_cv_xfeatures2d_SURF_SURF_setNOctaves__0, p = c(nOctaves = "int"), r = c(TRUE), s = "nOctaves")
    ),
    setUpright = list(
      list(f = .ropecv_cv_xfeatures2d_SURF_SURF_setUpright__0, p = c(upright = "lgl"), r = c(TRUE), s = "upright")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)
