// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/motion_estimators.hpp
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/stitching/detail/motion_estimators.hpp>

// [[Rcpp::export]]
SEXP cv_leaveBiggestComponent(SEXP features, SEXP pairwise_matches, double conf_threshold) {
  try {
    std::vector<cv::detail::ImageFeatures> _o0;
    if (!Rf_isNull(features)) _o0 = ropecv::as_vec_detail_ImageFeatures(features);
    std::vector<cv::detail::MatchesInfo> _o1;
    if (!Rf_isNull(pairwise_matches)) _o1 = ropecv::as_vec_detail_MatchesInfo(pairwise_matches);
    std::vector<int> _rv = ::cv::detail::leaveBiggestComponent(_o0, _o1, (float)conf_threshold);
    return Rcpp::List::create(Rcpp::Named("value") = Rcpp::wrap(_rv),
                                Rcpp::Named("features") = ropecv::wrap_vec_detail_ImageFeatures(_o0),
                                Rcpp::Named("pairwise_matches") = ropecv::wrap_vec_detail_MatchesInfo(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("leaveBiggestComponent: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("leaveBiggestComponent: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_matchesGraphAsString(SEXP paths, SEXP pairwise_matches, double conf_threshold) {
  try {
    std::vector<cv::String> _o0;
    if (!Rf_isNull(paths)) _o0 = ropecv::as_vec_string(paths);
    std::vector<cv::detail::MatchesInfo> _o1;
    if (!Rf_isNull(pairwise_matches)) _o1 = ropecv::as_vec_detail_MatchesInfo(pairwise_matches);
    ::cv::detail::matchesGraphAsString(_o0, _o1, (float)conf_threshold);
    return Rcpp::List::create(Rcpp::Named("paths") = Rcpp::wrap(std::vector<std::string>(_o0.begin(), _o0.end())),
                                Rcpp::Named("pairwise_matches") = ropecv::wrap_vec_detail_MatchesInfo(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("matchesGraphAsString: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("matchesGraphAsString: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_waveCorrect(SEXP rmats, int kind) {
  try {
    std::vector<cv::Mat> _o0;
    if (!Rf_isNull(rmats)) _o0 = ropecv::as_mat_vector(rmats);
    ::cv::detail::waveCorrect(_o0, (cv::detail::WaveCorrectKind)kind);
    return Rcpp::List::create(Rcpp::Named("rmats") = ropecv::wrap_mat_vector(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("waveCorrect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("waveCorrect: %s", e.what());
  }
}
