// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/ximgproc/edgeboxes.hpp>

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_getAlpha__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->getAlpha();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAlpha: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAlpha: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_getBeta__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->getBeta();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBeta: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBeta: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_getBoundingBoxes__0(SEXP ropecv_self_, SEXP edge_map, SEXP orientation_map, SEXP scores) {
  try {
    ropecv::InArg _i0(edge_map);
    ropecv::InArg _i1(orientation_map);
    std::vector<cv::Rect> _o0;
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(scores) ? &_owned1 : ropecv::mat_ptr(scores);
    ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->getBoundingBoxes(_i0.ia(), _i1.ia(), _o0, cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("boxes") = ropecv::wrap_rects(_o0),
                                Rcpp::Named("scores") = Rf_isNull(scores) ? ropecv::wrap_mat(std::move(_owned1)) : scores);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBoundingBoxes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBoundingBoxes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_getClusterMinMag__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->getClusterMinMag();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getClusterMinMag: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getClusterMinMag: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_getEdgeMergeThr__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->getEdgeMergeThr();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEdgeMergeThr: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEdgeMergeThr: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_getEdgeMinMag__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->getEdgeMinMag();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEdgeMinMag: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEdgeMinMag: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_getEta__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->getEta();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEta: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEta: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_getGamma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->getGamma();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGamma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGamma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_getKappa__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->getKappa();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getKappa: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getKappa: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_getMaxAspectRatio__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->getMaxAspectRatio();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxAspectRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxAspectRatio: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_getMaxBoxes__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->getMaxBoxes();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxBoxes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxBoxes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_getMinBoxArea__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->getMinBoxArea();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinBoxArea: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinBoxArea: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_getMinScore__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->getMinScore();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinScore: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinScore: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_setAlpha__0(SEXP ropecv_self_, double value) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->setAlpha((float)value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setAlpha: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setAlpha: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_setBeta__0(SEXP ropecv_self_, double value) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->setBeta((float)value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBeta: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBeta: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_setClusterMinMag__0(SEXP ropecv_self_, double value) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->setClusterMinMag((float)value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setClusterMinMag: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setClusterMinMag: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_setEdgeMergeThr__0(SEXP ropecv_self_, double value) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->setEdgeMergeThr((float)value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEdgeMergeThr: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEdgeMergeThr: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_setEdgeMinMag__0(SEXP ropecv_self_, double value) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->setEdgeMinMag((float)value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEdgeMinMag: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEdgeMinMag: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_setEta__0(SEXP ropecv_self_, double value) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->setEta((float)value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEta: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEta: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_setGamma__0(SEXP ropecv_self_, double value) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->setGamma((float)value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setGamma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setGamma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_setKappa__0(SEXP ropecv_self_, double value) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->setKappa((float)value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setKappa: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setKappa: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_setMaxAspectRatio__0(SEXP ropecv_self_, double value) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->setMaxAspectRatio((float)value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxAspectRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxAspectRatio: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_setMaxBoxes__0(SEXP ropecv_self_, int value) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->setMaxBoxes(value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxBoxes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxBoxes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_setMinBoxArea__0(SEXP ropecv_self_, double value) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->setMinBoxArea((float)value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinBoxArea: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinBoxArea: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeBoxes_EdgeBoxes_setMinScore__0(SEXP ropecv_self_, double value) {
  try {
    ropecv::obj_as<cv::ximgproc::EdgeBoxes>(ropecv_self_)->setMinScore((float)value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinScore: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinScore: %s", e.what());
  }
}
