# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_img_hash_RadialVarianceHash_RadialVarianceHash_create__0 <- function(sigma = 1, numOfAngleLine = 180) .Call(`_ROpenCV_cv_img_hash_RadialVarianceHash_RadialVarianceHash_create__0`, sigma, numOfAngleLine)
.ropecv_cv_img_hash_RadialVarianceHash_RadialVarianceHash_getNumOfAngleLine__0 <- function(self) .Call(`_ROpenCV_cv_img_hash_RadialVarianceHash_RadialVarianceHash_getNumOfAngleLine__0`, self)
.ropecv_cv_img_hash_RadialVarianceHash_RadialVarianceHash_getSigma__0 <- function(self) .Call(`_ROpenCV_cv_img_hash_RadialVarianceHash_RadialVarianceHash_getSigma__0`, self)
.ropecv_cv_img_hash_RadialVarianceHash_RadialVarianceHash_setNumOfAngleLine__0 <- function(self, value) .Call(`_ROpenCV_cv_img_hash_RadialVarianceHash_RadialVarianceHash_setNumOfAngleLine__0`, self, value)
.ropecv_cv_img_hash_RadialVarianceHash_RadialVarianceHash_setSigma__0 <- function(self, value) .Call(`_ROpenCV_cv_img_hash_RadialVarianceHash_RadialVarianceHash_setSigma__0`, self, value)

cvRadialVarianceHash <- function(...) .ropecv_new("cvRadialVarianceHash", "cvRadialVarianceHash", list(...))
