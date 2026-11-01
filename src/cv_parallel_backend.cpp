// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/parallel_backend.hpp
#include "ropecv.h"
#include <opencv2/core.hpp>
#include <opencv2/core/parallel/parallel_backend.hpp>

// [[Rcpp::export]]
SEXP cv_setParallelForBackend(std::string backendName, bool propagateNumThreads) {
  try {
    bool _rv = ::cv::parallel::setParallelForBackend(backendName, propagateNumThreads);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("setParallelForBackend: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setParallelForBackend: %s", e.what());
  }
}
