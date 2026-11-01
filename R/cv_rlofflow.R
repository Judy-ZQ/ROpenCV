# 由 tools/gen/emit.py 生成，请勿手改。

#' @title calcOpticalFlowDenseRLOF
#' @description ROpenCV 绑定。C++ 签名：<code>void calcOpticalFlowDenseRLOF(InputArray I0, InputArray I1, InputOutputArray flow, Ptr&lt;RLOFOpticalFlowParameter&gt; rlofParam, float forwardBackwardThreshold, Size gridStep, InterpolationType interp_type, int epicK, float epicSigma, float epicLambda, int ricSPSize, int ricSLICType, bool use_post_proc, float fgsLambda, float fgsSigma, bool use_variational_refinement)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>flow</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_calcOpticalFlowDenseRLOF <- function(I0, I1, flow = NULL, rlofParam = NULL, forwardBackwardThreshold = 0, gridStep = c(6, 6), interp_type = INTERP_EPIC, epicK = 128, epicSigma = 0.05, epicLambda = 100, ricSPSize = 15, ricSLICType = 100, use_post_proc = TRUE, fgsLambda = 500.0, fgsSigma = 1.5, use_variational_refinement = FALSE) {
  .Call(`_ROpenCV_cv_calcOpticalFlowDenseRLOF`, I0, I1, flow, rlofParam, forwardBackwardThreshold, gridStep, interp_type, epicK, epicSigma, epicLambda, ricSPSize, ricSLICType, use_post_proc, fgsLambda, fgsSigma, use_variational_refinement)
}

#' @title calcOpticalFlowSparseRLOF
#' @description ROpenCV 绑定。C++ 签名：<code>void calcOpticalFlowSparseRLOF(InputArray prevImg, InputArray nextImg, InputArray prevPts, InputOutputArray nextPts, OutputArray status, OutputArray err, Ptr&lt;RLOFOpticalFlowParameter&gt; rlofParam, float forwardBackwardThreshold)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_calcOpticalFlowSparseRLOF <- function(prevImg, nextImg, prevPts, nextPts = NULL, rlofParam = NULL, forwardBackwardThreshold = 0, status = NULL, err = NULL) {
  .Call(`_ROpenCV_cv_calcOpticalFlowSparseRLOF`, prevImg, nextImg, prevPts, nextPts, rlofParam, forwardBackwardThreshold, status, err)
}

#' @title createOptFlow_DenseRLOF
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;DenseOpticalFlow&gt; createOptFlow_DenseRLOF()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createOptFlow_DenseRLOF <- function() {
  .Call(`_ROpenCV_cv_createOptFlow_DenseRLOF`)
}

#' @title createOptFlow_SparseRLOF
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;SparseOpticalFlow&gt; createOptFlow_SparseRLOF()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createOptFlow_SparseRLOF <- function() {
  .Call(`_ROpenCV_cv_createOptFlow_SparseRLOF`)
}
