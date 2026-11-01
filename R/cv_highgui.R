# 由 tools/gen/emit.py 生成，请勿手改。

#' @title addText
#' @description ROpenCV 绑定。C++ 签名：<code>void addText(const Mat&amp; img, const String&amp; text, Point org, const String&amp; nameFont, int pointSize, Scalar color, int weight, int style, int spacing)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_addText <- function(img, text, org, nameFont, pointSize = -1, color = 0, weight = QT_FONT_NORMAL, style = QT_STYLE_NORMAL, spacing = 0) {
  .Call(`_ROpenCV_cv_addText`, img, text, org, nameFont, pointSize, color, weight, style, spacing)
}

#' @title currentUIFramework
#' @description ROpenCV 绑定。C++ 签名：<code>const std::string currentUIFramework()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_currentUIFramework <- function() {
  .Call(`_ROpenCV_cv_currentUIFramework`)
}

#' @title destroyAllWindows
#' @description ROpenCV 绑定。C++ 签名：<code>void destroyAllWindows()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_destroyAllWindows <- function() {
  .Call(`_ROpenCV_cv_destroyAllWindows`)
}

#' @title destroyWindow
#' @description ROpenCV 绑定。C++ 签名：<code>void destroyWindow(const String&amp; winname)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_destroyWindow <- function(winname) {
  .Call(`_ROpenCV_cv_destroyWindow`, winname)
}

#' @title displayOverlay
#' @description ROpenCV 绑定。C++ 签名：<code>void displayOverlay(const String&amp; winname, const String&amp; text, int delayms)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_displayOverlay <- function(winname, text, delayms = 0) {
  .Call(`_ROpenCV_cv_displayOverlay`, winname, text, delayms)
}

#' @title displayStatusBar
#' @description ROpenCV 绑定。C++ 签名：<code>void displayStatusBar(const String&amp; winname, const String&amp; text, int delayms)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_displayStatusBar <- function(winname, text, delayms = 0) {
  .Call(`_ROpenCV_cv_displayStatusBar`, winname, text, delayms)
}

#' @title getTrackbarPos
#' @description ROpenCV 绑定。C++ 签名：<code>int getTrackbarPos(const String&amp; trackbarname, const String&amp; winname)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getTrackbarPos <- function(trackbarname, winname) {
  .Call(`_ROpenCV_cv_getTrackbarPos`, trackbarname, winname)
}

#' @title getWindowImageRect
#' @description ROpenCV 绑定。C++ 签名：<code>Rect getWindowImageRect(const String&amp; winname)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getWindowImageRect <- function(winname) {
  .Call(`_ROpenCV_cv_getWindowImageRect`, winname)
}

#' @title getWindowProperty
#' @description ROpenCV 绑定。C++ 签名：<code>double getWindowProperty(const String&amp; winname, int prop_id)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getWindowProperty <- function(winname, prop_id) {
  .Call(`_ROpenCV_cv_getWindowProperty`, winname, prop_id)
}

#' @title imshow
#' @description ROpenCV 绑定。C++ 签名：<code>void imshow(const String&amp; winname, InputArray mat)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_imshow <- function(winname, mat) {
  .Call(`_ROpenCV_cv_imshow`, winname, mat)
}

#' @title moveWindow
#' @description ROpenCV 绑定。C++ 签名：<code>void moveWindow(const String&amp; winname, int x, int y)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_moveWindow <- function(winname, x, y) {
  .Call(`_ROpenCV_cv_moveWindow`, winname, x, y)
}

#' @title namedWindow
#' @description ROpenCV 绑定。C++ 签名：<code>void namedWindow(const String&amp; winname, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_namedWindow <- function(winname, flags = WINDOW_AUTOSIZE) {
  .Call(`_ROpenCV_cv_namedWindow`, winname, flags)
}

#' @title pollKey
#' @description ROpenCV 绑定。C++ 签名：<code>int pollKey()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_pollKey <- function() {
  .Call(`_ROpenCV_cv_pollKey`)
}

#' @title resizeWindow
#' @description ROpenCV 绑定。C++ 签名：<code>void resizeWindow(const String&amp; winname, const cv::Size&amp; size)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_resizeWindow__0 <- function(winname, size) {
  .Call(`_ROpenCV_cv_resizeWindow__0`, winname, size)
}

#' @title resizeWindow
#' @description ROpenCV 绑定。C++ 签名：<code>void resizeWindow(const String&amp; winname, int width, int height)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_resizeWindow__1 <- function(winname, width, height) {
  .Call(`_ROpenCV_cv_resizeWindow__1`, winname, width, height)
}

# cv_resizeWindow
#' @rdname cv_resizeWindow
#' @export
cv_resizeWindow <- local({
  .sigs <- list(
    list(f = .ropecv_cv_resizeWindow__0, p = c(winname = "chr", size = "size"), r = c(TRUE, TRUE), s = "winname, size"),
    list(f = .ropecv_cv_resizeWindow__1, p = c(winname = "chr", width = "int", height = "int"), r = c(TRUE, TRUE, TRUE), s = "winname, width, height")
  )
  function(...) .ropecv_pick("cv_resizeWindow", .sigs, list(...))
})

