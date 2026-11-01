// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/face/facerec.hpp>

// [[Rcpp::export]]
SEXP cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getEigenValues__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::face::BasicFaceRecognizer>(ropecv_self_)->getEigenValues();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEigenValues: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEigenValues: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getEigenVectors__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::face::BasicFaceRecognizer>(ropecv_self_)->getEigenVectors();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEigenVectors: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEigenVectors: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getLabels__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::face::BasicFaceRecognizer>(ropecv_self_)->getLabels();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLabels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLabels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getMean__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::face::BasicFaceRecognizer>(ropecv_self_)->getMean();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMean: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMean: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getNumComponents__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::face::BasicFaceRecognizer>(ropecv_self_)->getNumComponents();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNumComponents: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNumComponents: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getProjections__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::Mat> _rv = ropecv::obj_as<cv::face::BasicFaceRecognizer>(ropecv_self_)->getProjections();
    return ropecv::wrap_mat_vector(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getProjections: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getProjections: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::face::BasicFaceRecognizer>(ropecv_self_)->getThreshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_BasicFaceRecognizer_BasicFaceRecognizer_setNumComponents__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::face::BasicFaceRecognizer>(ropecv_self_)->setNumComponents(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNumComponents: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNumComponents: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_BasicFaceRecognizer_BasicFaceRecognizer_setThreshold__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::face::BasicFaceRecognizer>(ropecv_self_)->setThreshold(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_EigenFaceRecognizer_EigenFaceRecognizer_create__0(int num_components, double threshold) {
  try {
    cv::Ptr<cv::face::EigenFaceRecognizer> _rv = cv::face::EigenFaceRecognizer::create(num_components, threshold);
    return ropecv::wrap_obj(_rv, "cvEigenFaceRecognizer");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_FisherFaceRecognizer_FisherFaceRecognizer_create__0(int num_components, double threshold) {
  try {
    cv::Ptr<cv::face::FisherFaceRecognizer> _rv = cv::face::FisherFaceRecognizer::create(num_components, threshold);
    return ropecv::wrap_obj(_rv, "cvFisherFaceRecognizer");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_create__0(int radius, int neighbors, int grid_x, int grid_y, double threshold) {
  try {
    cv::Ptr<cv::face::LBPHFaceRecognizer> _rv = cv::face::LBPHFaceRecognizer::create(radius, neighbors, grid_x, grid_y, threshold);
    return ropecv::wrap_obj(_rv, "cvLBPHFaceRecognizer");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getGridX__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::face::LBPHFaceRecognizer>(ropecv_self_)->getGridX();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGridX: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGridX: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getGridY__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::face::LBPHFaceRecognizer>(ropecv_self_)->getGridY();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGridY: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGridY: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getHistograms__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::Mat> _rv = ropecv::obj_as<cv::face::LBPHFaceRecognizer>(ropecv_self_)->getHistograms();
    return ropecv::wrap_mat_vector(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getHistograms: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getHistograms: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getLabels__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::face::LBPHFaceRecognizer>(ropecv_self_)->getLabels();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLabels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLabels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getNeighbors__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::face::LBPHFaceRecognizer>(ropecv_self_)->getNeighbors();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNeighbors: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNeighbors: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getRadius__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::face::LBPHFaceRecognizer>(ropecv_self_)->getRadius();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::face::LBPHFaceRecognizer>(ropecv_self_)->getThreshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setGridX__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::face::LBPHFaceRecognizer>(ropecv_self_)->setGridX(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setGridX: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setGridX: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setGridY__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::face::LBPHFaceRecognizer>(ropecv_self_)->setGridY(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setGridY: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setGridY: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setNeighbors__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::face::LBPHFaceRecognizer>(ropecv_self_)->setNeighbors(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNeighbors: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNeighbors: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setRadius__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::face::LBPHFaceRecognizer>(ropecv_self_)->setRadius(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setThreshold__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::face::LBPHFaceRecognizer>(ropecv_self_)->setThreshold(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setThreshold: %s", e.what());
  }
}
