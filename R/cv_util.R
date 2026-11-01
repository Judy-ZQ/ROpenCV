# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createDirectory
#' @description ROpenCV 绑定。C++ 签名：<code>void createDirectory(const std::string &amp; path)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createDirectory <- function(path) {
  .Call(`_ROpenCV_cv_createDirectory`, path)
}

#' @title split
#' @description ROpenCV 绑定。C++ 签名：<code>void split(const std::string &amp; s, std::vector&lt;std::string&gt; &amp; elems, char delim)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_datasets_split <- function(s, elems = NULL, delim) {
  .Call(`_ROpenCV_cv_datasets_split`, s, elems, delim)
}

#' @title getDirList
#' @description ROpenCV 绑定。C++ 签名：<code>void getDirList(const std::string &amp; dirName, std::vector&lt;std::string&gt; &amp; fileNames)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getDirList <- function(dirName, fileNames = NULL) {
  .Call(`_ROpenCV_cv_getDirList`, dirName, fileNames)
}

#' @title overlapRoi
#' @description ROpenCV 绑定。C++ 签名：<code>bool overlapRoi(Point tl1, Point tl2, Size sz1, Size sz2, Rect &amp; roi)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_overlapRoi <- function(tl1, tl2, sz1, sz2, roi = NULL) {
  .Call(`_ROpenCV_cv_overlapRoi`, tl1, tl2, sz1, sz2, roi)
}

#' @title resultRoi
#' @description ROpenCV 绑定。C++ 签名：<code>Rect resultRoi(const std::vector&lt;Point&gt; &amp; corners, const std::vector&lt;Size&gt; &amp; sizes)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_resultRoi <- function(corners, sizes) {
  .Call(`_ROpenCV_cv_resultRoi`, corners, sizes)
}

#' @title resultRoiIntersection
#' @description ROpenCV 绑定。C++ 签名：<code>Rect resultRoiIntersection(const std::vector&lt;Point&gt; &amp; corners, const std::vector&lt;Size&gt; &amp; sizes)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_resultRoiIntersection <- function(corners, sizes) {
  .Call(`_ROpenCV_cv_resultRoiIntersection`, corners, sizes)
}

#' @title resultTl
#' @description ROpenCV 绑定。C++ 签名：<code>Point resultTl(const std::vector&lt;Point&gt; &amp; corners)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_resultTl <- function(corners) {
  .Call(`_ROpenCV_cv_resultTl`, corners)
}

#' @title selectRandomSubset
#' @description ROpenCV 绑定。C++ 签名：<code>void selectRandomSubset(int count, int size, std::vector&lt;int&gt; &amp; subset)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_selectRandomSubset <- function(count, size, subset = NULL) {
  .Call(`_ROpenCV_cv_selectRandomSubset`, count, size, subset)
}

#' @title stitchingLogLevel
#' @description ROpenCV 绑定。C++ 签名：<code>int&amp; stitchingLogLevel()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_stitchingLogLevel <- function() {
  .Call(`_ROpenCV_cv_stitchingLogLevel`)
}
