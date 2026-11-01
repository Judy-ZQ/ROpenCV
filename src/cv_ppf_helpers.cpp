// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/ppf_helpers.hpp
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/surface_matching.hpp>
#include <opencv2/surface_matching/ppf_helpers.hpp>

// [[Rcpp::export]]
SEXP cv_addNoisePC(SEXP pc, double scale) {
  try {
    cv::Mat _m0 = Rf_isNull(pc) ? cv::Mat() : *ropecv::mat_ptr(pc);
    cv::Mat _rv = ::cv::ppf_match_3d::addNoisePC(_m0, scale);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("addNoisePC: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("addNoisePC: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_computeBboxStd(SEXP pc, SEXP xRange, SEXP yRange, SEXP zRange) {
  try {
    cv::Mat _m0 = Rf_isNull(pc) ? cv::Mat() : *ropecv::mat_ptr(pc);
    cv::Vec2f _o0;
    if (!Rf_isNull(xRange)) _o0 = ropecv::as_vec2f(xRange);
    cv::Vec2f _o1;
    if (!Rf_isNull(yRange)) _o1 = ropecv::as_vec2f(yRange);
    cv::Vec2f _o2;
    if (!Rf_isNull(zRange)) _o2 = ropecv::as_vec2f(zRange);
    ::cv::ppf_match_3d::computeBboxStd(_m0, _o0, _o1, _o2);
    return Rcpp::List::create(Rcpp::Named("xRange") = ropecv::wrap_vec2f(_o0),
                                Rcpp::Named("yRange") = ropecv::wrap_vec2f(_o1),
                                Rcpp::Named("zRange") = ropecv::wrap_vec2f(_o2));
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeBboxStd: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeBboxStd: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_computeNormalsPC3d(SEXP PC, int NumNeighbors, bool FlipViewpoint, SEXP viewpoint) {
  try {
    cv::Mat _m0 = Rf_isNull(PC) ? cv::Mat() : *ropecv::mat_ptr(PC);
    cv::Mat _o0;
    int _rv = ::cv::ppf_match_3d::computeNormalsPC3d(_m0, _o0, NumNeighbors, FlipViewpoint, ropecv::as_vec<float, 3>(viewpoint));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("PCNormals") = ropecv::wrap_mat(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeNormalsPC3d: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeNormalsPC3d: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getRandomPose(SEXP Pose) {
  try {
    cv::Matx44d _o0;
    if (!Rf_isNull(Pose)) _o0 = ropecv::as_matx<double, 4, 4>(Pose);
    ::cv::ppf_match_3d::getRandomPose(_o0);
    return Rcpp::List::create(Rcpp::Named("Pose") = ropecv::wrap_matx<double, 4, 4>(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRandomPose: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRandomPose: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_loadPLYSimple(std::string fileName, int withNormals) {
  try {
    cv::Mat _rv = ::cv::ppf_match_3d::loadPLYSimple(fileName.c_str(), withNormals);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("loadPLYSimple: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("loadPLYSimple: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_normalizePCCoeff(SEXP pc, double scale) {
  try {
    cv::Mat _m0 = Rf_isNull(pc) ? cv::Mat() : *ropecv::mat_ptr(pc);
    float _o0 = 0;
    float _o1 = 0;
    float _o2 = 0;
    float _o3 = 0;
    float _o4 = 0;
    cv::Mat _rv = ::cv::ppf_match_3d::normalizePCCoeff(_m0, (float)scale, &_o0, &_o1, &_o2, &_o3, &_o4);
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("Cx"), Rf_ScalarReal((double)_o0));
    Rf_setAttrib(_out, Rf_install("Cy"), Rf_ScalarReal((double)_o1));
    Rf_setAttrib(_out, Rf_install("Cz"), Rf_ScalarReal((double)_o2));
    Rf_setAttrib(_out, Rf_install("MinVal"), Rf_ScalarReal((double)_o3));
    Rf_setAttrib(_out, Rf_install("MaxVal"), Rf_ScalarReal((double)_o4));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("normalizePCCoeff: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("normalizePCCoeff: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_samplePCByQuantization(SEXP pc, SEXP xrange, SEXP yrange, SEXP zrange, double sample_step_relative, int weightByCenter) {
  try {
    cv::Mat _m0 = Rf_isNull(pc) ? cv::Mat() : *ropecv::mat_ptr(pc);
    cv::Vec2f _o0;
    if (!Rf_isNull(xrange)) _o0 = ropecv::as_vec2f(xrange);
    cv::Vec2f _o1;
    if (!Rf_isNull(yrange)) _o1 = ropecv::as_vec2f(yrange);
    cv::Vec2f _o2;
    if (!Rf_isNull(zrange)) _o2 = ropecv::as_vec2f(zrange);
    cv::Mat _rv = ::cv::ppf_match_3d::samplePCByQuantization(_m0, _o0, _o1, _o2, (float)sample_step_relative, weightByCenter);
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("xrange"), ropecv::wrap_vec2f(_o0));
    Rf_setAttrib(_out, Rf_install("yrange"), ropecv::wrap_vec2f(_o1));
    Rf_setAttrib(_out, Rf_install("zrange"), ropecv::wrap_vec2f(_o2));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("samplePCByQuantization: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("samplePCByQuantization: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_samplePCUniform(SEXP PC, int sampleStep) {
  try {
    cv::Mat _m0 = Rf_isNull(PC) ? cv::Mat() : *ropecv::mat_ptr(PC);
    cv::Mat _rv = ::cv::ppf_match_3d::samplePCUniform(_m0, sampleStep);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("samplePCUniform: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("samplePCUniform: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_samplePCUniformInd(SEXP PC, int sampleStep, SEXP indices) {
  try {
    cv::Mat _m0 = Rf_isNull(PC) ? cv::Mat() : *ropecv::mat_ptr(PC);
    std::vector<int> _o0;
    if (!Rf_isNull(indices)) _o0 = ropecv::as_int_vector(indices);
    cv::Mat _rv = ::cv::ppf_match_3d::samplePCUniformInd(_m0, sampleStep, _o0);
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("indices"), Rcpp::wrap(_o0));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("samplePCUniformInd: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("samplePCUniformInd: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_transPCCoeff(SEXP pc, double scale, double Cx, double Cy, double Cz, double MinVal, double MaxVal) {
  try {
    cv::Mat _m0 = Rf_isNull(pc) ? cv::Mat() : *ropecv::mat_ptr(pc);
    cv::Mat _rv = ::cv::ppf_match_3d::transPCCoeff(_m0, (float)scale, (float)Cx, (float)Cy, (float)Cz, (float)MinVal, (float)MaxVal);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("transPCCoeff: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("transPCCoeff: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_transformPCPose(SEXP pc, SEXP Pose) {
  try {
    cv::Mat _m0 = Rf_isNull(pc) ? cv::Mat() : *ropecv::mat_ptr(pc);
    cv::Mat _rv = ::cv::ppf_match_3d::transformPCPose(_m0, ropecv::as_matx<double, 4, 4>(Pose));
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("transformPCPose: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("transformPCPose: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_writePLY(SEXP PC, std::string fileName) {
  try {
    cv::Mat _m0 = Rf_isNull(PC) ? cv::Mat() : *ropecv::mat_ptr(PC);
    ::cv::ppf_match_3d::writePLY(_m0, fileName.c_str());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("writePLY: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("writePLY: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_writePLYVisibleNormals(SEXP PC, std::string fileName) {
  try {
    cv::Mat _m0 = Rf_isNull(PC) ? cv::Mat() : *ropecv::mat_ptr(PC);
    ::cv::ppf_match_3d::writePLYVisibleNormals(_m0, fileName.c_str());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("writePLYVisibleNormals: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("writePLYVisibleNormals: %s", e.what());
  }
}
