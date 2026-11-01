% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvFontFace}
\alias{cvFontFace}
\title{Wrapper on top of a truetype/opentype/etc font, i.e}
\usage{cvFontFace(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvFontFace} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Wrapper on top of a truetype/opentype/etc font, i.e. Freetype's FT_Face.}
\details{
The class is used to store the loaded fonts; the font can then be passed to the functions putText and getTextSize.
\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
\strong{构造}
\preformatted{
cvFontFace()
cvFontFace(fontPathOrName)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvFontFace(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getInstance()}
\item \code{getName()}
\item \code{set(fontPathOrName)}：loads new font face
\item \code{setInstance(params)}：sets the current variable font instance.
}
}
\keyword{opencv}
