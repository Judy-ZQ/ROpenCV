// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/pcaflow.hpp
#include "ropecv.h"
#include <opencv2/optflow/pcaflow.hpp>

// [[Rcpp::export]]
SEXP cv_createOptFlow_PCAFlow() {
  try {
    cv::Ptr<cv::DenseOpticalFlow> _rv = ::cv::optflow::createOptFlow_PCAFlow();
    return ropecv::wrap_obj(_rv, "cvDenseOpticalFlow");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createOptFlow_PCAFlow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createOptFlow_PCAFlow: %s", e.what());
  }
}
