% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvFaceRecognizerSF}
\alias{cvFaceRecognizerSF}
\title{DNN-based face recognizer}
\usage{cvFaceRecognizerSF(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvFaceRecognizerSF} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{DNN-based face recognizer.}
\details{
model download link: https://github.com/opencv/opencv_zoo/tree/master/models/face_recognition_sface
\strong{C++ 头文件：}\code{#include <opencv2/objdetect/face.hpp>}
\strong{构造}
\preformatted{
cvFaceRecognizerSF(model, config, backend_id = 0, target_id = 0)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvFaceRecognizerSF(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{alignCrop(src_img, face_box, dst = NULL)}：Aligns detected face with the source input image and crops it.
\item \code{feature(aligned_img, dst = NULL)}：Extracts face feature from aligned image.
\item \code{match(face_feature1, face_feature2, dis_type = FR_COSINE)}：Calculates the distance between two face features.
}
}
\keyword{opencv}
