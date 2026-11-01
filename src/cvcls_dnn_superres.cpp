// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/dnn_superres.hpp>

// [[Rcpp::export]]
SEXP cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_create__0() {
  try {
    cv::Ptr<cv::dnn_superres::DnnSuperResImpl> _rv = cv::dnn_superres::DnnSuperResImpl::create();
    return ropecv::wrap_obj(_rv, "cvDnnSuperResImpl");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_getAlgorithm__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::dnn_superres::DnnSuperResImpl>(ropecv_self_)->getAlgorithm();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAlgorithm: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAlgorithm: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_getScale__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::dnn_superres::DnnSuperResImpl>(ropecv_self_)->getScale();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_readModel__0(SEXP ropecv_self_, std::string path) {
  try {
    ropecv::obj_as<cv::dnn_superres::DnnSuperResImpl>(ropecv_self_)->readModel(path);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("readModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_setModel__0(SEXP ropecv_self_, std::string algo, int scale) {
  try {
    ropecv::obj_as<cv::dnn_superres::DnnSuperResImpl>(ropecv_self_)->setModel(algo, scale);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_setPreferableBackend__0(SEXP ropecv_self_, int backendId) {
  try {
    ropecv::obj_as<cv::dnn_superres::DnnSuperResImpl>(ropecv_self_)->setPreferableBackend(backendId);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPreferableBackend: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPreferableBackend: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_setPreferableTarget__0(SEXP ropecv_self_, int targetId) {
  try {
    ropecv::obj_as<cv::dnn_superres::DnnSuperResImpl>(ropecv_self_)->setPreferableTarget(targetId);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPreferableTarget: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPreferableTarget: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_upsample__0(SEXP ropecv_self_, SEXP img, SEXP dst) {
  try {
    ropecv::InArg _i0(img);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::dnn_superres::DnnSuperResImpl>(ropecv_self_)->upsample(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("upsample: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("upsample: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_superres_DnnSuperResImpl_DnnSuperResImpl_upsampleMultioutput__0(SEXP ropecv_self_, SEXP img, SEXP imgs_new, SEXP scale_factors, SEXP node_names) {
  try {
    ropecv::InArg _i0(img);
    std::vector<int> _a1 = ropecv::as_int_vector(scale_factors);
    std::vector<cv::String> _a2 = ropecv::as_vec_string(node_names);
    std::vector<cv::Mat> _o0;
    if (!Rf_isNull(imgs_new)) _o0 = ropecv::as_mat_vector(imgs_new);
    ropecv::obj_as<cv::dnn_superres::DnnSuperResImpl>(ropecv_self_)->upsampleMultioutput(_i0.ia(), _o0, _a1, _a2);
    return Rcpp::List::create(Rcpp::Named("imgs_new") = ropecv::wrap_mat_vector(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("upsampleMultioutput: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("upsampleMultioutput: %s", e.what());
  }
}
