% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_denoise_TVL1}
\alias{cv_denoise_TVL1}
\title{Primal-dual algorithm is an algorithm for solving special types of variational problems (that is, finding a function to minimize some funct}
\usage{cv_denoise_TVL1(observations, result = NULL, lambda = 1, niters = 30)}
\arguments{
\item{observations}{This array should contain one or more noised versions of the image that is to be restored.}
\item{result}{Here the denoised image will be stored. There is no need to do pre-allocation of storage space, as it will be automatically allocated, if necessary.}
\item{lambda}{Corresponds to in the formulas above. As it is enlarged, the smooth (blurred) images are treated more favorably than detailed (but maybe more noised) ones. Roughly speaking, as it becomes smaller, the result will be more blur but more sever outliers will be removed.}
\item{niters}{Number of iterations that the algorithm will run. Of course, as more iterations as better, but it is hard to quantitatively refine this statement, so just use the default and increase it if the results are poor.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Primal-dual algorithm is an algorithm for solving special types of variational problems (that is, finding a function to minimize some functional). As the image denoising, in particular, may be seen as the variational problem, primal-dual algorithm then can be used to perform denoising and this is exactly what is implemented.}
\details{
It should be noted, that this implementation was taken from the July 2013 blog entry [199] , which also contained (slightly more general) ready-to-use source code on Python. Subsequently, that code was rewritten on C++ with the usage of openCV by Vadim Pisarevsky at the end of July 2013 and finally it was slightly adapted by later authors.

Although the thorough discussion and justification of the algorithm involved may be found in [49], it might make sense to skim over it here, following [199] . To begin with, we consider the 1-byte gray-level images as the functions from the rectangular domain of pixels (it may be seen as set for some ) into . We shall denote the noised images as and with this view, given some image of the same size, we may measure how bad it is by the formula

here denotes -norm and as you see, the first addend states that we want our image to be smooth (ideally, having zero gradient, thus being constant) and the second states that we want our result to be close to the observations we've got. If we treat as a function, this is exactly the functional what we seek to minimize and here the Primal-Dual algorithm comes into play.

\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
