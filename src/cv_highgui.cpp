// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/highgui.hpp
#include "ropecv.h"
#include <opencv2/highgui.hpp>

// [[Rcpp::export]]
SEXP cv_addText(SEXP img, std::string text, SEXP org, std::string nameFont, int pointSize, SEXP color, int weight, int style, int spacing) {
  try {
    cv::Mat _m0 = Rf_isNull(img) ? cv::Mat() : *ropecv::mat_ptr(img);
    ::cv::addText(_m0, text, ropecv::as_point(org), nameFont, pointSize, ropecv::as_scalar(color), weight, style, spacing);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("addText: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("addText: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_currentUIFramework() {
  try {
    std::string _rv = ::cv::currentUIFramework();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("currentUIFramework: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("currentUIFramework: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_destroyAllWindows() {
  try {
    ::cv::destroyAllWindows();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("destroyAllWindows: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("destroyAllWindows: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_destroyWindow(std::string winname) {
  try {
    ::cv::destroyWindow(winname);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("destroyWindow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("destroyWindow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_displayOverlay(std::string winname, std::string text, int delayms) {
  try {
    ::cv::displayOverlay(winname, text, delayms);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("displayOverlay: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("displayOverlay: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_displayStatusBar(std::string winname, std::string text, int delayms) {
  try {
    ::cv::displayStatusBar(winname, text, delayms);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("displayStatusBar: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("displayStatusBar: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getTrackbarPos(std::string trackbarname, std::string winname) {
  try {
    int _rv = ::cv::getTrackbarPos(trackbarname, winname);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTrackbarPos: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTrackbarPos: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getWindowImageRect(std::string winname) {
  try {
    cv::Rect _rv = ::cv::getWindowImageRect(winname);
    return ropecv::wrap_rect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWindowImageRect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWindowImageRect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getWindowProperty(std::string winname, int prop_id) {
  try {
    double _rv = ::cv::getWindowProperty(winname, prop_id);
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWindowProperty: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWindowProperty: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_imshow(std::string winname, SEXP mat) {
  try {
    ropecv::InArg _i0(mat);
    ::cv::imshow(winname, _i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("imshow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("imshow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_moveWindow(std::string winname, int x, int y) {
  try {
    ::cv::moveWindow(winname, x, y);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("moveWindow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("moveWindow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_namedWindow(std::string winname, int flags) {
  try {
    ::cv::namedWindow(winname, flags);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("namedWindow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("namedWindow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_pollKey() {
  try {
    int _rv = ::cv::pollKey();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("pollKey: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("pollKey: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_resizeWindow__0(std::string winname, SEXP size) {
  try {
    ::cv::resizeWindow(winname, ropecv::as_size(size));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("resizeWindow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("resizeWindow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_resizeWindow__1(std::string winname, int width, int height) {
  try {
    ::cv::resizeWindow(winname, width, height);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("resizeWindow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("resizeWindow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_selectROI__0(SEXP img, bool showCrosshair, bool fromCenter, bool printNotice) {
  try {
    ropecv::InArg _i0(img);
    cv::Rect _rv = ::cv::selectROI(_i0.ia(), showCrosshair, fromCenter, printNotice);
    return ropecv::wrap_rect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("selectROI: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("selectROI: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_selectROI__1(std::string windowName, SEXP img, bool showCrosshair, bool fromCenter, bool printNotice) {
  try {
    ropecv::InArg _i0(img);
    cv::Rect _rv = ::cv::selectROI(windowName, _i0.ia(), showCrosshair, fromCenter, printNotice);
    return ropecv::wrap_rect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("selectROI: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("selectROI: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_selectROIs(std::string windowName, SEXP img, bool showCrosshair, bool fromCenter, bool printNotice) {
  try {
    ropecv::InArg _i0(img);
    std::vector<cv::Rect> _o0;
    ::cv::selectROIs(windowName, _i0.ia(), _o0, showCrosshair, fromCenter, printNotice);
    return ropecv::wrap_rects(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("selectROIs: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("selectROIs: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_setTrackbarMax(std::string trackbarname, std::string winname, int maxval) {
  try {
    ::cv::setTrackbarMax(trackbarname, winname, maxval);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTrackbarMax: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTrackbarMax: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_setTrackbarMin(std::string trackbarname, std::string winname, int minval) {
  try {
    ::cv::setTrackbarMin(trackbarname, winname, minval);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTrackbarMin: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTrackbarMin: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_setTrackbarPos(std::string trackbarname, std::string winname, int pos) {
  try {
    ::cv::setTrackbarPos(trackbarname, winname, pos);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTrackbarPos: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTrackbarPos: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_setWindowProperty(std::string winname, int prop_id, double prop_value) {
  try {
    ::cv::setWindowProperty(winname, prop_id, prop_value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWindowProperty: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWindowProperty: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_setWindowTitle(std::string winname, std::string title) {
  try {
    ::cv::setWindowTitle(winname, title);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWindowTitle: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWindowTitle: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_startWindowThread() {
  try {
    int _rv = ::cv::startWindowThread();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("startWindowThread: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("startWindowThread: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_waitKey(int delay) {
  try {
    int _rv = ::cv::waitKey(delay);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("waitKey: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("waitKey: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_waitKeyEx(int delay) {
  try {
    int _rv = ::cv::waitKeyEx(delay);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("waitKeyEx: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("waitKeyEx: %s", e.what());
  }
}
