% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_imread}
\alias{cv_imread}
\title{Loads an image from a file}
\usage{cv_imread(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{\code{cvMat} 图像。}
\description{Loads an image from a file.}
\details{
The function imread loads an image from the specified file and returns it. If the image cannot be read (because of missing file, improper permissions, unsupported or invalid format), the function returns an empty matrix ( Mat::data==NULL ).

Currently, the following file formats are supported:

\itemize{
\item Windows bitmaps - *.bmp, *.dib (always supported)
\item JPEG files - *.jpeg, *.jpg, *.jpe (see the Note section)
\item JPEG 2000 files - *.jp2 (see the Note section)
\item Portable Network Graphics - *.png (see the Note section)
\item WebP - *.webp (see the Note section)
\item AVIF - *.avif (see the Note section)
\item Portable image format - *.pbm, *.pgm, *.ppm *.pxm, *.pnm (always supported)
\item PFM files - *.pfm (see the Note section)
\item Sun rasters - *.sr, *.ras (always supported)
\item TIFF files - *.tiff, *.tif (see the Note section)
\item OpenEXR Image files - *.exr (see the Note section)
\item Radiance HDR - *.hdr, *.pic (always supported)
\item Raster and Vector geospatial data supported by GDAL (see the Note section)
}

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Mat imread(const String& filename, int flags = IMREAD_COLOR_BGR)

void imread(const String& filename, OutputArray dst, int flags = IMREAD_COLOR_BGR)

}

\strong{注意：}The function determines the type of an image by the content, not by the file extension. In the case of color images, the decoded images will have the channels stored in B G R order. When using IMREAD_GRAYSCALE, the codec's internal grayscale conversion will be used, if available. Results may differ to the output of cvtColor On Microsoft Windows* OS and MacOSX*, the codecs shipped with an OpenCV image (libjpeg, libpng, libtiff, and libjasper) are used by default. So, OpenCV can always read JPEGs, PNGs, and TIFFs. On MacOSX, there is also an option to use native MacOSX image readers. But beware that currently these native image loaders give images with different pixel values because of the color management embedded into MacOSX. On Linux*, BSD flavors and other Unix-like open-source operating systems, OpenCV looks for codecs supplied with an OS image. Install the relevant packages (do not forget the development files, for example, "libjpeg-dev", in Debian* and Ubuntu*) to get the codec support or turn on the OPENCV_BUILD_3RDPARTY_LIBS flag in CMake. In the case you set WITH_GDAL flag to true in CMake and IMREAD_LOAD_GDAL to load the image, then the GDAL driver will be used in order to decode the image, supporting the following formats: Raster, Vector. If EXIF information is embedded in the image file, the EXIF orientation will be taken into account and thus the image will be rotated accordingly except if the flags IMREAD_IGNORE_ORIENTATION or IMREAD_UNCHANGED are passed. Use the IMREAD_UNCHANGED flag to keep the floating point values from PFM image. By default number of pixels must be less than 2^30. Limit can be set using system variable OPENCV_IO_MAX_IMAGE_PIXELS

\strong{C++ 头文件：}\code{#include <opencv2/imgcodecs.hpp>}
}
\keyword{opencv}
