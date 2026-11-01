% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_solveLP}
\alias{cv_solveLP}
\title{Solve given (non-integer) linear programming problem using the Simplex Algorithm (Simplex Method)}
\usage{cv_solveLP(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{int}）挂在 \code{attr(x, "value")} 上。}
\description{Solve given (non-integer) linear programming problem using the Simplex Algorithm (Simplex Method).}
\details{
What we mean here by "linear programming problem" (or LP problem, for short) can be formulated as:

Where is fixed \code{1}-by-\code{n} row-vector, is fixed \code{m}-by-\code{n} matrix, is fixed \code{m}-by-\code{1} column vector and is an arbitrary \code{n}-by-\code{1} column vector, which satisfies the constraints.

Simplex algorithm is one of many algorithms that are designed to handle this sort of problems efficiently. Although it is not optimal in theoretical sense (there exist algorithms that can solve any problem written as above in polynomial time, while simplex method degenerates to exponential time for some special cases), it is well-studied, easy to implement and is shown to work well for real-life purposes.

The particular implementation is taken almost verbatim from Introduction to Algorithms, third edition by T. H. Cormen, C. E. Leiserson, R. L. Rivest and Clifford Stein. In particular, the Bland's rule http://en.wikipedia.org/wiki/Bland\%27s_rule is used to prevent cycling.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

int solveLP(InputArray Func, InputArray Constr, OutputArray z, double constr_eps)

int solveLP(InputArray Func, InputArray Constr, OutputArray z)

}

\strong{C++ 头文件：}\code{#include <opencv2/core/optim.hpp>}
}
\keyword{opencv}
