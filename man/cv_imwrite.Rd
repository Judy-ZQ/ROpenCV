% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_imwrite}
\alias{cv_imwrite}
\title{Saves an image to a specified file}
\usage{cv_imwrite(filename, img, params = NULL)}
\arguments{
\item{filename}{Name of the file.}
\item{img}{(Mat or vector of Mat) Image or Images to be saved.}
\item{params}{Format-specific parameters encoded as pairs (paramId_1, paramValue_1, paramId_2, paramValue_2, ... .) see cv::ImwriteFlags}
}
\value{逻辑标量。}
\description{Saves an image to a specified file.}
\details{
The function imwrite saves the image to the specified file. The image format is chosen based on the filename extension (see cv::imread for the list of extensions). In general, only 8-bit unsigned (CV_8U) single-channel or 3-channel (with 'BGR' channel order) images can be saved using this function, with these exceptions:

\itemize{
\item With OpenEXR encoder, only 32-bit float (CV_32F) images can be saved. 8-bit unsigned (CV_8U) images are not supported.
}

\itemize{
\item All images will be converted to 32-bit float (CV_32F).
}

\itemize{
\item PNG images with an alpha channel can be saved using this function. To do this, create 8-bit (or 16-bit) 4-channel image BGRA, where the alpha channel goes last. Fully transparent pixels should have alpha set to 0, fully opaque pixels should have alpha set to 255/65535 (see the code sample below).
}

\itemize{
\item Multiple images (vector of Mat) can be saved in TIFF format (see the code sample below).
\item 32-bit float 3-channel (CV_32FC3) TIFF images will be saved using the LogLuv high dynamic range encoding (4 bytes per pixel)
}

If the image format is not supported, the image will be converted to 8-bit unsigned (CV_8U) and saved that way.

If the format, depth or channel order is different, use Mat::convertTo and cv::cvtColor to convert it before saving. Or, use the universal FileStorage I/O functions to save the image to XML or YAML format.

The sample below shows how to create a BGRA image, how to set custom compression parameters and save it to a PNG file. It also demonstrates how to save multiple images in a TIFF file:

\strong{C++ 头文件：}\code{#include <opencv2/imgcodecs.hpp>}
}
\keyword{opencv}
