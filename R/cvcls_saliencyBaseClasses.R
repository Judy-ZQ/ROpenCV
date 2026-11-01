# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_saliency_Saliency_Saliency_computeSaliency__0 <- function(self, image, dst = NULL) .Call(`_ROpenCV_cv_saliency_Saliency_Saliency_computeSaliency__0`, self, image, dst)
.ropecv_cv_saliency_StaticSaliency_StaticSaliency_computeBinaryMap__0 <- function(self, saliencyMap, dst = NULL) .Call(`_ROpenCV_cv_saliency_StaticSaliency_StaticSaliency_computeBinaryMap__0`, self, saliencyMap, dst)

cvSaliency <- function(...) .ropecv_new("cvSaliency", "cvSaliency", list(...))

cvStaticSaliency <- function(...) .ropecv_new("cvStaticSaliency", "cvStaticSaliency", list(...))
