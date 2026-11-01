% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvWeChatQRCode}
\alias{cvWeChatQRCode}
\title{WeChat QRCode includes two CNN-based models: A object detection model and a super resolution model}
\usage{cvWeChatQRCode(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvWeChatQRCode} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{WeChat QRCode includes two CNN-based models: A object detection model and a super resolution model. Object detection model is applied to detect QRCode with the bounding box. super resolution model is applied to zoom in QRCode when it is small.}
\details{
C++ 类 \code{cv::wechat_qrcode::WeChatQRCode} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/wechat_qrcode.hpp>}
\strong{构造}
\preformatted{
cvWeChatQRCode(detector_prototxt_path = '', detector_caffe_model_path = '', super_resolution_prototxt_path = '', super_resolution_caffe_model_path = '')
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvWeChatQRCode(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{detectAndDecode(img, points = NULL)}：Both detects and decodes QR code. To simplify the usage, there is a only API: detectAndDecode.
\item \code{getScaleFactor()}
\item \code{setScaleFactor(scalingFactor)}：set scale factor QR code detector use neural network to detect QR. Before running the neural network, the input image is pre-processed by scaling. By default, the input image is scaled to an image with an area of 160000 pixels. The scale factor allows to use custom scale the input image: width = scaleFactor*width height = scaleFactor*width
}
}
\keyword{opencv}
