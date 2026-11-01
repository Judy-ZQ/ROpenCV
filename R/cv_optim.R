# 由 tools/gen/emit.py 生成，请勿手改。

#' @title solveLP
#' @description ROpenCV 绑定。C++ 签名：<code>int solveLP(InputArray Func, InputArray Constr, OutputArray z)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_solveLP__0 <- function(Func, Constr, dst = NULL) {
  .Call(`_ROpenCV_cv_solveLP__0`, Func, Constr, dst)
}

#' @title solveLP
#' @description ROpenCV 绑定。C++ 签名：<code>int solveLP(InputArray Func, InputArray Constr, OutputArray z, double constr_eps)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_solveLP__1 <- function(Func, Constr, constr_eps, dst = NULL) {
  .Call(`_ROpenCV_cv_solveLP__1`, Func, Constr, constr_eps, dst)
}

# cv_solveLP
#' @rdname cv_solveLP
#' @export
cv_solveLP <- local({
  .sigs <- list(
    list(f = .ropecv_cv_solveLP__0, p = c(Func = "mat", Constr = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "Func, Constr, dst = NULL"),
    list(f = .ropecv_cv_solveLP__1, p = c(Func = "mat", Constr = "mat", constr_eps = "dbl", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE), s = "Func, Constr, constr_eps, dst = NULL")
  )
  function(...) .ropecv_pick("cv_solveLP", .sigs, list(...))
})
