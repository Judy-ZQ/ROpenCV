# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_create__0 <- function() .Call(`_ROpenCV_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_create__0`)
.ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_getAlgorithm__0 <- function(self) .Call(`_ROpenCV_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_getAlgorithm__0`, self)
.ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_getScale__0 <- function(self) .Call(`_ROpenCV_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_getScale__0`, self)
.ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_readModel__0 <- function(self, path) .Call(`_ROpenCV_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_readModel__0`, self, path)
.ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_setModel__0 <- function(self, algo, scale) .Call(`_ROpenCV_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_setModel__0`, self, algo, scale)
.ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_setPreferableBackend__0 <- function(self, backendId) .Call(`_ROpenCV_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_setPreferableBackend__0`, self, backendId)
.ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_setPreferableTarget__0 <- function(self, targetId) .Call(`_ROpenCV_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_setPreferableTarget__0`, self, targetId)
.ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_upsample__0 <- function(self, img, dst = NULL) .Call(`_ROpenCV_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_upsample__0`, self, img, dst)
.ropecv_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_upsampleMultioutput__0 <- function(self, img, imgs_new = NULL, scale_factors, node_names) .Call(`_ROpenCV_cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_upsampleMultioutput__0`, self, img, imgs_new, scale_factors, node_names)

cvDnnSuperResImpl <- function(...) .ropecv_new("cvDnnSuperResImpl", "cvDnnSuperResImpl", list(...))
