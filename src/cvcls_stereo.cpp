// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/stereo.hpp>

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_create__0(int numDisparities, int blockSize) {
  try {
    cv::Ptr<cv::StereoBM> _rv = cv::StereoBM::create(numDisparities, blockSize);
    return ropecv::wrap_obj(_rv, "cvStereoBM");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_getPreFilterCap__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoBM>(ropecv_self_)->getPreFilterCap();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPreFilterCap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPreFilterCap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_getPreFilterSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoBM>(ropecv_self_)->getPreFilterSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPreFilterSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPreFilterSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_getPreFilterType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoBM>(ropecv_self_)->getPreFilterType();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPreFilterType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPreFilterType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_getROI1__0(SEXP ropecv_self_) {
  try {
    cv::Rect _rv = ropecv::obj_as<cv::StereoBM>(ropecv_self_)->getROI1();
    return ropecv::wrap_rect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getROI1: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getROI1: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_getROI2__0(SEXP ropecv_self_) {
  try {
    cv::Rect _rv = ropecv::obj_as<cv::StereoBM>(ropecv_self_)->getROI2();
    return ropecv::wrap_rect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getROI2: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getROI2: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_getSmallerBlockSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoBM>(ropecv_self_)->getSmallerBlockSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSmallerBlockSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSmallerBlockSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_getTextureThreshold__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoBM>(ropecv_self_)->getTextureThreshold();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTextureThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTextureThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_getUniquenessRatio__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoBM>(ropecv_self_)->getUniquenessRatio();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUniquenessRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUniquenessRatio: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_setPreFilterCap__0(SEXP ropecv_self_, int preFilterCap) {
  try {
    ropecv::obj_as<cv::StereoBM>(ropecv_self_)->setPreFilterCap(preFilterCap);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPreFilterCap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPreFilterCap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_setPreFilterSize__0(SEXP ropecv_self_, int preFilterSize) {
  try {
    ropecv::obj_as<cv::StereoBM>(ropecv_self_)->setPreFilterSize(preFilterSize);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPreFilterSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPreFilterSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_setPreFilterType__0(SEXP ropecv_self_, int preFilterType) {
  try {
    ropecv::obj_as<cv::StereoBM>(ropecv_self_)->setPreFilterType(preFilterType);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPreFilterType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPreFilterType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_setROI1__0(SEXP ropecv_self_, SEXP roi1) {
  try {
    ropecv::obj_as<cv::StereoBM>(ropecv_self_)->setROI1(ropecv::as_rect(roi1));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setROI1: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setROI1: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_setROI2__0(SEXP ropecv_self_, SEXP roi2) {
  try {
    ropecv::obj_as<cv::StereoBM>(ropecv_self_)->setROI2(ropecv::as_rect(roi2));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setROI2: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setROI2: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_setSmallerBlockSize__0(SEXP ropecv_self_, int blockSize) {
  try {
    ropecv::obj_as<cv::StereoBM>(ropecv_self_)->setSmallerBlockSize(blockSize);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSmallerBlockSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSmallerBlockSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_setTextureThreshold__0(SEXP ropecv_self_, int textureThreshold) {
  try {
    ropecv::obj_as<cv::StereoBM>(ropecv_self_)->setTextureThreshold(textureThreshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTextureThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTextureThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoBM_StereoBM_setUniquenessRatio__0(SEXP ropecv_self_, int uniquenessRatio) {
  try {
    ropecv::obj_as<cv::StereoBM>(ropecv_self_)->setUniquenessRatio(uniquenessRatio);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUniquenessRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUniquenessRatio: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoMatcher_StereoMatcher_compute__0(SEXP ropecv_self_, SEXP left, SEXP right, SEXP dst) {
  try {
    ropecv::InArg _i0(left);
    ropecv::InArg _i1(right);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::StereoMatcher>(ropecv_self_)->compute(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("compute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoMatcher_StereoMatcher_getBlockSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoMatcher>(ropecv_self_)->getBlockSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBlockSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBlockSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoMatcher_StereoMatcher_getDisp12MaxDiff__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoMatcher>(ropecv_self_)->getDisp12MaxDiff();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDisp12MaxDiff: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDisp12MaxDiff: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoMatcher_StereoMatcher_getMinDisparity__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoMatcher>(ropecv_self_)->getMinDisparity();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinDisparity: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinDisparity: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoMatcher_StereoMatcher_getNumDisparities__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoMatcher>(ropecv_self_)->getNumDisparities();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNumDisparities: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNumDisparities: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoMatcher_StereoMatcher_getSpeckleRange__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoMatcher>(ropecv_self_)->getSpeckleRange();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSpeckleRange: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSpeckleRange: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoMatcher_StereoMatcher_getSpeckleWindowSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoMatcher>(ropecv_self_)->getSpeckleWindowSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSpeckleWindowSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSpeckleWindowSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoMatcher_StereoMatcher_setBlockSize__0(SEXP ropecv_self_, int blockSize) {
  try {
    ropecv::obj_as<cv::StereoMatcher>(ropecv_self_)->setBlockSize(blockSize);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBlockSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBlockSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoMatcher_StereoMatcher_setDisp12MaxDiff__0(SEXP ropecv_self_, int disp12MaxDiff) {
  try {
    ropecv::obj_as<cv::StereoMatcher>(ropecv_self_)->setDisp12MaxDiff(disp12MaxDiff);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDisp12MaxDiff: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDisp12MaxDiff: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoMatcher_StereoMatcher_setMinDisparity__0(SEXP ropecv_self_, int minDisparity) {
  try {
    ropecv::obj_as<cv::StereoMatcher>(ropecv_self_)->setMinDisparity(minDisparity);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinDisparity: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinDisparity: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoMatcher_StereoMatcher_setNumDisparities__0(SEXP ropecv_self_, int numDisparities) {
  try {
    ropecv::obj_as<cv::StereoMatcher>(ropecv_self_)->setNumDisparities(numDisparities);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNumDisparities: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNumDisparities: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoMatcher_StereoMatcher_setSpeckleRange__0(SEXP ropecv_self_, int speckleRange) {
  try {
    ropecv::obj_as<cv::StereoMatcher>(ropecv_self_)->setSpeckleRange(speckleRange);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSpeckleRange: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSpeckleRange: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoMatcher_StereoMatcher_setSpeckleWindowSize__0(SEXP ropecv_self_, int speckleWindowSize) {
  try {
    ropecv::obj_as<cv::StereoMatcher>(ropecv_self_)->setSpeckleWindowSize(speckleWindowSize);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSpeckleWindowSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSpeckleWindowSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoSGBM_StereoSGBM_create__0(int minDisparity, int numDisparities, int blockSize, int P1, int P2, int disp12MaxDiff, int preFilterCap, int uniquenessRatio, int speckleWindowSize, int speckleRange, int mode) {
  try {
    cv::Ptr<cv::StereoSGBM> _rv = cv::StereoSGBM::create(minDisparity, numDisparities, blockSize, P1, P2, disp12MaxDiff, preFilterCap, uniquenessRatio, speckleWindowSize, speckleRange, mode);
    return ropecv::wrap_obj(_rv, "cvStereoSGBM");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoSGBM_StereoSGBM_getMode__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoSGBM>(ropecv_self_)->getMode();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoSGBM_StereoSGBM_getP1__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoSGBM>(ropecv_self_)->getP1();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getP1: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getP1: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoSGBM_StereoSGBM_getP2__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoSGBM>(ropecv_self_)->getP2();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getP2: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getP2: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoSGBM_StereoSGBM_getPreFilterCap__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoSGBM>(ropecv_self_)->getPreFilterCap();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPreFilterCap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPreFilterCap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoSGBM_StereoSGBM_getUniquenessRatio__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::StereoSGBM>(ropecv_self_)->getUniquenessRatio();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUniquenessRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUniquenessRatio: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoSGBM_StereoSGBM_setMode__0(SEXP ropecv_self_, int mode) {
  try {
    ropecv::obj_as<cv::StereoSGBM>(ropecv_self_)->setMode(mode);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoSGBM_StereoSGBM_setP1__0(SEXP ropecv_self_, int P1) {
  try {
    ropecv::obj_as<cv::StereoSGBM>(ropecv_self_)->setP1(P1);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setP1: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setP1: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoSGBM_StereoSGBM_setP2__0(SEXP ropecv_self_, int P2) {
  try {
    ropecv::obj_as<cv::StereoSGBM>(ropecv_self_)->setP2(P2);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setP2: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setP2: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoSGBM_StereoSGBM_setPreFilterCap__0(SEXP ropecv_self_, int preFilterCap) {
  try {
    ropecv::obj_as<cv::StereoSGBM>(ropecv_self_)->setPreFilterCap(preFilterCap);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPreFilterCap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPreFilterCap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_StereoSGBM_StereoSGBM_setUniquenessRatio__0(SEXP ropecv_self_, int uniquenessRatio) {
  try {
    ropecv::obj_as<cv::StereoSGBM>(ropecv_self_)->setUniquenessRatio(uniquenessRatio);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUniquenessRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUniquenessRatio: %s", e.what());
  }
}
