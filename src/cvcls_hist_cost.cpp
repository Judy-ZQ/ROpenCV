// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/shape/hist_cost.hpp>

// [[Rcpp::export]]
SEXP cv_EMDHistogramCostExtractor_EMDHistogramCostExtractor_getNormFlag__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::EMDHistogramCostExtractor>(ropecv_self_)->getNormFlag();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNormFlag: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNormFlag: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_EMDHistogramCostExtractor_EMDHistogramCostExtractor_setNormFlag__0(SEXP ropecv_self_, int flag) {
  try {
    ropecv::obj_as<cv::EMDHistogramCostExtractor>(ropecv_self_)->setNormFlag(flag);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNormFlag: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNormFlag: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HistogramCostExtractor_HistogramCostExtractor_buildCostMatrix__0(SEXP ropecv_self_, SEXP descriptors1, SEXP descriptors2, SEXP dst) {
  try {
    ropecv::InArg _i0(descriptors1);
    ropecv::InArg _i1(descriptors2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::HistogramCostExtractor>(ropecv_self_)->buildCostMatrix(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("buildCostMatrix: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("buildCostMatrix: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HistogramCostExtractor_HistogramCostExtractor_getDefaultCost__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::HistogramCostExtractor>(ropecv_self_)->getDefaultCost();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultCost: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultCost: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HistogramCostExtractor_HistogramCostExtractor_getNDummies__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::HistogramCostExtractor>(ropecv_self_)->getNDummies();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNDummies: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNDummies: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HistogramCostExtractor_HistogramCostExtractor_setDefaultCost__0(SEXP ropecv_self_, double defaultCost) {
  try {
    ropecv::obj_as<cv::HistogramCostExtractor>(ropecv_self_)->setDefaultCost((float)defaultCost);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDefaultCost: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDefaultCost: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HistogramCostExtractor_HistogramCostExtractor_setNDummies__0(SEXP ropecv_self_, int nDummies) {
  try {
    ropecv::obj_as<cv::HistogramCostExtractor>(ropecv_self_)->setNDummies(nDummies);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNDummies: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNDummies: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_NormHistogramCostExtractor_NormHistogramCostExtractor_getNormFlag__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::NormHistogramCostExtractor>(ropecv_self_)->getNormFlag();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNormFlag: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNormFlag: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_NormHistogramCostExtractor_NormHistogramCostExtractor_setNormFlag__0(SEXP ropecv_self_, int flag) {
  try {
    ropecv::obj_as<cv::NormHistogramCostExtractor>(ropecv_self_)->setNormFlag(flag);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNormFlag: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNormFlag: %s", e.what());
  }
}
