% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_pollKey}
\alias{cv_pollKey}
\title{Polls for a pressed key}
\usage{cv_pollKey()}
\value{整数标量。}
\description{Polls for a pressed key.}
\details{
The function pollKey polls for a key event without waiting. It returns the code of the pressed key or -1 if no key was pressed since the last invocation. To wait until a key was pressed, use waitKey.

\strong{注意：}The functions waitKey and pollKey are the only methods in HighGUI that can fetch and handle GUI events, so one of them needs to be called periodically for normal event processing unless HighGUI is used within an environment that takes care of event processing. The function only works if there is at least one HighGUI window created and the window is active. If there are several HighGUI windows, any of them can be active.

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\keyword{opencv}
