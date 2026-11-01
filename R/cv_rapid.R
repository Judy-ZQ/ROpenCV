# 由 tools/gen/emit.py 生成，请勿手改。

#' @title convertCorrespondencies
#' @description ROpenCV 绑定。C++ 签名：<code>void convertCorrespondencies(InputArray cols, InputArray srcLocations, OutputArray pts2d, InputOutputArray pts3d, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_convertCorrespondencies <- function(cols, srcLocations, pts3d = NULL, mask = NULL, pts2d = NULL) {
  .Call(`_ROpenCV_cv_convertCorrespondencies`, cols, srcLocations, pts3d, mask, pts2d)
}

#' @title drawCorrespondencies
#' @description ROpenCV 绑定。C++ 签名：<code>void drawCorrespondencies(InputOutputArray bundle, InputArray cols, InputArray colors)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>bundle</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_drawCorrespondencies <- function(bundle = NULL, cols, colors = NULL) {
  .Call(`_ROpenCV_cv_drawCorrespondencies`, bundle, cols, colors)
}

#' @title drawSearchLines
#' @description ROpenCV 绑定。C++ 签名：<code>void drawSearchLines(InputOutputArray img, InputArray locations, const Scalar&amp; color)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>img</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_drawSearchLines <- function(img = NULL, locations, color) {
  .Call(`_ROpenCV_cv_drawSearchLines`, img, locations, color)
}

#' @title drawWireframe
#' @description ROpenCV 绑定。C++ 签名：<code>void drawWireframe(InputOutputArray img, InputArray pts2d, InputArray tris, const Scalar&amp; color, int type, bool cullBackface)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>img</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_drawWireframe <- function(img = NULL, pts2d, tris, color, type = LINE_8, cullBackface = FALSE) {
  .Call(`_ROpenCV_cv_drawWireframe`, img, pts2d, tris, color, type, cullBackface)
}

#' @title extractControlPoints
#' @description ROpenCV 绑定。C++ 签名：<code>void extractControlPoints(int num, int len, InputArray pts3d, InputArray rvec, InputArray tvec, InputArray K, const Size&amp; imsize, InputArray tris, OutputArray ctl2d, OutputArray ctl3d)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_extractControlPoints <- function(num, len, pts3d, rvec, tvec, K, imsize, tris, ctl2d = NULL, ctl3d = NULL) {
  .Call(`_ROpenCV_cv_extractControlPoints`, num, len, pts3d, rvec, tvec, K, imsize, tris, ctl2d, ctl3d)
}

#' @title extractLineBundle
#' @description ROpenCV 绑定。C++ 签名：<code>void extractLineBundle(int len, InputArray ctl2d, InputArray img, OutputArray bundle, OutputArray srcLocations)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_extractLineBundle <- function(len, ctl2d, img, bundle = NULL, srcLocations = NULL) {
  .Call(`_ROpenCV_cv_extractLineBundle`, len, ctl2d, img, bundle, srcLocations)
}

#' @title findCorrespondencies
#' @description ROpenCV 绑定。C++ 签名：<code>void findCorrespondencies(InputArray bundle, OutputArray cols, OutputArray response)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_findCorrespondencies <- function(bundle, cols = NULL, response = NULL) {
  .Call(`_ROpenCV_cv_findCorrespondencies`, bundle, cols, response)
}

#' @title rapid
#' @description ROpenCV 绑定。C++ 签名：<code>float rapid(InputArray img, int num, int len, InputArray pts3d, InputArray tris, InputArray K, InputOutputArray rvec, InputOutputArray tvec, double* rmsd)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_rapid <- function(img, num, len, pts3d, tris, K, rvec = NULL, tvec = NULL) {
  .Call(`_ROpenCV_cv_rapid`, img, num, len, pts3d, tris, K, rvec, tvec)
}
