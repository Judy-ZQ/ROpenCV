// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/brightedges.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/brightedges.hpp>

// [[Rcpp::export]]
SEXP cv_BrightEdges(SEXP original, SEXP edgeview, int contrast, int shortrange, int longrange) {
  try {
    cv::Mat _o0;
    if (!Rf_isNull(original)) _o0 = *ropecv::mat_ptr(original);
    cv::Mat _o1;
    if (!Rf_isNull(edgeview)) _o1 = *ropecv::mat_ptr(edgeview);
    ::cv::ximgproc::BrightEdges(_o0, _o1, contrast, shortrange, longrange);
    return Rcpp::List::create(Rcpp::Named("original") = ropecv::wrap_mat(_o0),
                                Rcpp::Named("edgeview") = ropecv::wrap_mat(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("BrightEdges: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("BrightEdges: %s", e.what());
  }
}
