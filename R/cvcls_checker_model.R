# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_mcc_CChecker_CChecker_create__0 <- function() .Call(`_ROpenCV_cv_mcc_CChecker_CChecker_create__0`)
.ropecv_cv_mcc_CChecker_CChecker_getBox__0 <- function(self) .Call(`_ROpenCV_cv_mcc_CChecker_CChecker_getBox__0`, self)
.ropecv_cv_mcc_CChecker_CChecker_getCenter__0 <- function(self) .Call(`_ROpenCV_cv_mcc_CChecker_CChecker_getCenter__0`, self)
.ropecv_cv_mcc_CChecker_CChecker_getChartsRGB__0 <- function(self) .Call(`_ROpenCV_cv_mcc_CChecker_CChecker_getChartsRGB__0`, self)
.ropecv_cv_mcc_CChecker_CChecker_getChartsYCbCr__0 <- function(self) .Call(`_ROpenCV_cv_mcc_CChecker_CChecker_getChartsYCbCr__0`, self)
.ropecv_cv_mcc_CChecker_CChecker_getColorCharts__0 <- function(self) .Call(`_ROpenCV_cv_mcc_CChecker_CChecker_getColorCharts__0`, self)
.ropecv_cv_mcc_CChecker_CChecker_getCost__0 <- function(self) .Call(`_ROpenCV_cv_mcc_CChecker_CChecker_getCost__0`, self)
.ropecv_cv_mcc_CChecker_CChecker_getTarget__0 <- function(self) .Call(`_ROpenCV_cv_mcc_CChecker_CChecker_getTarget__0`, self)
.ropecv_cv_mcc_CChecker_CChecker_setBox__0 <- function(self, box) .Call(`_ROpenCV_cv_mcc_CChecker_CChecker_setBox__0`, self, box)
.ropecv_cv_mcc_CChecker_CChecker_setCenter__0 <- function(self, center) .Call(`_ROpenCV_cv_mcc_CChecker_CChecker_setCenter__0`, self, center)
.ropecv_cv_mcc_CChecker_CChecker_setChartsRGB__0 <- function(self, chartsRGB) .Call(`_ROpenCV_cv_mcc_CChecker_CChecker_setChartsRGB__0`, self, chartsRGB)
.ropecv_cv_mcc_CChecker_CChecker_setChartsYCbCr__0 <- function(self, chartsYCbCr) .Call(`_ROpenCV_cv_mcc_CChecker_CChecker_setChartsYCbCr__0`, self, chartsYCbCr)
.ropecv_cv_mcc_CChecker_CChecker_setCost__0 <- function(self, cost) .Call(`_ROpenCV_cv_mcc_CChecker_CChecker_setCost__0`, self, cost)
.ropecv_cv_mcc_CChecker_CChecker_setTarget__0 <- function(self, target) .Call(`_ROpenCV_cv_mcc_CChecker_CChecker_setTarget__0`, self, target)
.ropecv_cv_mcc_CCheckerDraw_CCheckerDraw_create__0 <- function(pChecker, color, thickness = 2) .Call(`_ROpenCV_cv_mcc_CCheckerDraw_CCheckerDraw_create__0`, pChecker, color, thickness)
.ropecv_cv_mcc_CCheckerDraw_CCheckerDraw_draw__0 <- function(self, img = NULL) .Call(`_ROpenCV_cv_mcc_CCheckerDraw_CCheckerDraw_draw__0`, self, img)

cvCChecker <- function(...) .ropecv_new("cvCChecker", "cvCChecker", list(...))

cvCCheckerDraw <- function(...) .ropecv_new("cvCCheckerDraw", "cvCCheckerDraw", list(...))
