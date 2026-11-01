# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_ximgproc_RFFeatureGetter_RFFeatureGetter_getFeatures__0 <- function(self, src, features = NULL, gnrmRad, gsmthRad, shrink, outNum, gradNum) .Call(`_ROpenCV_cv_ximgproc_RFFeatureGetter_RFFeatureGetter_getFeatures__0`, self, src, features, gnrmRad, gsmthRad, shrink, outNum, gradNum)
.ropecv_cv_ximgproc_StructuredEdgeDetection_StructuredEdgeDetection_computeOrientation__0 <- function(self, src, dst = NULL) .Call(`_ROpenCV_cv_ximgproc_StructuredEdgeDetection_StructuredEdgeDetection_computeOrientation__0`, self, src, dst)
.ropecv_cv_ximgproc_StructuredEdgeDetection_StructuredEdgeDetection_detectEdges__0 <- function(self, src, dst = NULL) .Call(`_ROpenCV_cv_ximgproc_StructuredEdgeDetection_StructuredEdgeDetection_detectEdges__0`, self, src, dst)
.ropecv_cv_ximgproc_StructuredEdgeDetection_StructuredEdgeDetection_edgesNms__0 <- function(self, edge_image, orientation_image, r = 2, s = 0, m = 1, isParallel = TRUE, dst = NULL) .Call(`_ROpenCV_cv_ximgproc_StructuredEdgeDetection_StructuredEdgeDetection_edgesNms__0`, self, edge_image, orientation_image, r, s, m, isParallel, dst)

cvRFFeatureGetter <- function(...) .ropecv_new("cvRFFeatureGetter", "cvRFFeatureGetter", list(...))

cvStructuredEdgeDetection <- function(...) .ropecv_new("cvStructuredEdgeDetection", "cvStructuredEdgeDetection", list(...))
