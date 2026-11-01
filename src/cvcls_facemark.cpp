// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/face/facemark.hpp>

// [[Rcpp::export]]
SEXP cv_face_Facemark_Facemark_fit__0(SEXP ropecv_self_, SEXP image, SEXP faces, SEXP landmarks) {
  try {
    ropecv::InArg _i0(image);
    ropecv::InArg _i1(faces);
    std::vector<cv::Mat> _o0;
    bool _rv = ropecv::obj_as<cv::face::Facemark>(ropecv_self_)->fit(_i0.ia(), _i1.ia(), cv::_OutputArray(_o0));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("landmarks") = ropecv::wrap_mat_vector(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("fit: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fit: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_Facemark_Facemark_loadModel__0(SEXP ropecv_self_, std::string model) {
  try {
    ropecv::obj_as<cv::face::Facemark>(ropecv_self_)->loadModel(model);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("loadModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("loadModel: %s", e.what());
  }
}
