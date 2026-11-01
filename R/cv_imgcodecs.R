# 由 tools/gen/emit.py 生成，请勿手改。

#' @title haveImageReader
#' @description ROpenCV 绑定。C++ 签名：<code>bool haveImageReader(const String&amp; filename)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_haveImageReader <- function(filename) {
  .Call(`_ROpenCV_cv_haveImageReader`, filename)
}

#' @title haveImageWriter
#' @description ROpenCV 绑定。C++ 签名：<code>bool haveImageWriter(const String&amp; filename)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_haveImageWriter <- function(filename) {
  .Call(`_ROpenCV_cv_haveImageWriter`, filename)
}

#' @title imcount
#' @description ROpenCV 绑定。C++ 签名：<code>size_t imcount(const String&amp; filename, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_imcount <- function(filename, flags = IMREAD_ANYCOLOR) {
  .Call(`_ROpenCV_cv_imcount`, filename, flags)
}

#' @title imdecode
#' @description ROpenCV 绑定。C++ 签名：<code>Mat imdecode(InputArray buf, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_imdecode <- function(buf, flags) {
  .Call(`_ROpenCV_cv_imdecode`, buf, flags)
}

#' @title imdecodemulti
#' @description ROpenCV 绑定。C++ 签名：<code>bool imdecodemulti(InputArray buf, int flags, std::vector&lt;Mat&gt;&amp; mats, const cv::Range&amp; range)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_imdecodemulti <- function(buf, flags, range = NULL) {
  .Call(`_ROpenCV_cv_imdecodemulti`, buf, flags, range)
}

#' @title imencode
#' @description ROpenCV 绑定。C++ 签名：<code>bool imencode(const String&amp; ext, InputArray img, std::vector&lt;uchar&gt;&amp; buf, const std::vector&lt;int&gt;&amp; params)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_imencode <- function(ext, img, params = NULL) {
  .Call(`_ROpenCV_cv_imencode`, ext, img, params)
}

#' @title imread
#' @description ROpenCV 绑定。C++ 签名：<code>Mat imread(const String&amp; filename, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
.ropecv_cv_imread__0 <- function(filename, flags = IMREAD_COLOR_BGR) {
  .Call(`_ROpenCV_cv_imread__0`, filename, flags)
}

#' @title imread
#' @description ROpenCV 绑定。C++ 签名：<code>void imread(const String&amp; filename, OutputArray dst, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_imread__1 <- function(filename, flags = IMREAD_COLOR_BGR, dst = NULL) {
  .Call(`_ROpenCV_cv_imread__1`, filename, flags, dst)
}

# cv_imread
#' @rdname cv_imread
#' @export
cv_imread <- local({
  .sigs <- list(
    list(f = .ropecv_cv_imread__0, p = c(filename = "chr", flags = "int"), r = c(TRUE, FALSE), s = "filename, flags = IMREAD_COLOR_BGR"),
    list(f = .ropecv_cv_imread__1, p = c(filename = "chr", flags = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "filename, flags = IMREAD_COLOR_BGR, dst = NULL")
  )
  function(...) .ropecv_pick("cv_imread", .sigs, list(...))
})

#' @title imreadmulti
#' @description ROpenCV 绑定。C++ 签名：<code>bool imreadmulti(const String&amp; filename, std::vector&lt;Mat&gt;&amp; mats, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_imreadmulti__0 <- function(filename, flags = IMREAD_ANYCOLOR) {
  .Call(`_ROpenCV_cv_imreadmulti__0`, filename, flags)
}

#' @title imreadmulti
#' @description ROpenCV 绑定。C++ 签名：<code>bool imreadmulti(const String&amp; filename, std::vector&lt;Mat&gt;&amp; mats, int start, int count, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_imreadmulti__1 <- function(filename, start, count, flags = IMREAD_ANYCOLOR) {
  .Call(`_ROpenCV_cv_imreadmulti__1`, filename, start, count, flags)
}

# cv_imreadmulti
#' @rdname cv_imreadmulti
#' @export
cv_imreadmulti <- local({
  .sigs <- list(
    list(f = .ropecv_cv_imreadmulti__0, p = c(filename = "chr", flags = "int"), r = c(TRUE, FALSE), s = "filename, flags = IMREAD_ANYCOLOR"),
    list(f = .ropecv_cv_imreadmulti__1, p = c(filename = "chr", start = "int", count = "int", flags = "int"), r = c(TRUE, TRUE, TRUE, FALSE), s = "filename, start, count, flags = IMREAD_ANYCOLOR")
  )
  function(...) .ropecv_pick("cv_imreadmulti", .sigs, list(...))
})

#' @title imwrite
#' @description ROpenCV 绑定。C++ 签名：<code>bool imwrite(const String&amp; filename, InputArray img, const std::vector&lt;int&gt;&amp; params)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_imwrite <- function(filename, img, params = NULL) {
  .Call(`_ROpenCV_cv_imwrite`, filename, img, params)
}

#' @title imwritemulti
#' @description ROpenCV 绑定。C++ 签名：<code>static inline bool imwritemulti(const String&amp; filename, InputArrayOfArrays img, const std::vector&lt;int&gt;&amp; params)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_imwritemulti <- function(filename, img, params = NULL) {
  .Call(`_ROpenCV_cv_imwritemulti`, filename, img, params)
}
