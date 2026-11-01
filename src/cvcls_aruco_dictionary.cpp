// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/objdetect/aruco_dictionary.hpp>

// [[Rcpp::export]]
SEXP cv_aruco_Dictionary_Dictionary_new__0() {
  try {
    cv::Ptr<cv::aruco::Dictionary> _rv(new cv::aruco::Dictionary());
    return ropecv::wrap_obj(_rv, "cvDictionary");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvDictionary: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvDictionary: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_Dictionary_Dictionary_new__1(SEXP bytesList, int markerSize, int maxcorr) {
  try {
    cv::Mat _m0 = Rf_isNull(bytesList) ? cv::Mat() : *ropecv::mat_ptr(bytesList);
    cv::Ptr<cv::aruco::Dictionary> _rv(new cv::aruco::Dictionary(_m0, markerSize, maxcorr));
    return ropecv::wrap_obj(_rv, "cvDictionary");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvDictionary: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvDictionary: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_Dictionary_Dictionary_getByteListFromBits__0(SEXP bits) {
  try {
    cv::Mat _m0 = Rf_isNull(bits) ? cv::Mat() : *ropecv::mat_ptr(bits);
    cv::Mat _rv = cv::aruco::Dictionary::getByteListFromBits(_m0);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getByteListFromBits: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getByteListFromBits: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_Dictionary_Dictionary_getBitsFromByteList__1(SEXP byteList, int markerSize) {
  try {
    cv::Mat _m0 = Rf_isNull(byteList) ? cv::Mat() : *ropecv::mat_ptr(byteList);
    cv::Mat _rv = cv::aruco::Dictionary::getBitsFromByteList(_m0, markerSize);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBitsFromByteList: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBitsFromByteList: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_Dictionary_Dictionary_generateImageMarker__0(SEXP ropecv_self_, int id, int sidePixels, int borderBits, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::aruco::Dictionary>(ropecv_self_)->generateImageMarker(id, sidePixels, cv::_OutputArray(*_p0), borderBits);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("generateImageMarker: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("generateImageMarker: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_Dictionary_Dictionary_getDistanceToId__0(SEXP ropecv_self_, SEXP bits, int id, bool allRotations) {
  try {
    ropecv::InArg _i0(bits);
    int _rv = ropecv::obj_as<cv::aruco::Dictionary>(ropecv_self_)->getDistanceToId(_i0.ia(), id, allRotations);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDistanceToId: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDistanceToId: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_Dictionary_Dictionary_identify__0(SEXP ropecv_self_, SEXP onlyBits, double maxCorrectionRate) {
  try {
    cv::Mat _m0 = Rf_isNull(onlyBits) ? cv::Mat() : *ropecv::mat_ptr(onlyBits);
    int _o0 = 0;
    int _o1 = 0;
    bool _rv = ropecv::obj_as<cv::aruco::Dictionary>(ropecv_self_)->identify(_m0, _o0, _o1, maxCorrectionRate);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("idx") = Rf_ScalarInteger(_o0),
                                Rcpp::Named("rotation") = Rf_ScalarInteger(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("identify: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("identify: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_Dictionary_Dictionary_readDictionary__0(SEXP ropecv_self_, SEXP fn) {
  try {
    cv::FileNode _s0 = Rf_isNull(fn) ? cv::FileNode() : *ropecv::obj_as<cv::FileNode>(fn);
    bool _rv = ropecv::obj_as<cv::aruco::Dictionary>(ropecv_self_)->readDictionary(_s0);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("readDictionary: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readDictionary: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_Dictionary_Dictionary_writeDictionary__0(SEXP ropecv_self_, SEXP fs, std::string name) {
  try {
    cv::FileStorage& _r0 = *ropecv::obj_as<cv::FileStorage>(fs);
    ropecv::obj_as<cv::aruco::Dictionary>(ropecv_self_)->writeDictionary(_r0, name);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("writeDictionary: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("writeDictionary: %s", e.what());
  }
}
