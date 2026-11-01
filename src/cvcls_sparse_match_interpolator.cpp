// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/ximgproc/sparse_match_interpolator.hpp>

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_getFGSLambda__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::EdgeAwareInterpolator>(ropecv_self_)->getFGSLambda();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFGSLambda: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFGSLambda: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_getFGSSigma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::EdgeAwareInterpolator>(ropecv_self_)->getFGSSigma();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFGSSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFGSSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_getK__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ximgproc::EdgeAwareInterpolator>(ropecv_self_)->getK();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_getLambda__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::EdgeAwareInterpolator>(ropecv_self_)->getLambda();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLambda: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLambda: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_getSigma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::EdgeAwareInterpolator>(ropecv_self_)->getSigma();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_getUsePostProcessing__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::ximgproc::EdgeAwareInterpolator>(ropecv_self_)->getUsePostProcessing();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUsePostProcessing: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUsePostProcessing: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_setCostMap__0(SEXP ropecv_self_, SEXP costMap) {
  try {
    cv::Mat _m0 = Rf_isNull(costMap) ? cv::Mat() : *ropecv::mat_ptr(costMap);
    ropecv::obj_as<cv::ximgproc::EdgeAwareInterpolator>(ropecv_self_)->setCostMap(_m0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCostMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCostMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_setFGSLambda__0(SEXP ropecv_self_, double lambda) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeAwareInterpolator>(ropecv_self_)->setFGSLambda((float)lambda);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setFGSLambda: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setFGSLambda: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_setFGSSigma__0(SEXP ropecv_self_, double sigma) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeAwareInterpolator>(ropecv_self_)->setFGSSigma((float)sigma);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setFGSSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setFGSSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_setK__0(SEXP ropecv_self_, int k) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeAwareInterpolator>(ropecv_self_)->setK(k);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_setLambda__0(SEXP ropecv_self_, double lambda) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeAwareInterpolator>(ropecv_self_)->setLambda((float)lambda);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLambda: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLambda: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_setSigma__0(SEXP ropecv_self_, double sigma) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeAwareInterpolator>(ropecv_self_)->setSigma((float)sigma);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_setUsePostProcessing__0(SEXP ropecv_self_, bool use_post_proc) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeAwareInterpolator>(ropecv_self_)->setUsePostProcessing(use_post_proc);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUsePostProcessing: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUsePostProcessing: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_getAlpha__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->getAlpha();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAlpha: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAlpha: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_getFGSLambda__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->getFGSLambda();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFGSLambda: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFGSLambda: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_getFGSSigma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->getFGSSigma();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFGSSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFGSSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_getK__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->getK();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_getMaxFlow__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->getMaxFlow();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxFlow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxFlow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_getModelIter__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->getModelIter();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getModelIter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getModelIter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_getRefineModels__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->getRefineModels();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRefineModels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRefineModels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_getSuperpixelMode__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->getSuperpixelMode();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSuperpixelMode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSuperpixelMode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_getSuperpixelNNCnt__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->getSuperpixelNNCnt();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSuperpixelNNCnt: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSuperpixelNNCnt: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_getSuperpixelRuler__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->getSuperpixelRuler();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSuperpixelRuler: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSuperpixelRuler: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_getSuperpixelSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->getSuperpixelSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSuperpixelSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSuperpixelSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_getUseGlobalSmootherFilter__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->getUseGlobalSmootherFilter();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseGlobalSmootherFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseGlobalSmootherFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_getUseVariationalRefinement__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->getUseVariationalRefinement();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseVariationalRefinement: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseVariationalRefinement: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_setAlpha__0(SEXP ropecv_self_, double alpha) {
  try {
    ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->setAlpha((float)alpha);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setAlpha: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setAlpha: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_setCostMap__0(SEXP ropecv_self_, SEXP costMap) {
  try {
    cv::Mat _m0 = Rf_isNull(costMap) ? cv::Mat() : *ropecv::mat_ptr(costMap);
    ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->setCostMap(_m0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCostMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCostMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_setFGSLambda__0(SEXP ropecv_self_, double lambda) {
  try {
    ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->setFGSLambda((float)lambda);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setFGSLambda: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setFGSLambda: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_setFGSSigma__0(SEXP ropecv_self_, double sigma) {
  try {
    ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->setFGSSigma((float)sigma);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setFGSSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setFGSSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_setK__0(SEXP ropecv_self_, int k) {
  try {
    ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->setK(k);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_setMaxFlow__0(SEXP ropecv_self_, double maxFlow) {
  try {
    ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->setMaxFlow((float)maxFlow);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxFlow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxFlow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_setModelIter__0(SEXP ropecv_self_, int modelIter) {
  try {
    ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->setModelIter(modelIter);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setModelIter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setModelIter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_setRefineModels__0(SEXP ropecv_self_, bool refineModles) {
  try {
    ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->setRefineModels(refineModles);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRefineModels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRefineModels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_setSuperpixelMode__0(SEXP ropecv_self_, int mode) {
  try {
    ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->setSuperpixelMode(mode);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSuperpixelMode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSuperpixelMode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_setSuperpixelNNCnt__0(SEXP ropecv_self_, int spNN) {
  try {
    ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->setSuperpixelNNCnt(spNN);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSuperpixelNNCnt: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSuperpixelNNCnt: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_setSuperpixelRuler__0(SEXP ropecv_self_, double ruler) {
  try {
    ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->setSuperpixelRuler((float)ruler);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSuperpixelRuler: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSuperpixelRuler: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_setSuperpixelSize__0(SEXP ropecv_self_, int spSize) {
  try {
    ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->setSuperpixelSize(spSize);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSuperpixelSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSuperpixelSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_setUseGlobalSmootherFilter__0(SEXP ropecv_self_, bool use_FGS) {
  try {
    ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->setUseGlobalSmootherFilter(use_FGS);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseGlobalSmootherFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseGlobalSmootherFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RICInterpolator_RICInterpolator_setUseVariationalRefinement__0(SEXP ropecv_self_, bool use_variational_refinement) {
  try {
    ropecv::obj_as<cv::ximgproc::RICInterpolator>(ropecv_self_)->setUseVariationalRefinement(use_variational_refinement);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseVariationalRefinement: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseVariationalRefinement: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_SparseMatchInterpolator_SparseMatchInterpolator_interpolate__0(SEXP ropecv_self_, SEXP from_image, SEXP from_points, SEXP to_image, SEXP to_points, SEXP dst) {
  try {
    ropecv::InArg _i0(from_image);
    ropecv::InArg _i1(from_points);
    ropecv::InArg _i2(to_image);
    ropecv::InArg _i3(to_points);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::SparseMatchInterpolator>(ropecv_self_)->interpolate(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("interpolate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("interpolate: %s", e.what());
  }
}
