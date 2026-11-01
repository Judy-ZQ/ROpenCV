% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_waitKey}
\alias{cv_waitKey}
\title{Waits for a pressed key}
\usage{cv_waitKey(delay = 0)}
\arguments{
\item{delay}{Delay in milliseconds. 0 is the special value that means "forever".}
}
\value{整数标量。}
\description{Waits for a pressed key.}
\details{
The function waitKey waits for a key event infinitely (when ) or for delay milliseconds, when it is positive. Since the OS has a minimum time between switching threads, the function will not wait exactly delay ms, it will wait at least delay ms, depending on what else is running on your computer at that time. It returns the code of the pressed key or -1 if no key was pressed before the specified time had elapsed. To check for a key press but not wait for it, use pollKey.

\strong{注意：}The functions waitKey and pollKey are the only methods in HighGUI that can fetch and handle GUI events, so one of them needs to be called periodically for normal event processing unless HighGUI is used within an environment that takes care of event processing. The function only works if there is at least one HighGUI window created and the window is active. If there are several HighGUI windows, any of them can be active.

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\keyword{opencv}
