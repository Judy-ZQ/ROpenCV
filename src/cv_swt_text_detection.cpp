// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/swt_text_detection.hpp
#include "ropecv.h"
#include <opencv2/text/swt_text_detection.hpp>

// [[Rcpp::export]]
SEXP cv_detectTextSWT(SEXP input, bool dark_on_light, SEXP draw, SEXP chainBBs) {
  try {
    ropecv::InArg _i0(input);
    std::vector<cv::Rect> _o0;
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(draw) ? &_owned1 : ropecv::mat_ptr(draw);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(chainBBs) ? &_owned2 : ropecv::mat_ptr(chainBBs);
    ::cv::text::detectTextSWT(_i0.ia(), _o0, dark_on_light, cv::_OutputArray(*_p1), cv::_OutputArray(*_p2));
    return Rcpp::List::create(Rcpp::Named("result") = ropecv::wrap_rects(_o0),
                                Rcpp::Named("draw") = Rf_isNull(draw) ? ropecv::wrap_mat(std::move(_owned1)) : draw,
                                Rcpp::Named("chainBBs") = Rf_isNull(chainBBs) ? ropecv::wrap_mat(std::move(_owned2)) : chainBBs);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectTextSWT: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectTextSWT: %s", e.what());
  }
}
