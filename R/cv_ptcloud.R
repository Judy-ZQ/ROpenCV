# 由 tools/gen/emit.py 生成，请勿手改。

#' @title farthestPointSampling
#' @description ROpenCV 绑定。C++ 签名：<code>int farthestPointSampling(OutputArray sampled_point_flags, InputArray input_pts, int sampled_pts_size, float dist_lower_limit, RNG * rng)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_farthestPointSampling__0 <- function(input_pts, sampled_pts_size, dist_lower_limit = 0, sampled_point_flags = NULL) {
  .Call(`_ROpenCV_cv_farthestPointSampling__0`, input_pts, sampled_pts_size, dist_lower_limit, sampled_point_flags)
}

#' @title farthestPointSampling
#' @description ROpenCV 绑定。C++ 签名：<code>int farthestPointSampling(OutputArray sampled_point_flags, InputArray input_pts, float sampled_scale, float dist_lower_limit, RNG * rng)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_farthestPointSampling__1 <- function(input_pts, sampled_scale, dist_lower_limit = 0, sampled_point_flags = NULL) {
  .Call(`_ROpenCV_cv_farthestPointSampling__1`, input_pts, sampled_scale, dist_lower_limit, sampled_point_flags)
}

# cv_farthestPointSampling
#' @rdname cv_farthestPointSampling
#' @export
cv_farthestPointSampling <- local({
  .sigs <- list(
    list(f = .ropecv_cv_farthestPointSampling__0, p = c(input_pts = "mat", sampled_pts_size = "int", dist_lower_limit = "dbl", sampled_point_flags = "mat"), r = c(TRUE, TRUE, FALSE, FALSE), s = "input_pts, sampled_pts_size, dist_lower_limit = 0, sampled_point_flags = NULL"),
    list(f = .ropecv_cv_farthestPointSampling__1, p = c(input_pts = "mat", sampled_scale = "dbl", dist_lower_limit = "dbl", sampled_point_flags = "mat"), r = c(TRUE, TRUE, FALSE, FALSE), s = "input_pts, sampled_scale, dist_lower_limit = 0, sampled_point_flags = NULL")
  )
  function(...) .ropecv_pick("cv_farthestPointSampling", .sigs, list(...))
})

#' @title randomSampling
#' @description ROpenCV 绑定。C++ 签名：<code>void randomSampling(OutputArray sampled_pts, InputArray input_pts, int sampled_pts_size, RNG * rng)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_randomSampling__0 <- function(input_pts, sampled_pts_size, sampled_pts = NULL) {
  .Call(`_ROpenCV_cv_randomSampling__0`, input_pts, sampled_pts_size, sampled_pts)
}

#' @title randomSampling
#' @description ROpenCV 绑定。C++ 签名：<code>void randomSampling(OutputArray sampled_pts, InputArray input_pts, float sampled_scale, RNG * rng)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_randomSampling__1 <- function(input_pts, sampled_scale, sampled_pts = NULL) {
  .Call(`_ROpenCV_cv_randomSampling__1`, input_pts, sampled_scale, sampled_pts)
}

# cv_randomSampling
#' @rdname cv_randomSampling
#' @export
cv_randomSampling <- local({
  .sigs <- list(
    list(f = .ropecv_cv_randomSampling__0, p = c(input_pts = "mat", sampled_pts_size = "int", sampled_pts = "mat"), r = c(TRUE, TRUE, FALSE), s = "input_pts, sampled_pts_size, sampled_pts = NULL"),
    list(f = .ropecv_cv_randomSampling__1, p = c(input_pts = "mat", sampled_scale = "dbl", sampled_pts = "mat"), r = c(TRUE, TRUE, FALSE), s = "input_pts, sampled_scale, sampled_pts = NULL")
  )
  function(...) .ropecv_pick("cv_randomSampling", .sigs, list(...))
})

#' @title voxelGridSampling
#' @description ROpenCV 绑定。C++ 签名：<code>int voxelGridSampling(OutputArray sampled_point_flags, InputArray input_pts, float length, float width, float height)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_voxelGridSampling <- function(dst = NULL, input_pts, length, width, height) {
  .Call(`_ROpenCV_cv_voxelGridSampling`, dst, input_pts, length, width, height)
}
