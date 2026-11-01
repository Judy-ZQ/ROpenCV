% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvQualityBRISQUE_compute}
\alias{cvQualityBRISQUE_compute}
\title{static method for computing quality}
\usage{cvQualityBRISQUE_compute(img, model_file_path, range_file_path)}
\arguments{
\item{img}{image for which to compute quality}
\item{model_file_path}{cv::String which contains a path to the BRISQUE model data, eg. /path/to/brisque_model_live.yml}
\item{range_file_path}{cv::String which contains a path to the BRISQUE range data, eg. /path/to/brisque_range_live.yml}
}
\value{cv::Scalar with the score in the first element. The score ranges from 0 (best quality) to 100 (worst quality)}
\description{static method for computing quality}
\keyword{opencv}
