# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_mcc_CCheckerDetector_CCheckerDetector_create__0 <- function() .Call(`_ROpenCV_cv_mcc_CCheckerDetector_CCheckerDetector_create__0`)
.ropecv_cv_mcc_CCheckerDetector_CCheckerDetector_getBestColorChecker__0 <- function(self) .Call(`_ROpenCV_cv_mcc_CCheckerDetector_CCheckerDetector_getBestColorChecker__0`, self)
.ropecv_cv_mcc_CCheckerDetector_CCheckerDetector_getListColorChecker__0 <- function(self) .Call(`_ROpenCV_cv_mcc_CCheckerDetector_CCheckerDetector_getListColorChecker__0`, self)
.ropecv_cv_mcc_CCheckerDetector_CCheckerDetector_process__0 <- function(self, image, chartType, nc = 1, useNet = FALSE, params = NULL) .Call(`_ROpenCV_cv_mcc_CCheckerDetector_CCheckerDetector_process__0`, self, image, chartType, nc, useNet, params)
.ropecv_cv_mcc_CCheckerDetector_CCheckerDetector_setNet__0 <- function(self, net) .Call(`_ROpenCV_cv_mcc_CCheckerDetector_CCheckerDetector_setNet__0`, self, net)
.ropecv_cv_mcc_DetectorParameters_DetectorParameters_create__0 <- function() .Call(`_ROpenCV_cv_mcc_DetectorParameters_DetectorParameters_create__0`)

cvCCheckerDetector <- function(...) .ropecv_new("cvCCheckerDetector", "cvCCheckerDetector", list(...))

cvMccDetectorParameters <- function(...) .ropecv_new("cvMccDetectorParameters", "cvMccDetectorParameters", list(...))
