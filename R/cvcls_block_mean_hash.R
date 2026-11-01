# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_img_hash_BlockMeanHash_BlockMeanHash_create__0 <- function(mode = BLOCK_MEAN_HASH_MODE_0) .Call(`_ROpenCV_cv_img_hash_BlockMeanHash_BlockMeanHash_create__0`, mode)
.ropecv_cv_img_hash_BlockMeanHash_BlockMeanHash_getMean__0 <- function(self) .Call(`_ROpenCV_cv_img_hash_BlockMeanHash_BlockMeanHash_getMean__0`, self)
.ropecv_cv_img_hash_BlockMeanHash_BlockMeanHash_setMode__0 <- function(self, mode) .Call(`_ROpenCV_cv_img_hash_BlockMeanHash_BlockMeanHash_setMode__0`, self, mode)

cvBlockMeanHash <- function(...) .ropecv_new("cvBlockMeanHash", "cvBlockMeanHash", list(...))
