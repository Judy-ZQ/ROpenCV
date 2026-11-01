# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createEdgeBoxes
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;EdgeBoxes&gt; createEdgeBoxes(float alpha, float beta, float eta, float minScore, int maxBoxes, float edgeMinMag, float edgeMergeThr, float clusterMinMag, float maxAspectRatio, float minBoxArea, float gamma, float kappa)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createEdgeBoxes <- function(alpha = 0.65, beta = 0.75, eta = 1, minScore = 0.01, maxBoxes = 10000, edgeMinMag = 0.1, edgeMergeThr = 0.5, clusterMinMag = 0.5, maxAspectRatio = 3, minBoxArea = 1000, gamma = 2, kappa = 1.5) {
  .Call(`_ROpenCV_cv_createEdgeBoxes`, alpha, beta, eta, minScore, maxBoxes, edgeMinMag, edgeMergeThr, clusterMinMag, maxAspectRatio, minBoxArea, gamma, kappa)
}
