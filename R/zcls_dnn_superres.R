# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::dnn_superres::DnnSuperResImpl
.ropecv_reg("cvDnnSuperResImpl",
  new = list(
    list(f = .ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    getAlgorithm = list(
      list(f = .ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_getAlgorithm__0, p = c(), r = c(), s = "")
    ),
    getScale = list(
      list(f = .ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_getScale__0, p = c(), r = c(), s = "")
    ),
    readModel = list(
      list(f = .ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_readModel__0, p = c(path = "chr"), r = c(TRUE), s = "path")
    ),
    setModel = list(
      list(f = .ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_setModel__0, p = c(algo = "chr", scale = "int"), r = c(TRUE, TRUE), s = "algo, scale")
    ),
    setPreferableBackend = list(
      list(f = .ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_setPreferableBackend__0, p = c(backendId = "int"), r = c(TRUE), s = "backendId")
    ),
    setPreferableTarget = list(
      list(f = .ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_setPreferableTarget__0, p = c(targetId = "int"), r = c(TRUE), s = "targetId")
    ),
    upsample = list(
      list(f = .ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_upsample__0, p = c(img = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "img, dst = NULL")
    ),
    upsampleMultioutput = list(
      list(f = .ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_upsampleMultioutput__0, p = c(img = "mat", imgs_new = "lst", scale_factors = "int", node_names = "chr"), r = c(TRUE, FALSE, TRUE, TRUE), s = "img, imgs_new = NULL, scale_factors, node_names")
    )
  )
)
