// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/core.hpp>
#include <opencv2/core/utility.hpp>

// [[Rcpp::export]]
SEXP cv_TickMeter_TickMeter_new__0() {
  try {
    cv::Ptr<cv::TickMeter> _rv(new cv::TickMeter());
    return ropecv::wrap_obj(_rv, "cvTickMeter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvTickMeter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvTickMeter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TickMeter_TickMeter_getAvgTimeMilli__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TickMeter>(ropecv_self_)->getAvgTimeMilli();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAvgTimeMilli: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAvgTimeMilli: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TickMeter_TickMeter_getAvgTimeSec__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TickMeter>(ropecv_self_)->getAvgTimeSec();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAvgTimeSec: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAvgTimeSec: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TickMeter_TickMeter_getCounter__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TickMeter>(ropecv_self_)->getCounter();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCounter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCounter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TickMeter_TickMeter_getFPS__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TickMeter>(ropecv_self_)->getFPS();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFPS: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFPS: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TickMeter_TickMeter_getTimeMicro__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TickMeter>(ropecv_self_)->getTimeMicro();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTimeMicro: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTimeMicro: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TickMeter_TickMeter_getTimeMilli__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TickMeter>(ropecv_self_)->getTimeMilli();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTimeMilli: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTimeMilli: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TickMeter_TickMeter_getTimeSec__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TickMeter>(ropecv_self_)->getTimeSec();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTimeSec: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTimeSec: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TickMeter_TickMeter_getTimeTicks__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TickMeter>(ropecv_self_)->getTimeTicks();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTimeTicks: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTimeTicks: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TickMeter_TickMeter_reset__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::TickMeter>(ropecv_self_)->reset();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("reset: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("reset: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TickMeter_TickMeter_start__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::TickMeter>(ropecv_self_)->start();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("start: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("start: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TickMeter_TickMeter_stop__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::TickMeter>(ropecv_self_)->stop();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("stop: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stop: %s", e.what());
  }
}
