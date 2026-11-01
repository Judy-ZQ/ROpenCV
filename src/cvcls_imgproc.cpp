// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/imgproc.hpp>

// [[Rcpp::export]]
SEXP cv_CLAHE_CLAHE_apply__0(SEXP ropecv_self_, SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::CLAHE>(ropecv_self_)->apply(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("apply: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("apply: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CLAHE_CLAHE_collectGarbage__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::CLAHE>(ropecv_self_)->collectGarbage();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("collectGarbage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("collectGarbage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CLAHE_CLAHE_getClipLimit__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::CLAHE>(ropecv_self_)->getClipLimit();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getClipLimit: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getClipLimit: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CLAHE_CLAHE_getTilesGridSize__0(SEXP ropecv_self_) {
  try {
    cv::Size _rv = ropecv::obj_as<cv::CLAHE>(ropecv_self_)->getTilesGridSize();
    return ropecv::wrap_size(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTilesGridSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTilesGridSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CLAHE_CLAHE_setClipLimit__0(SEXP ropecv_self_, double clipLimit) {
  try {
    ropecv::obj_as<cv::CLAHE>(ropecv_self_)->setClipLimit(clipLimit);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setClipLimit: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setClipLimit: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CLAHE_CLAHE_setTilesGridSize__0(SEXP ropecv_self_, SEXP tileGridSize) {
  try {
    ropecv::obj_as<cv::CLAHE>(ropecv_self_)->setTilesGridSize(ropecv::as_size(tileGridSize));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTilesGridSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTilesGridSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FontFace_FontFace_new__0() {
  try {
    cv::Ptr<cv::FontFace> _rv(new cv::FontFace());
    return ropecv::wrap_obj(_rv, "cvFontFace");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvFontFace: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvFontFace: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FontFace_FontFace_new__1(std::string fontPathOrName) {
  try {
    cv::Ptr<cv::FontFace> _rv(new cv::FontFace(fontPathOrName));
    return ropecv::wrap_obj(_rv, "cvFontFace");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvFontFace: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvFontFace: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FontFace_FontFace_getInstance__0(SEXP ropecv_self_) {
  try {
    std::vector<int> _o0;
    bool _rv = ropecv::obj_as<cv::FontFace>(ropecv_self_)->getInstance(_o0);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("params") = Rcpp::wrap(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getInstance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getInstance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FontFace_FontFace_getName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::FontFace>(ropecv_self_)->getName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FontFace_FontFace_set__0(SEXP ropecv_self_, std::string fontPathOrName) {
  try {
    bool _rv = ropecv::obj_as<cv::FontFace>(ropecv_self_)->set(fontPathOrName);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("set: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("set: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FontFace_FontFace_setInstance__0(SEXP ropecv_self_, SEXP params) {
  try {
    std::vector<int> _a0 = ropecv::as_int_vector(params);
    bool _rv = ropecv::obj_as<cv::FontFace>(ropecv_self_)->setInstance(_a0);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInstance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInstance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHough_GeneralizedHough_detect__0(SEXP ropecv_self_, SEXP image, SEXP positions, SEXP votes) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(positions) ? &_owned0 : ropecv::mat_ptr(positions);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(votes) ? &_owned1 : ropecv::mat_ptr(votes);
    ropecv::obj_as<cv::GeneralizedHough>(ropecv_self_)->detect(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("positions") = Rf_isNull(positions) ? ropecv::wrap_mat(std::move(_owned0)) : positions,
                                Rcpp::Named("votes") = Rf_isNull(votes) ? ropecv::wrap_mat(std::move(_owned1)) : votes);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHough_GeneralizedHough_detect__1(SEXP ropecv_self_, SEXP edges, SEXP dx, SEXP dy, SEXP positions, SEXP votes) {
  try {
    ropecv::InArg _i0(edges);
    ropecv::InArg _i1(dx);
    ropecv::InArg _i2(dy);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(positions) ? &_owned0 : ropecv::mat_ptr(positions);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(votes) ? &_owned1 : ropecv::mat_ptr(votes);
    ropecv::obj_as<cv::GeneralizedHough>(ropecv_self_)->detect(_i0.ia(), _i1.ia(), _i2.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("positions") = Rf_isNull(positions) ? ropecv::wrap_mat(std::move(_owned0)) : positions,
                                Rcpp::Named("votes") = Rf_isNull(votes) ? ropecv::wrap_mat(std::move(_owned1)) : votes);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHough_GeneralizedHough_getCannyHighThresh__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::GeneralizedHough>(ropecv_self_)->getCannyHighThresh();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCannyHighThresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCannyHighThresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHough_GeneralizedHough_getCannyLowThresh__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::GeneralizedHough>(ropecv_self_)->getCannyLowThresh();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCannyLowThresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCannyLowThresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHough_GeneralizedHough_getDp__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::GeneralizedHough>(ropecv_self_)->getDp();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDp: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDp: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHough_GeneralizedHough_getMaxBufferSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::GeneralizedHough>(ropecv_self_)->getMaxBufferSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxBufferSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxBufferSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHough_GeneralizedHough_getMinDist__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::GeneralizedHough>(ropecv_self_)->getMinDist();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinDist: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinDist: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHough_GeneralizedHough_setCannyHighThresh__0(SEXP ropecv_self_, int cannyHighThresh) {
  try {
    ropecv::obj_as<cv::GeneralizedHough>(ropecv_self_)->setCannyHighThresh(cannyHighThresh);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCannyHighThresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCannyHighThresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHough_GeneralizedHough_setCannyLowThresh__0(SEXP ropecv_self_, int cannyLowThresh) {
  try {
    ropecv::obj_as<cv::GeneralizedHough>(ropecv_self_)->setCannyLowThresh(cannyLowThresh);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCannyLowThresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCannyLowThresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHough_GeneralizedHough_setDp__0(SEXP ropecv_self_, double dp) {
  try {
    ropecv::obj_as<cv::GeneralizedHough>(ropecv_self_)->setDp(dp);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDp: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDp: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHough_GeneralizedHough_setMaxBufferSize__0(SEXP ropecv_self_, int maxBufferSize) {
  try {
    ropecv::obj_as<cv::GeneralizedHough>(ropecv_self_)->setMaxBufferSize(maxBufferSize);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxBufferSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxBufferSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHough_GeneralizedHough_setMinDist__0(SEXP ropecv_self_, double minDist) {
  try {
    ropecv::obj_as<cv::GeneralizedHough>(ropecv_self_)->setMinDist(minDist);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinDist: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinDist: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHough_GeneralizedHough_setTemplate__0(SEXP ropecv_self_, SEXP templ, SEXP templCenter) {
  try {
    ropecv::InArg _i0(templ);
    ropecv::obj_as<cv::GeneralizedHough>(ropecv_self_)->setTemplate(_i0.ia(), ropecv::as_point(templCenter));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTemplate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTemplate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHough_GeneralizedHough_setTemplate__1(SEXP ropecv_self_, SEXP edges, SEXP dx, SEXP dy, SEXP templCenter) {
  try {
    ropecv::InArg _i0(edges);
    ropecv::InArg _i1(dx);
    ropecv::InArg _i2(dy);
    ropecv::obj_as<cv::GeneralizedHough>(ropecv_self_)->setTemplate(_i0.ia(), _i1.ia(), _i2.ia(), ropecv::as_point(templCenter));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTemplate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTemplate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughBallard_GeneralizedHoughBallard_getLevels__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::GeneralizedHoughBallard>(ropecv_self_)->getLevels();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLevels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLevels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughBallard_GeneralizedHoughBallard_getVotesThreshold__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::GeneralizedHoughBallard>(ropecv_self_)->getVotesThreshold();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVotesThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVotesThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughBallard_GeneralizedHoughBallard_setLevels__0(SEXP ropecv_self_, int levels) {
  try {
    ropecv::obj_as<cv::GeneralizedHoughBallard>(ropecv_self_)->setLevels(levels);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLevels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLevels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughBallard_GeneralizedHoughBallard_setVotesThreshold__0(SEXP ropecv_self_, int votesThreshold) {
  try {
    ropecv::obj_as<cv::GeneralizedHoughBallard>(ropecv_self_)->setVotesThreshold(votesThreshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setVotesThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setVotesThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getAngleEpsilon__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->getAngleEpsilon();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAngleEpsilon: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAngleEpsilon: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getAngleStep__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->getAngleStep();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAngleStep: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAngleStep: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getAngleThresh__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->getAngleThresh();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAngleThresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAngleThresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getLevels__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->getLevels();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLevels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLevels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getMaxAngle__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->getMaxAngle();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxAngle: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxAngle: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getMaxScale__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->getMaxScale();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getMinAngle__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->getMinAngle();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinAngle: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinAngle: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getMinScale__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->getMinScale();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getPosThresh__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->getPosThresh();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPosThresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPosThresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getScaleStep__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->getScaleStep();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScaleStep: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScaleStep: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getScaleThresh__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->getScaleThresh();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScaleThresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScaleThresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getXi__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->getXi();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getXi: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getXi: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setAngleEpsilon__0(SEXP ropecv_self_, double angleEpsilon) {
  try {
    ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->setAngleEpsilon(angleEpsilon);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setAngleEpsilon: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setAngleEpsilon: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setAngleStep__0(SEXP ropecv_self_, double angleStep) {
  try {
    ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->setAngleStep(angleStep);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setAngleStep: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setAngleStep: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setAngleThresh__0(SEXP ropecv_self_, int angleThresh) {
  try {
    ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->setAngleThresh(angleThresh);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setAngleThresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setAngleThresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setLevels__0(SEXP ropecv_self_, int levels) {
  try {
    ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->setLevels(levels);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLevels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLevels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setMaxAngle__0(SEXP ropecv_self_, double maxAngle) {
  try {
    ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->setMaxAngle(maxAngle);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxAngle: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxAngle: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setMaxScale__0(SEXP ropecv_self_, double maxScale) {
  try {
    ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->setMaxScale(maxScale);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setMinAngle__0(SEXP ropecv_self_, double minAngle) {
  try {
    ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->setMinAngle(minAngle);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinAngle: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinAngle: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setMinScale__0(SEXP ropecv_self_, double minScale) {
  try {
    ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->setMinScale(minScale);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setPosThresh__0(SEXP ropecv_self_, int posThresh) {
  try {
    ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->setPosThresh(posThresh);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPosThresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPosThresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setScaleStep__0(SEXP ropecv_self_, double scaleStep) {
  try {
    ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->setScaleStep(scaleStep);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setScaleStep: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setScaleStep: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setScaleThresh__0(SEXP ropecv_self_, int scaleThresh) {
  try {
    ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->setScaleThresh(scaleThresh);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setScaleThresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setScaleThresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setXi__0(SEXP ropecv_self_, double xi) {
  try {
    ropecv::obj_as<cv::GeneralizedHoughGuil>(ropecv_self_)->setXi(xi);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setXi: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setXi: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_LineSegmentDetector_LineSegmentDetector_compareSegments__0(SEXP ropecv_self_, SEXP size, SEXP lines1, SEXP lines2, SEXP image) {
  try {
    ropecv::InArg _i0(lines1);
    ropecv::InArg _i1(lines2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(image) ? &_owned0 : ropecv::mat_ptr(image);
    int _rv = ropecv::obj_as<cv::LineSegmentDetector>(ropecv_self_)->compareSegments(ropecv::as_size(size), _i0.ia(), _i1.ia(), cv::_InputOutputArray(*_p0));
    SEXP _out = Rf_isNull(image) ? ropecv::wrap_mat(std::move(_owned0)) : image;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarInteger(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("compareSegments: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compareSegments: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_LineSegmentDetector_LineSegmentDetector_detect__0(SEXP ropecv_self_, SEXP image, SEXP lines, SEXP width, SEXP prec, SEXP nfa) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(lines) ? &_owned0 : ropecv::mat_ptr(lines);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(width) ? &_owned1 : ropecv::mat_ptr(width);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(prec) ? &_owned2 : ropecv::mat_ptr(prec);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(nfa) ? &_owned3 : ropecv::mat_ptr(nfa);
    ropecv::obj_as<cv::LineSegmentDetector>(ropecv_self_)->detect(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), cv::_OutputArray(*_p3));
    return Rcpp::List::create(Rcpp::Named("lines") = Rf_isNull(lines) ? ropecv::wrap_mat(std::move(_owned0)) : lines,
                                Rcpp::Named("width") = Rf_isNull(width) ? ropecv::wrap_mat(std::move(_owned1)) : width,
                                Rcpp::Named("prec") = Rf_isNull(prec) ? ropecv::wrap_mat(std::move(_owned2)) : prec,
                                Rcpp::Named("nfa") = Rf_isNull(nfa) ? ropecv::wrap_mat(std::move(_owned3)) : nfa);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_LineSegmentDetector_LineSegmentDetector_drawSegments__0(SEXP ropecv_self_, SEXP image, SEXP lines) {
  try {
    ropecv::InArg _i0(lines);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(image) ? &_owned0 : ropecv::mat_ptr(image);
    ropecv::obj_as<cv::LineSegmentDetector>(ropecv_self_)->drawSegments(cv::_InputOutputArray(*_p0), _i0.ia());
    return Rf_isNull(image) ? ropecv::wrap_mat(std::move(_owned0)) : image;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawSegments: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawSegments: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_new__0() {
  try {
    cv::Ptr<cv::Subdiv2D> _rv(new cv::Subdiv2D());
    return ropecv::wrap_obj(_rv, "cvSubdiv2D");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvSubdiv2D: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvSubdiv2D: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_new__1(SEXP rect) {
  try {
    cv::Ptr<cv::Subdiv2D> _rv(new cv::Subdiv2D(ropecv::as_rect(rect)));
    return ropecv::wrap_obj(_rv, "cvSubdiv2D");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvSubdiv2D: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvSubdiv2D: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_edgeDst__0(SEXP ropecv_self_, int edge) {
  try {
    cv::Point2f _o0;
    int _rv = ropecv::obj_as<cv::Subdiv2D>(ropecv_self_)->edgeDst(edge, &_o0);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("dstpt") = ropecv::wrap_point2f(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("edgeDst: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("edgeDst: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_edgeOrg__0(SEXP ropecv_self_, int edge) {
  try {
    cv::Point2f _o0;
    int _rv = ropecv::obj_as<cv::Subdiv2D>(ropecv_self_)->edgeOrg(edge, &_o0);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("orgpt") = ropecv::wrap_point2f(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("edgeOrg: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("edgeOrg: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_findNearest__0(SEXP ropecv_self_, SEXP pt) {
  try {
    cv::Point2f _o0;
    int _rv = ropecv::obj_as<cv::Subdiv2D>(ropecv_self_)->findNearest(ropecv::as_point2f(pt), &_o0);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("nearestPt") = ropecv::wrap_point2f(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("findNearest: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findNearest: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_getEdge__0(SEXP ropecv_self_, int edge, int nextEdgeType) {
  try {
    int _rv = ropecv::obj_as<cv::Subdiv2D>(ropecv_self_)->getEdge(edge, nextEdgeType);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEdge: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEdge: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_getEdgeList__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::Vec4f> _o0;
    ropecv::obj_as<cv::Subdiv2D>(ropecv_self_)->getEdgeList(_o0);
    return ropecv::wrap_vecs(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEdgeList: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEdgeList: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_getLeadingEdgeList__0(SEXP ropecv_self_) {
  try {
    std::vector<int> _o0;
    ropecv::obj_as<cv::Subdiv2D>(ropecv_self_)->getLeadingEdgeList(_o0);
    return Rcpp::wrap(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLeadingEdgeList: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLeadingEdgeList: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_getTriangleList__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::Vec6f> _o0;
    ropecv::obj_as<cv::Subdiv2D>(ropecv_self_)->getTriangleList(_o0);
    return ropecv::wrap_vecs(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTriangleList: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTriangleList: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_getVertex__0(SEXP ropecv_self_, int vertex) {
  try {
    int _o0 = 0;
    cv::Point2f _rv = ropecv::obj_as<cv::Subdiv2D>(ropecv_self_)->getVertex(vertex, &_o0);
    return Rcpp::List::create(Rcpp::Named("value") = ropecv::wrap_point2f(_rv),
                                Rcpp::Named("firstEdge") = Rf_ScalarInteger(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVertex: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVertex: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_getVoronoiFacetList__0(SEXP ropecv_self_, SEXP idx) {
  try {
    std::vector<int> _a0 = ropecv::as_int_vector(idx);
    std::vector<std::vector<cv::Point2f>> _o0;
    std::vector<cv::Point2f> _o1;
    ropecv::obj_as<cv::Subdiv2D>(ropecv_self_)->getVoronoiFacetList(_a0, _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("facetList") = ropecv::wrap_points2f_list(_o0),
                                Rcpp::Named("facetCenters") = ropecv::wrap_points2f(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVoronoiFacetList: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVoronoiFacetList: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_initDelaunay__0(SEXP ropecv_self_, SEXP rect) {
  try {
    ropecv::obj_as<cv::Subdiv2D>(ropecv_self_)->initDelaunay(ropecv::as_rect(rect));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("initDelaunay: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("initDelaunay: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_insert__0(SEXP ropecv_self_, SEXP pt) {
  try {
    int _rv = ropecv::obj_as<cv::Subdiv2D>(ropecv_self_)->insert(ropecv::as_point2f(pt));
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("insert: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("insert: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_insert__1(SEXP ropecv_self_, SEXP ptvec) {
  try {
    std::vector<cv::Point2f> _a0 = ropecv::as_points2f(ptvec);
    ropecv::obj_as<cv::Subdiv2D>(ropecv_self_)->insert(_a0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("insert: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("insert: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_locate__0(SEXP ropecv_self_, SEXP pt) {
  try {
    int _o0 = 0;
    int _o1 = 0;
    int _rv = ropecv::obj_as<cv::Subdiv2D>(ropecv_self_)->locate(ropecv::as_point2f(pt), _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("edge") = Rf_ScalarInteger(_o0),
                                Rcpp::Named("vertex") = Rf_ScalarInteger(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("locate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("locate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_nextEdge__0(SEXP ropecv_self_, int edge) {
  try {
    int _rv = ropecv::obj_as<cv::Subdiv2D>(ropecv_self_)->nextEdge(edge);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("nextEdge: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("nextEdge: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_rotateEdge__0(SEXP ropecv_self_, int edge, int rotate) {
  try {
    int _rv = ropecv::obj_as<cv::Subdiv2D>(ropecv_self_)->rotateEdge(edge, rotate);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("rotateEdge: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("rotateEdge: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Subdiv2D_Subdiv2D_symEdge__0(SEXP ropecv_self_, int edge) {
  try {
    int _rv = ropecv::obj_as<cv::Subdiv2D>(ropecv_self_)->symEdge(edge);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("symEdge: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("symEdge: %s", e.what());
  }
}
