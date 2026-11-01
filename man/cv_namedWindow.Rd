% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_namedWindow}
\alias{cv_namedWindow}
\title{Creates a window}
\usage{cv_namedWindow(winname, flags = WINDOW_AUTOSIZE)}
\arguments{
\item{winname}{Name of the window in the window caption that may be used as a window identifier.}
\item{flags}{Flags of the window. The supported flags are: (cv::WindowFlags)}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Creates a window.}
\details{
The function namedWindow creates a window that can be used as a placeholder for images and trackbars. Created windows are referred to by their names.

If a window with the same name already exists, the function does nothing.

You can call cv::destroyWindow or cv::destroyAllWindows to close the window and de-allocate any associated memory usage. For a simple program, you do not really have to call these functions because all the resources and windows of the application are closed automatically by the operating system upon exit.

\strong{注意：}Qt backend supports additional flags: WINDOW_NORMAL or WINDOW_AUTOSIZE: WINDOW_NORMAL enables you to resize the window, whereas WINDOW_AUTOSIZE adjusts automatically the window size to fit the displayed image (see imshow ), and you cannot change the window size manually. WINDOW_FREERATIO or WINDOW_KEEPRATIO: WINDOW_FREERATIO adjusts the image with no respect to its ratio, whereas WINDOW_KEEPRATIO keeps the image ratio. WINDOW_GUI_NORMAL or WINDOW_GUI_EXPANDED: WINDOW_GUI_NORMAL is the old way to draw the window without statusbar and toolbar, whereas WINDOW_GUI_EXPANDED is a new enhanced GUI. By default, flags == WINDOW_AUTOSIZE | WINDOW_KEEPRATIO | WINDOW_GUI_EXPANDED

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\keyword{opencv}
