% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_imshow}
\alias{cv_imshow}
\title{Displays an image in the specified window}
\usage{cv_imshow(winname, mat)}
\arguments{
\item{winname}{Name of the window.}
\item{mat}{Image to be shown.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Displays an image in the specified window.}
\details{
The function imshow displays an image in the specified window. If the window was created with the cv::WINDOW_AUTOSIZE flag, the image is shown with its original size, however it is still limited by the screen resolution. Otherwise, the image is scaled to fit the window. The function may scale the image, depending on its depth:

\itemize{
\item If the image is 8-bit unsigned, it is displayed as is.
\item If the image is 16-bit unsigned, the pixels are divided by 256. That is, the value range [0,255*256] is mapped to [0,255].
\item If the image is 32-bit or 64-bit floating-point, the pixel values are multiplied by 255. That is, the value range [0,1] is mapped to [0,255].
\item 32-bit integer images are not processed anymore due to ambiguouty of required transform. Convert to 8-bit unsigned matrix using a custom preprocessing specific to image's context.
}

If window was created with OpenGL support, cv::imshow also support ogl::Buffer , ogl::Texture2D and cuda::GpuMat as input.

If the window was not created before this function, it is assumed creating a window with cv::WINDOW_AUTOSIZE.

If you need to show an image that is bigger than the screen resolution, you will need to call namedWindow("", WINDOW_NORMAL) before the imshow.

\strong{注意：}This function should be followed by a call to cv::waitKey or cv::pollKey to perform GUI housekeeping tasks that are necessary to actually show the given image and make the window respond to mouse and keyboard events. Otherwise, it won't display the image and the window might lock up. For example, waitKey(0) will display the window infinitely until any keypress (it is suitable for image display). waitKey(25) will display a frame and wait approximately 25 ms for a key press (suitable for displaying a video frame-by-frame). To remove the window, use cv::destroyWindow. [Windows Backend Only] Pressing Ctrl+C will copy the image to the clipboard. Pressing Ctrl+S will show a dialog to save the image. [Wayland Backend Only] Supoorting format is extended. If the image is 8-bit signed, the pixels are biased by 128. That is, the value range [-128,127] is mapped to [0,255]. If the image is 16-bit signed, the pixels are divided by 256 and biased by 128. That is, the value range [-32768,32767] is mapped to [0,255].

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\keyword{opencv}
