% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvVideoCapture}
\alias{cvVideoCapture}
\title{Class for video capturing from video files, image sequences or cameras}
\usage{cvVideoCapture(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvVideoCapture} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class for video capturing from video files, image sequences or cameras.}
\details{
\strong{三个不会报错的地方。}一是 \code{read()} 的成功标志挂在返回值的 \code{attr(x, "value")} 上，不在返回值本身：读到结尾时它返回 0x0 的 \code{cvMat} 且该属性为 \code{FALSE}，循环判据要写成 \code{attr(f, "value")}，靠 \code{is.null} 判结束会死循环。二是写视频必须调 \code{release()}——在那之前文件是 0 字节，\code{file.exists()} 为真但读不回来。三是 \code{write()} 的帧必须与构造时的 \code{frameSize} 一致且为三通道，否则 OpenCV 抛 \code{imgWidth == frameWidth && imgHeight == frameHeight && channels == 3} 断言。
The class provides C++ API for capturing video from cameras or for reading video files and image sequences.
\itemize{
\item (C++) A basic sample on using the VideoCapture interface can be found at \code{OPENCV_SOURCE_CODE/samples/cpp/videocapture_starter.cpp}
\item (Python) A basic sample on using the VideoCapture interface can be found at \code{OPENCV_SOURCE_CODE/samples/python/video.py}
\item (Python) A multi threaded video processing sample can be found at \code{OPENCV_SOURCE_CODE/samples/python/video_threaded.py}
\item (Python) VideoCapture sample showcasing some features of the Video4Linux2 backend \code{OPENCV_SOURCE_CODE/samples/python/video_v4l2.py}
}
\strong{C++ 头文件：}\code{#include <opencv2/videoio.hpp>}
\strong{构造}
\preformatted{
cvVideoCapture()
cvVideoCapture(filename, apiPreference = CAP_ANY)
cvVideoCapture(index, apiPreference = CAP_ANY)
cvVideoCapture(filename, apiPreference, params)
cvVideoCapture(index, apiPreference, params)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvVideoCapture(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{get(propId)}：Returns the specified VideoCapture property.
\item \code{getBackendName()}：Returns used backend API name.
\item \code{getExceptionMode()}：query if exception mode is active
\item \code{grab()}：Grabs the next frame from video file or capturing device.
\item \code{isOpened()}：Returns true if video capturing has been initialized already.
\item \code{open(filename, apiPreference = CAP_ANY)}：Opens a camera for video capturing with API Preference and parameters.
\item \code{read(dst = NULL)}：Grabs, decodes and returns the next video frame.
\item \code{release()}：Closes video file or capturing device.
\item \code{retrieve(dst = NULL, flag = 0)}：Decodes and returns the grabbed video frame.
\item \code{set(propId, value)}：Sets a property in the VideoCapture.
\item \code{setExceptionMode(enable)}：Switches exceptions mode
}
}
\keyword{opencv}
