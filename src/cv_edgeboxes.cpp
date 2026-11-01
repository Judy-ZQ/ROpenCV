// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/edgeboxes.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/edgeboxes.hpp>

// [[Rcpp::export]]
SEXP cv_createEdgeBoxes(double alpha, double beta, double eta, double minScore, int maxBoxes, double edgeMinMag, double edgeMergeThr, double clusterMinMag, double maxAspectRatio, double minBoxArea, double gamma, double kappa) {
  try {
    cv::Ptr<cv::ximgproc::EdgeBoxes> _rv = ::cv::ximgproc::createEdgeBoxes((float)alpha, (float)beta, (float)eta, (float)minScore, maxBoxes, (float)edgeMinMag, (float)edgeMergeThr, (float)clusterMinMag, (float)maxAspectRatio, (float)minBoxArea, (float)gamma, (float)kappa);
    return ropecv::wrap_obj(_rv, "cvEdgeBoxes");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createEdgeBoxes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createEdgeBoxes: %s", e.what());
  }
}
