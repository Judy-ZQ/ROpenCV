% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvFileNode}
\alias{cvFileNode}
\title{File Storage Node class}
\usage{cvFileNode(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvFileNode} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{File Storage Node class.}
\details{
The node is used to store each and every element of the file storage opened for reading. When XML/YAML file is read, it is first parsed and stored in the memory as a hierarchical collection of nodes. Each node can be a "leaf" that is contain a single number or a string, or be a collection of other nodes. There can be named collections (mappings) where each element has a name and it is accessed by a name, and ordered collections (sequences) where elements do not have names but rather accessed by index. Type of the file node can be determined using FileNode::type method.
Note that file nodes are only used for navigating file storages opened for reading. When a file storage is opened for writing, no data is stored in memory after it is written.
\strong{C++ 头文件：}\code{#include <opencv2/core/persistence.hpp>}
\strong{构造}
\preformatted{
cvFileNode()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvFileNode(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{empty()}：returns true if the node is empty
\item \code{isInt()}：returns true if the node is an integer
\item \code{isMap()}：returns true if the node is a mapping
\item \code{isNamed()}：returns true if the node has a name
\item \code{isNone()}：returns true if the node is a "none" object
\item \code{isReal()}：returns true if the node is a floating-point number
\item \code{isSeq()}：returns true if the node is a sequence
\item \code{isString()}：returns true if the node is a text string
\item \code{keys()}：Returns keys of a mapping node.
\item \code{mat()}：Simplified reading API to use with bindings.
\item \code{name()}：returns the node name or an empty string if the node is nameless
\item \code{rawSize()}：returns raw size of the FileNode in bytes
\item \code{real()}：Simplified reading API to use with bindings.
\item \code{size()}：returns the number of elements in the node, if it is a sequence or mapping, or 1 otherwise.
\item \code{string()}：Simplified reading API to use with bindings.
\item \code{type()}：Returns type of the node.
}
}
\keyword{opencv}