#' @title selectROI
#' @description ROpenCV 绑定。C++ 签名：<code>Rect selectROI(InputArray img, bool showCrosshair, bool fromCenter, bool printNotice)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_selectROI__0 <- function(img, showCrosshair = TRUE, fromCenter = FALSE, printNotice = TRUE) {
  .Call(`_ROpenCV_cv_selectROI__0`, img, showCrosshair, fromCenter, printNotice)
}

#' @title selectROI
#' @description ROpenCV 绑定。C++ 签名：<code>Rect selectROI(const String&amp; windowName, InputArray img, bool showCrosshair, bool fromCenter, bool printNotice)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_selectROI__1 <- function(windowName, img, showCrosshair = TRUE, fromCenter = FALSE, printNotice = TRUE) {
  .Call(`_ROpenCV_cv_selectROI__1`, windowName, img, showCrosshair, fromCenter, printNotice)
}

# cv_selectROI
#' @rdname cv_selectROI
#' @export
cv_selectROI <- local({
  .sigs <- list(
    list(f = .ropecv_cv_selectROI__0, p = c(img = "mat", showCrosshair = "lgl", fromCenter = "lgl", printNotice = "lgl"), r = c(TRUE, FALSE, FALSE, FALSE), s = "img, showCrosshair = TRUE, fromCenter = FALSE, printNotice = TRUE"),
    list(f = .ropecv_cv_selectROI__1, p = c(windowName = "chr", img = "mat", showCrosshair = "lgl", fromCenter = "lgl", printNotice = "lgl"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE), s = "windowName, img, showCrosshair = TRUE, fromCenter = FALSE, printNotice = TRUE")
  )
  function(...) .ropecv_pick("cv_selectROI", .sigs, list(...))
})

#' @title selectROIs
#' @description ROpenCV 绑定。C++ 签名：<code>void selectROIs(const String&amp; windowName, InputArray img, std::vector&lt;Rect&gt;&amp; boundingBoxes, bool showCrosshair, bool fromCenter, bool printNotice)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_selectROIs <- function(windowName, img, showCrosshair = TRUE, fromCenter = FALSE, printNotice = TRUE) {
  .Call(`_ROpenCV_cv_selectROIs`, windowName, img, showCrosshair, fromCenter, printNotice)
}

#' @title setTrackbarMax
#' @description ROpenCV 绑定。C++ 签名：<code>void setTrackbarMax(const String&amp; trackbarname, const String&amp; winname, int maxval)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_setTrackbarMax <- function(trackbarname, winname, maxval) {
  .Call(`_ROpenCV_cv_setTrackbarMax`, trackbarname, winname, maxval)
}

#' @title setTrackbarMin
#' @description ROpenCV 绑定。C++ 签名：<code>void setTrackbarMin(const String&amp; trackbarname, const String&amp; winname, int minval)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_setTrackbarMin <- function(trackbarname, winname, minval) {
  .Call(`_ROpenCV_cv_setTrackbarMin`, trackbarname, winname, minval)
}

#' @title setTrackbarPos
#' @description ROpenCV 绑定。C++ 签名：<code>void setTrackbarPos(const String&amp; trackbarname, const String&amp; winname, int pos)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_setTrackbarPos <- function(trackbarname, winname, pos) {
  .Call(`_ROpenCV_cv_setTrackbarPos`, trackbarname, winname, pos)
}

#' @title setWindowProperty
#' @description ROpenCV 绑定。C++ 签名：<code>void setWindowProperty(const String&amp; winname, int prop_id, double prop_value)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_setWindowProperty <- function(winname, prop_id, prop_value) {
  .Call(`_ROpenCV_cv_setWindowProperty`, winname, prop_id, prop_value)
}

#' @title setWindowTitle
#' @description ROpenCV 绑定。C++ 签名：<code>void setWindowTitle(const String&amp; winname, const String&amp; title)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_setWindowTitle <- function(winname, title) {
  .Call(`_ROpenCV_cv_setWindowTitle`, winname, title)
}

#' @title startWindowThread
#' @description ROpenCV 绑定。C++ 签名：<code>int startWindowThread()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_startWindowThread <- function() {
  .Call(`_ROpenCV_cv_startWindowThread`)
}

#' @title waitKey
#' @description ROpenCV 绑定。C++ 签名：<code>int waitKey(int delay)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_waitKey <- function(delay = 0) {
  .Call(`_ROpenCV_cv_waitKey`, delay)
}

#' @title waitKeyEx
#' @description ROpenCV 绑定。C++ 签名：<code>int waitKeyEx(int delay)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_waitKeyEx <- function(delay = 0) {
  .Call(`_ROpenCV_cv_waitKeyEx`, delay)
}
