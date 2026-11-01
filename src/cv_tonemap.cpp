// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/tonemap.hpp
#include "ropecv.h"
#include <opencv2/xphoto/tonemap.hpp>

// [[Rcpp::export]]
SEXP cv_createTonemapDurand(double gamma, double contrast, double saturation, double sigma_color, double sigma_space) {
  try {
    cv::Ptr<cv::xphoto::TonemapDurand> _rv = ::cv::xphoto::createTonemapDurand((float)gamma, (float)contrast, (float)saturation, (float)sigma_color, (float)sigma_space);
    return ropecv::wrap_obj(_rv, "cvTonemapDurand");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createTonemapDurand: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createTonemapDurand: %s", e.what());
  }
}
