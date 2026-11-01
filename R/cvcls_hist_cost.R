# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_EMDHistogramCostExtractor_EMDHistogramCostExtractor_getNormFlag__0 <- function(self) .Call(`_ROpenCV_cv_EMDHistogramCostExtractor_EMDHistogramCostExtractor_getNormFlag__0`, self)
.ropecv_cv_EMDHistogramCostExtractor_EMDHistogramCostExtractor_setNormFlag__0 <- function(self, flag) .Call(`_ROpenCV_cv_EMDHistogramCostExtractor_EMDHistogramCostExtractor_setNormFlag__0`, self, flag)
.ropecv_cv_HistogramCostExtractor_HistogramCostExtractor_buildCostMatrix__0 <- function(self, descriptors1, descriptors2, dst = NULL) .Call(`_ROpenCV_cv_HistogramCostExtractor_HistogramCostExtractor_buildCostMatrix__0`, self, descriptors1, descriptors2, dst)
.ropecv_cv_HistogramCostExtractor_HistogramCostExtractor_getDefaultCost__0 <- function(self) .Call(`_ROpenCV_cv_HistogramCostExtractor_HistogramCostExtractor_getDefaultCost__0`, self)
.ropecv_cv_HistogramCostExtractor_HistogramCostExtractor_getNDummies__0 <- function(self) .Call(`_ROpenCV_cv_HistogramCostExtractor_HistogramCostExtractor_getNDummies__0`, self)
.ropecv_cv_HistogramCostExtractor_HistogramCostExtractor_setDefaultCost__0 <- function(self, defaultCost) .Call(`_ROpenCV_cv_HistogramCostExtractor_HistogramCostExtractor_setDefaultCost__0`, self, defaultCost)
.ropecv_cv_HistogramCostExtractor_HistogramCostExtractor_setNDummies__0 <- function(self, nDummies) .Call(`_ROpenCV_cv_HistogramCostExtractor_HistogramCostExtractor_setNDummies__0`, self, nDummies)
.ropecv_cv_NormHistogramCostExtractor_NormHistogramCostExtractor_getNormFlag__0 <- function(self) .Call(`_ROpenCV_cv_NormHistogramCostExtractor_NormHistogramCostExtractor_getNormFlag__0`, self)
.ropecv_cv_NormHistogramCostExtractor_NormHistogramCostExtractor_setNormFlag__0 <- function(self, flag) .Call(`_ROpenCV_cv_NormHistogramCostExtractor_NormHistogramCostExtractor_setNormFlag__0`, self, flag)

cvEMDHistogramCostExtractor <- function(...) .ropecv_new("cvEMDHistogramCostExtractor", "cvEMDHistogramCostExtractor", list(...))

cvHistogramCostExtractor <- function(...) .ropecv_new("cvHistogramCostExtractor", "cvHistogramCostExtractor", list(...))

cvNormHistogramCostExtractor <- function(...) .ropecv_new("cvNormHistogramCostExtractor", "cvNormHistogramCostExtractor", list(...))
