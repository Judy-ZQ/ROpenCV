# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_stereo_MatchQuasiDense_MatchQuasiDense_new__0 <- function() .Call(`_ROpenCV_cv_stereo_MatchQuasiDense_MatchQuasiDense_new__0`)
.ropecv_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_create__0 <- function(monoImgSize, paramFilepath) .Call(`_ROpenCV_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_create__0`, monoImgSize, paramFilepath)
.ropecv_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_getDenseMatches__0 <- function(self) .Call(`_ROpenCV_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_getDenseMatches__0`, self)
.ropecv_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_getDisparity__0 <- function(self) .Call(`_ROpenCV_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_getDisparity__0`, self)
.ropecv_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_getMatch__0 <- function(self, x, y) .Call(`_ROpenCV_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_getMatch__0`, self, x, y)
.ropecv_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_getSparseMatches__0 <- function(self) .Call(`_ROpenCV_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_getSparseMatches__0`, self)
.ropecv_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_loadParameters__0 <- function(self, filepath) .Call(`_ROpenCV_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_loadParameters__0`, self, filepath)
.ropecv_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_process__0 <- function(self, imgLeft, imgRight) .Call(`_ROpenCV_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_process__0`, self, imgLeft, imgRight)
.ropecv_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_saveParameters__0 <- function(self, filepath) .Call(`_ROpenCV_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_saveParameters__0`, self, filepath)

cvMatchQuasiDense <- function(...) .ropecv_new("cvMatchQuasiDense", "cvMatchQuasiDense", list(...))

cvQuasiDenseStereo <- function(...) .ropecv_new("cvQuasiDenseStereo", "cvQuasiDenseStereo", list(...))
