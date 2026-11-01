// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/edge_drawing.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/edge_drawing.hpp>

// [[Rcpp::export]]
SEXP cv_createEdgeDrawing() {
  try {
    cv::Ptr<cv::ximgproc::EdgeDrawing> _rv = ::cv::ximgproc::createEdgeDrawing();
    return ropecv::wrap_obj(_rv, "cvEdgeDrawing");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createEdgeDrawing: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createEdgeDrawing: %s", e.what());
  }
}
