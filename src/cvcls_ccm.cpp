// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/mcc/ccm.hpp>

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_new__0(SEXP src, int constcolor) {
  try {
    cv::Mat _m0 = Rf_isNull(src) ? cv::Mat() : *ropecv::mat_ptr(src);
    cv::Ptr<cv::ccm::ColorCorrectionModel> _rv(new cv::ccm::ColorCorrectionModel(_m0, (cv::ccm::CONST_COLOR)constcolor));
    return ropecv::wrap_obj(_rv, "cvColorCorrectionModel");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvColorCorrectionModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvColorCorrectionModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_new__1(SEXP src, SEXP colors, int ref_cs) {
  try {
    cv::Mat _m0 = Rf_isNull(src) ? cv::Mat() : *ropecv::mat_ptr(src);
    cv::Mat _m1 = Rf_isNull(colors) ? cv::Mat() : *ropecv::mat_ptr(colors);
    cv::Ptr<cv::ccm::ColorCorrectionModel> _rv(new cv::ccm::ColorCorrectionModel(_m0, _m1, (cv::ccm::COLOR_SPACE)ref_cs));
    return ropecv::wrap_obj(_rv, "cvColorCorrectionModel");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvColorCorrectionModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvColorCorrectionModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_new__2(SEXP src, SEXP colors, int ref_cs, SEXP colored) {
  try {
    cv::Mat _m0 = Rf_isNull(src) ? cv::Mat() : *ropecv::mat_ptr(src);
    cv::Mat _m1 = Rf_isNull(colors) ? cv::Mat() : *ropecv::mat_ptr(colors);
    cv::Mat _m2 = Rf_isNull(colored) ? cv::Mat() : *ropecv::mat_ptr(colored);
    cv::Ptr<cv::ccm::ColorCorrectionModel> _rv(new cv::ccm::ColorCorrectionModel(_m0, _m1, (cv::ccm::COLOR_SPACE)ref_cs, _m2));
    return ropecv::wrap_obj(_rv, "cvColorCorrectionModel");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvColorCorrectionModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvColorCorrectionModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_getCCM__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->getCCM();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCCM: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCCM: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_getLoss__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->getLoss();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLoss: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLoss: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_getMask__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->getMask();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMask: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMask: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_getWeights__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->getWeights();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWeights: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWeights: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_get_dst_rgbl__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->get_dst_rgbl();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("get_dst_rgbl: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("get_dst_rgbl: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_get_src_rgbl__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->get_src_rgbl();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("get_src_rgbl: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("get_src_rgbl: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_infer__0(SEXP ropecv_self_, SEXP img, bool islinear) {
  try {
    cv::Mat _m0 = Rf_isNull(img) ? cv::Mat() : *ropecv::mat_ptr(img);
    cv::Mat _rv = ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->infer(_m0, islinear);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("infer: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("infer: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_run__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->run();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("run: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("run: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setCCM_TYPE__0(SEXP ropecv_self_, int ccm_type) {
  try {
    ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->setCCM_TYPE((cv::ccm::CCM_TYPE)ccm_type);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCCM_TYPE: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCCM_TYPE: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setColorSpace__0(SEXP ropecv_self_, int cs) {
  try {
    ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->setColorSpace((cv::ccm::COLOR_SPACE)cs);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setColorSpace: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setColorSpace: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setDistance__0(SEXP ropecv_self_, int distance) {
  try {
    ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->setDistance((cv::ccm::DISTANCE_TYPE)distance);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDistance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDistance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setEpsilon__0(SEXP ropecv_self_, double epsilon) {
  try {
    ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->setEpsilon(epsilon);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEpsilon: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEpsilon: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setInitialMethod__0(SEXP ropecv_self_, int initial_method_type) {
  try {
    ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->setInitialMethod((cv::ccm::INITIAL_METHOD_TYPE)initial_method_type);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInitialMethod: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInitialMethod: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setLinear__0(SEXP ropecv_self_, int linear_type) {
  try {
    ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->setLinear((cv::ccm::LINEAR_TYPE)linear_type);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLinear: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLinear: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setLinearDegree__0(SEXP ropecv_self_, int deg) {
  try {
    ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->setLinearDegree(deg);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLinearDegree: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLinearDegree: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setLinearGamma__0(SEXP ropecv_self_, double gamma) {
  try {
    ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->setLinearGamma(gamma);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLinearGamma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLinearGamma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setMaxCount__0(SEXP ropecv_self_, int max_count) {
  try {
    ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->setMaxCount(max_count);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setSaturatedThreshold__0(SEXP ropecv_self_, double lower, double upper) {
  try {
    ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->setSaturatedThreshold(lower, upper);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSaturatedThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSaturatedThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setWeightCoeff__0(SEXP ropecv_self_, double weights_coeff) {
  try {
    ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->setWeightCoeff(weights_coeff);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWeightCoeff: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWeightCoeff: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setWeightsList__0(SEXP ropecv_self_, SEXP weights_list) {
  try {
    cv::Mat _m0 = Rf_isNull(weights_list) ? cv::Mat() : *ropecv::mat_ptr(weights_list);
    ropecv::obj_as<cv::ccm::ColorCorrectionModel>(ropecv_self_)->setWeightsList(_m0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWeightsList: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWeightsList: %s", e.what());
  }
}
