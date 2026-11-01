// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/objdetect/aruco_board.hpp>

// [[Rcpp::export]]
SEXP cv_aruco_Board_Board_new__0(SEXP objPoints, SEXP dictionary, SEXP ids) {
  try {
    ropecv::InArg _i0(objPoints);
    cv::aruco::Dictionary _s1 = Rf_isNull(dictionary) ? cv::aruco::Dictionary() : *ropecv::obj_as<cv::aruco::Dictionary>(dictionary);
    ropecv::InArg _i2(ids);
    cv::Ptr<cv::aruco::Board> _rv(new cv::aruco::Board(_i0.ia(), _s1, _i2.ia()));
    return ropecv::wrap_obj(_rv, "cvBoard");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvBoard: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvBoard: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_Board_Board_generateImage__0(SEXP ropecv_self_, SEXP outSize, int marginSize, int borderBits, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::aruco::Board>(ropecv_self_)->generateImage(ropecv::as_size(outSize), cv::_OutputArray(*_p0), marginSize, borderBits);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("generateImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("generateImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_Board_Board_getDictionary__0(SEXP ropecv_self_) {
  try {
    cv::aruco::Dictionary _rv = ropecv::obj_as<cv::aruco::Board>(ropecv_self_)->getDictionary();
    return ropecv::wrap_obj(cv::Ptr<cv::aruco::Dictionary>(std::make_shared<cv::aruco::Dictionary>(_rv)), "cvDictionary");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDictionary: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDictionary: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_Board_Board_getIds__0(SEXP ropecv_self_) {
  try {
    std::vector<int> _rv = ropecv::obj_as<cv::aruco::Board>(ropecv_self_)->getIds();
    return Rcpp::wrap(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getIds: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getIds: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_Board_Board_getObjPoints__0(SEXP ropecv_self_) {
  try {
    std::vector<std::vector<cv::Point3f>> _rv = ropecv::obj_as<cv::aruco::Board>(ropecv_self_)->getObjPoints();
    return ropecv::wrap_points3f_list(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getObjPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getObjPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_Board_Board_getRightBottomCorner__0(SEXP ropecv_self_) {
  try {
    cv::Point3f _rv = ropecv::obj_as<cv::aruco::Board>(ropecv_self_)->getRightBottomCorner();
    return ropecv::wrap_point3f(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRightBottomCorner: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRightBottomCorner: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_Board_Board_matchImagePoints__0(SEXP ropecv_self_, SEXP detectedCorners, SEXP detectedIds, SEXP objPoints, SEXP imgPoints) {
  try {
    ropecv::InArg _i0(detectedCorners);
    ropecv::InArg _i1(detectedIds);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(objPoints) ? &_owned0 : ropecv::mat_ptr(objPoints);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(imgPoints) ? &_owned1 : ropecv::mat_ptr(imgPoints);
    ropecv::obj_as<cv::aruco::Board>(ropecv_self_)->matchImagePoints(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("objPoints") = Rf_isNull(objPoints) ? ropecv::wrap_mat(std::move(_owned0)) : objPoints,
                                Rcpp::Named("imgPoints") = Rf_isNull(imgPoints) ? ropecv::wrap_mat(std::move(_owned1)) : imgPoints);
  } catch (const cv::Exception& e) {
    Rcpp::stop("matchImagePoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("matchImagePoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoBoard_CharucoBoard_new__0(SEXP size, double squareLength, double markerLength, SEXP dictionary, SEXP ids) {
  try {
    cv::aruco::Dictionary _s0 = Rf_isNull(dictionary) ? cv::aruco::Dictionary() : *ropecv::obj_as<cv::aruco::Dictionary>(dictionary);
    ropecv::InArg _i1(ids);
    cv::Ptr<cv::aruco::CharucoBoard> _rv(new cv::aruco::CharucoBoard(ropecv::as_size(size), (float)squareLength, (float)markerLength, _s0, _i1.ia()));
    return ropecv::wrap_obj(_rv, "cvCharucoBoard");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvCharucoBoard: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvCharucoBoard: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoBoard_CharucoBoard_checkCharucoCornersCollinear__0(SEXP ropecv_self_, SEXP charucoIds) {
  try {
    ropecv::InArg _i0(charucoIds);
    bool _rv = ropecv::obj_as<cv::aruco::CharucoBoard>(ropecv_self_)->checkCharucoCornersCollinear(_i0.ia());
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("checkCharucoCornersCollinear: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("checkCharucoCornersCollinear: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoBoard_CharucoBoard_getChessboardCorners__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::Point3f> _rv = ropecv::obj_as<cv::aruco::CharucoBoard>(ropecv_self_)->getChessboardCorners();
    return ropecv::wrap_vec_point3f(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getChessboardCorners: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getChessboardCorners: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoBoard_CharucoBoard_getChessboardSize__0(SEXP ropecv_self_) {
  try {
    cv::Size _rv = ropecv::obj_as<cv::aruco::CharucoBoard>(ropecv_self_)->getChessboardSize();
    return ropecv::wrap_size(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getChessboardSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getChessboardSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoBoard_CharucoBoard_getLegacyPattern__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::aruco::CharucoBoard>(ropecv_self_)->getLegacyPattern();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLegacyPattern: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLegacyPattern: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoBoard_CharucoBoard_getMarkerLength__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::aruco::CharucoBoard>(ropecv_self_)->getMarkerLength();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMarkerLength: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMarkerLength: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoBoard_CharucoBoard_getSquareLength__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::aruco::CharucoBoard>(ropecv_self_)->getSquareLength();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSquareLength: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSquareLength: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoBoard_CharucoBoard_setLegacyPattern__0(SEXP ropecv_self_, bool legacyPattern) {
  try {
    ropecv::obj_as<cv::aruco::CharucoBoard>(ropecv_self_)->setLegacyPattern(legacyPattern);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLegacyPattern: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLegacyPattern: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_GridBoard_GridBoard_new__0(SEXP size, double markerLength, double markerSeparation, SEXP dictionary, SEXP ids) {
  try {
    cv::aruco::Dictionary _s0 = Rf_isNull(dictionary) ? cv::aruco::Dictionary() : *ropecv::obj_as<cv::aruco::Dictionary>(dictionary);
    ropecv::InArg _i1(ids);
    cv::Ptr<cv::aruco::GridBoard> _rv(new cv::aruco::GridBoard(ropecv::as_size(size), (float)markerLength, (float)markerSeparation, _s0, _i1.ia()));
    return ropecv::wrap_obj(_rv, "cvGridBoard");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvGridBoard: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvGridBoard: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_GridBoard_GridBoard_getGridSize__0(SEXP ropecv_self_) {
  try {
    cv::Size _rv = ropecv::obj_as<cv::aruco::GridBoard>(ropecv_self_)->getGridSize();
    return ropecv::wrap_size(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGridSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGridSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_GridBoard_GridBoard_getMarkerLength__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::aruco::GridBoard>(ropecv_self_)->getMarkerLength();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMarkerLength: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMarkerLength: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_GridBoard_GridBoard_getMarkerSeparation__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::aruco::GridBoard>(ropecv_self_)->getMarkerSeparation();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMarkerSeparation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMarkerSeparation: %s", e.what());
  }
}
