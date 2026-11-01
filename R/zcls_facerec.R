# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::face::BasicFaceRecognizer
.ropecv_reg("cvBasicFaceRecognizer",
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
    getEigenValues = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getEigenValues__0, p = c(), r = c(), s = "")
    ),
    getEigenVectors = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getEigenVectors__0, p = c(), r = c(), s = "")
    ),
    getLabelInfo = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_getLabelInfo__0, p = c(label = "int"), r = c(TRUE), s = "label")
    ),
    getLabels = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getLabels__0, p = c(), r = c(), s = "")
    ),
    getLabelsByString = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_getLabelsByString__0, p = c(str = "chr"), r = c(TRUE), s = "str")
    ),
    getMean = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getMean__0, p = c(), r = c(), s = "")
    ),
    getNumComponents = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getNumComponents__0, p = c(), r = c(), s = "")
    ),
    getProjections = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getProjections__0, p = c(), r = c(), s = "")
    ),
    getThreshold = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getThreshold__0, p = c(), r = c(), s = "")
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
    setNumComponents = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_setNumComponents__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setThreshold = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_setThreshold__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
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

# cv::face::EigenFaceRecognizer
.ropecv_reg("cvEigenFaceRecognizer",
  new = list(
    list(f = .ropecv_cv_face_EigenFaceRecognizer_EigenFaceRecognizer_create__0, p = c(num_components = "int", threshold = "dbl"), r = c(FALSE, FALSE), s = "num_components = 0, threshold = Inf")
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
    getEigenValues = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getEigenValues__0, p = c(), r = c(), s = "")
    ),
    getEigenVectors = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getEigenVectors__0, p = c(), r = c(), s = "")
    ),
    getLabelInfo = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_getLabelInfo__0, p = c(label = "int"), r = c(TRUE), s = "label")
    ),
    getLabels = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getLabels__0, p = c(), r = c(), s = "")
    ),
    getLabelsByString = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_getLabelsByString__0, p = c(str = "chr"), r = c(TRUE), s = "str")
    ),
    getMean = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getMean__0, p = c(), r = c(), s = "")
    ),
    getNumComponents = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getNumComponents__0, p = c(), r = c(), s = "")
    ),
    getProjections = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getProjections__0, p = c(), r = c(), s = "")
    ),
    getThreshold = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getThreshold__0, p = c(), r = c(), s = "")
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
    setNumComponents = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_setNumComponents__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setThreshold = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_setThreshold__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
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

# cv::face::FisherFaceRecognizer
.ropecv_reg("cvFisherFaceRecognizer",
  new = list(
    list(f = .ropecv_cv_face_FisherFaceRecognizer_FisherFaceRecognizer_create__0, p = c(num_components = "int", threshold = "dbl"), r = c(FALSE, FALSE), s = "num_components = 0, threshold = Inf")
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
    getEigenValues = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getEigenValues__0, p = c(), r = c(), s = "")
    ),
    getEigenVectors = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getEigenVectors__0, p = c(), r = c(), s = "")
    ),
    getLabelInfo = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_getLabelInfo__0, p = c(label = "int"), r = c(TRUE), s = "label")
    ),
    getLabels = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getLabels__0, p = c(), r = c(), s = "")
    ),
    getLabelsByString = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_getLabelsByString__0, p = c(str = "chr"), r = c(TRUE), s = "str")
    ),
    getMean = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getMean__0, p = c(), r = c(), s = "")
    ),
    getNumComponents = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getNumComponents__0, p = c(), r = c(), s = "")
    ),
    getProjections = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getProjections__0, p = c(), r = c(), s = "")
    ),
    getThreshold = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getThreshold__0, p = c(), r = c(), s = "")
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
    setNumComponents = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_setNumComponents__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setThreshold = list(
      list(f = .ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_setThreshold__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
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

# cv::face::LBPHFaceRecognizer
.ropecv_reg("cvLBPHFaceRecognizer",
  new = list(
    list(f = .ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_create__0, p = c(radius = "int", neighbors = "int", grid_x = "int", grid_y = "int", threshold = "dbl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE), s = "radius = 1, neighbors = 8, grid_x = 8, grid_y = 8, threshold = Inf")
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
    getGridX = list(
      list(f = .ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getGridX__0, p = c(), r = c(), s = "")
    ),
    getGridY = list(
      list(f = .ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getGridY__0, p = c(), r = c(), s = "")
    ),
    getHistograms = list(
      list(f = .ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getHistograms__0, p = c(), r = c(), s = "")
    ),
    getLabelInfo = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_getLabelInfo__0, p = c(label = "int"), r = c(TRUE), s = "label")
    ),
    getLabels = list(
      list(f = .ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getLabels__0, p = c(), r = c(), s = "")
    ),
    getLabelsByString = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_getLabelsByString__0, p = c(str = "chr"), r = c(TRUE), s = "str")
    ),
    getNeighbors = list(
      list(f = .ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getNeighbors__0, p = c(), r = c(), s = "")
    ),
    getRadius = list(
      list(f = .ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getRadius__0, p = c(), r = c(), s = "")
    ),
    getThreshold = list(
      list(f = .ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getThreshold__0, p = c(), r = c(), s = "")
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
    setGridX = list(
      list(f = .ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setGridX__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setGridY = list(
      list(f = .ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setGridY__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setLabelInfo = list(
      list(f = .ropecv_cv_face_FaceRecognizer_FaceRecognizer_setLabelInfo__0, p = c(label = "int", strInfo = "chr"), r = c(TRUE, TRUE), s = "label, strInfo")
    ),
    setNeighbors = list(
      list(f = .ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setNeighbors__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setRadius = list(
      list(f = .ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setRadius__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setThreshold = list(
      list(f = .ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setThreshold__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
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
