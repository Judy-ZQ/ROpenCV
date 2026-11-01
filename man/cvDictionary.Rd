% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvDictionary}
\alias{cvDictionary}
\title{Dictionary is a set of unique ArUco markers of the same size}
\usage{cvDictionary(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvDictionary} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Dictionary is a set of unique ArUco markers of the same size.}
\details{
\code{bytesList} storing as 2-dimensions Mat with 4-th channels (CV_8UC4 type was used) and contains the marker codewords where:
\itemize{
\item bytesList.rows is the dictionary size
\item each marker is encoded using \code{nbytes = ceil(markerSize*markerSize/8.)} bytes
\item each row contains all 4 rotations of the marker, so its length is \code{4*nbytes}
\item the byte order in the bytesList[i] row: \code{//bytes without rotation/bytes with rotation 1/bytes with rotation 2/bytes with rotation 3//} So \code{bytesList.ptr(i)[k*nbytes + j]} is the j-th byte of i-th marker, in its k-th rotation. Note Python bindings generate matrix with shape of bytesList \code{dictionary_size x nbytes x 4}, but it should be indexed like C++ version. Python example for j-th byte of i-th marker, in its k-th rotation: \code{aruco_dict.bytesList[id].ravel [k*nbytes + j]}
}
\strong{C++ 头文件：}\code{#include <opencv2/objdetect/aruco_dictionary.hpp>}
\strong{构造}
\preformatted{
cvDictionary()
cvDictionary(bytesList, markerSize, maxcorr = 0)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvDictionary(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{generateImageMarker(id, sidePixels, borderBits = 1, dst = NULL)}：Generate a canonical marker image.
\item \code{getDistanceToId(bits, id, allRotations = TRUE)}：Returns Hamming distance of the input bits to the specific id.
\item \code{identify(onlyBits, maxCorrectionRate)}：Given a matrix of bits. Returns whether if marker is identified or not.
\item \code{readDictionary(fn)}：Read a new dictionary from FileNode.
\item \code{writeDictionary(fs, name = '')}：Write a dictionary to FileStorage, format is the same as in readDictionary .
}
}
\keyword{opencv}
