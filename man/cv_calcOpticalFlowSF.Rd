% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calcOpticalFlowSF}
\alias{cv_calcOpticalFlowSF}
\title{Calculate an optical flow using "SimpleFlow" algorithm}
\usage{cv_calcOpticalFlowSF(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculate an optical flow using "SimpleFlow" algorithm.}
\details{
See [265] . And site of project - http://graphics.berkeley.edu/papers/Tao-SAN-2012-05/.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void calcOpticalFlowSF(InputArray from, InputArray to, OutputArray flow, int layers, int averaging_block_size, int max_flow)

void calcOpticalFlowSF(InputArray from, InputArray to, OutputArray flow, int layers, int averaging_block_size, int max_flow, double sigma_dist, double sigma_color, int postprocess_window, double sigma_dist_fix, double sigma_color_fix, double occ_thr, int upscale_averaging_radius, double upscale_sigma_dist, double upscale_sigma_color, double speed_up_thr)

}

\strong{注意：}An example using the simpleFlow algorithm can be found at samples/simpleflow_demo.cpp

\strong{C++ 头文件：}\code{#include <opencv2/optflow.hpp>}
}
\keyword{opencv}
