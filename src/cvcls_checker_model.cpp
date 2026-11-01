// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/mcc/checker_model.hpp>

// [[Rcpp::export]]
SEXP cv_mcc_CChecker_CChecker_create__0() {
  try {
    cv::Ptr<cv::mcc::CChecker> _rv = cv::mcc::CChecker::create();
    return ropecv::wrap_obj(_rv, "cvCChecker");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CChecker_CChecker_getBox__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::Point2f> _rv = ropecv::obj_as<cv::mcc::CChecker>(ropecv_self_)->getBox();
    return ropecv::wrap_points2f(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBox: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBox: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CChecker_CChecker_getCenter__0(SEXP ropecv_self_) {
  try {
    cv::Point2f _rv = ropecv::obj_as<cv::mcc::CChecker>(ropecv_self_)->getCenter();
    return ropecv::wrap_point2f(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCenter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCenter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CChecker_CChecker_getChartsRGB__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::mcc::CChecker>(ropecv_self_)->getChartsRGB();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getChartsRGB: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getChartsRGB: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CChecker_CChecker_getChartsYCbCr__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::mcc::CChecker>(ropecv_self_)->getChartsYCbCr();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getChartsYCbCr: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getChartsYCbCr: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CChecker_CChecker_getColorCharts__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::Point2f> _rv = ropecv::obj_as<cv::mcc::CChecker>(ropecv_self_)->getColorCharts();
    return ropecv::wrap_points2f(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getColorCharts: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getColorCharts: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CChecker_CChecker_getCost__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::mcc::CChecker>(ropecv_self_)->getCost();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCost: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCost: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CChecker_CChecker_getTarget__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::mcc::CChecker>(ropecv_self_)->getTarget();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTarget: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTarget: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CChecker_CChecker_setBox__0(SEXP ropecv_self_, SEXP box) {
  try {
    std::vector<cv::Point2f> _a0 = ropecv::as_points2f(box);
    ropecv::obj_as<cv::mcc::CChecker>(ropecv_self_)->setBox(_a0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBox: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBox: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CChecker_CChecker_setCenter__0(SEXP ropecv_self_, SEXP center) {
  try {
    ropecv::obj_as<cv::mcc::CChecker>(ropecv_self_)->setCenter(ropecv::as_point2f(center));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCenter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCenter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CChecker_CChecker_setChartsRGB__0(SEXP ropecv_self_, SEXP chartsRGB) {
  try {
    cv::Mat _m0 = Rf_isNull(chartsRGB) ? cv::Mat() : *ropecv::mat_ptr(chartsRGB);
    ropecv::obj_as<cv::mcc::CChecker>(ropecv_self_)->setChartsRGB(_m0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setChartsRGB: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setChartsRGB: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CChecker_CChecker_setChartsYCbCr__0(SEXP ropecv_self_, SEXP chartsYCbCr) {
  try {
    cv::Mat _m0 = Rf_isNull(chartsYCbCr) ? cv::Mat() : *ropecv::mat_ptr(chartsYCbCr);
    ropecv::obj_as<cv::mcc::CChecker>(ropecv_self_)->setChartsYCbCr(_m0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setChartsYCbCr: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setChartsYCbCr: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CChecker_CChecker_setCost__0(SEXP ropecv_self_, double cost) {
  try {
    ropecv::obj_as<cv::mcc::CChecker>(ropecv_self_)->setCost((float)cost);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCost: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCost: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CChecker_CChecker_setTarget__0(SEXP ropecv_self_, int target) {
  try {
    ropecv::obj_as<cv::mcc::CChecker>(ropecv_self_)->setTarget((cv::mcc::TYPECHART)target);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTarget: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTarget: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CCheckerDraw_CCheckerDraw_create__0(SEXP pChecker, SEXP color, int thickness) {
  try {
    cv::Ptr<cv::mcc::CCheckerDraw> _rv = cv::mcc::CCheckerDraw::create(ropecv::as_ptr<cv::mcc::CChecker>(pChecker), ropecv::as_scalar(color), thickness);
    return ropecv::wrap_obj(_rv, "cvCCheckerDraw");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CCheckerDraw_CCheckerDraw_draw__0(SEXP ropecv_self_, SEXP img) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    ropecv::obj_as<cv::mcc::CCheckerDraw>(ropecv_self_)->draw(cv::_InputOutputArray(*_p0));
    return Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img;
  } catch (const cv::Exception& e) {
    Rcpp::stop("draw: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("draw: %s", e.what());
  }
}
