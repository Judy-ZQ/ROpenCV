# 由 tools/gen/emit.py 生成，请勿手改。

#' @title calcOpticalFlowSF
#' @description ROpenCV 绑定。C++ 签名：<code>void calcOpticalFlowSF(InputArray from, InputArray to, OutputArray flow, int layers, int averaging_block_size, int max_flow)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_calcOpticalFlowSF__0 <- function(from, to, layers, averaging_block_size, max_flow, dst = NULL) {
  .Call(`_ROpenCV_cv_calcOpticalFlowSF__0`, from, to, layers, averaging_block_size, max_flow, dst)
}

#' @title calcOpticalFlowSF
#' @description ROpenCV 绑定。C++ 签名：<code>void calcOpticalFlowSF(InputArray from, InputArray to, OutputArray flow, int layers, int averaging_block_size, int max_flow, double sigma_dist, double sigma_color, int postprocess_window, double sigma_dist_fix, double sigma_color_fix, double occ_thr, int upscale_averaging_radius, double upscale_sigma_dist, double upscale_sigma_color, double speed_up_thr)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_calcOpticalFlowSF__1 <- function(from, to, layers, averaging_block_size, max_flow, sigma_dist, sigma_color, postprocess_window, sigma_dist_fix, sigma_color_fix, occ_thr, upscale_averaging_radius, upscale_sigma_dist, upscale_sigma_color, speed_up_thr, dst = NULL) {
  .Call(`_ROpenCV_cv_calcOpticalFlowSF__1`, from, to, layers, averaging_block_size, max_flow, sigma_dist, sigma_color, postprocess_window, sigma_dist_fix, sigma_color_fix, occ_thr, upscale_averaging_radius, upscale_sigma_dist, upscale_sigma_color, speed_up_thr, dst)
}

# cv_calcOpticalFlowSF
#' @rdname cv_calcOpticalFlowSF
#' @export
cv_calcOpticalFlowSF <- local({
  .sigs <- list(
    list(f = .ropecv_cv_calcOpticalFlowSF__0, p = c(from = "mat", to = "mat", layers = "int", averaging_block_size = "int", max_flow = "int", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, FALSE), s = "from, to, layers, averaging_block_size, max_flow, dst = NULL"),
    list(f = .ropecv_cv_calcOpticalFlowSF__1, p = c(from = "mat", to = "mat", layers = "int", averaging_block_size = "int", max_flow = "int", sigma_dist = "dbl", sigma_color = "dbl", postprocess_window = "int", sigma_dist_fix = "dbl", sigma_color_fix = "dbl", occ_thr = "dbl", upscale_averaging_radius = "int", upscale_sigma_dist = "dbl", upscale_sigma_color = "dbl", speed_up_thr = "dbl", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE), s = "from, to, layers, averaging_block_size, max_flow, sigma_dist, sigma_color, postprocess_window, sigma_dist_fix, sigma_color_fix, occ_thr, upscale_averaging_radius, upscale_sigma_dist, upscale_sigma_color, speed_up_thr, dst = NULL")
  )
  function(...) .ropecv_pick("cv_calcOpticalFlowSF", .sigs, list(...))
})

#' @title calcOpticalFlowSparseToDense
#' @description ROpenCV 绑定。C++ 签名：<code>void calcOpticalFlowSparseToDense(InputArray from, InputArray to, OutputArray flow, int grid_step, int k, float sigma, bool use_post_proc, float fgs_lambda, float fgs_sigma)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_calcOpticalFlowSparseToDense <- function(from, to, grid_step = 8, k = 128, sigma = 0.05, use_post_proc = TRUE, fgs_lambda = 500.0, fgs_sigma = 1.5, dst = NULL) {
  .Call(`_ROpenCV_cv_calcOpticalFlowSparseToDense`, from, to, grid_step, k, sigma, use_post_proc, fgs_lambda, fgs_sigma, dst)
}

#' @title createOptFlow_DeepFlow
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;DenseOpticalFlow&gt; createOptFlow_DeepFlow()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createOptFlow_DeepFlow <- function() {
  .Call(`_ROpenCV_cv_createOptFlow_DeepFlow`)
}

#' @title createOptFlow_DualTVL1
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;DualTVL1OpticalFlow&gt; createOptFlow_DualTVL1()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createOptFlow_DualTVL1 <- function() {
  .Call(`_ROpenCV_cv_createOptFlow_DualTVL1`)
}

#' @title createOptFlow_Farneback
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;DenseOpticalFlow&gt; createOptFlow_Farneback()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createOptFlow_Farneback <- function() {
  .Call(`_ROpenCV_cv_createOptFlow_Farneback`)
}

#' @title createOptFlow_SimpleFlow
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;DenseOpticalFlow&gt; createOptFlow_SimpleFlow()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createOptFlow_SimpleFlow <- function() {
  .Call(`_ROpenCV_cv_createOptFlow_SimpleFlow`)
}

#' @title createOptFlow_SparseToDense
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;DenseOpticalFlow&gt; createOptFlow_SparseToDense()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createOptFlow_SparseToDense <- function() {
  .Call(`_ROpenCV_cv_createOptFlow_SparseToDense`)
}
