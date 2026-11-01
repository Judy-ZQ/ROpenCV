// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/utility.hpp
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/core.hpp>
#include <opencv2/core/utility.hpp>

// [[Rcpp::export]]
SEXP cv_addSamplesDataSearchPath(std::string path) {
  try {
    ::cv::samples::addSamplesDataSearchPath(path);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("addSamplesDataSearchPath: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("addSamplesDataSearchPath: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_addSamplesDataSearchSubDirectory(std::string subdir) {
  try {
    ::cv::samples::addSamplesDataSearchSubDirectory(subdir);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("addSamplesDataSearchSubDirectory: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("addSamplesDataSearchSubDirectory: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_checkHardwareSupport(int feature) {
  try {
    bool _rv = ::cv::checkHardwareSupport(feature);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("checkHardwareSupport: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("checkHardwareSupport: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findFile(std::string relative_path, bool required, bool silentMode) {
  try {
    std::string _rv = ::cv::samples::findFile(relative_path, required, silentMode);
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("findFile: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findFile: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findFileOrKeep(std::string relative_path, bool silentMode) {
  try {
    std::string _rv = ::cv::samples::findFileOrKeep(relative_path, silentMode);
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("findFileOrKeep: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findFileOrKeep: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getBuildInformation() {
  try {
    std::string _rv = ::cv::getBuildInformation();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBuildInformation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBuildInformation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getCPUFeaturesLine() {
  try {
    std::string _rv = ::cv::getCPUFeaturesLine();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCPUFeaturesLine: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCPUFeaturesLine: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getCPUTickCount() {
  try {
    double _rv = ::cv::getCPUTickCount();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCPUTickCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCPUTickCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getDefaultAlgorithmHint() {
  try {
    int _rv = ::cv::getDefaultAlgorithmHint();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultAlgorithmHint: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultAlgorithmHint: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getHardwareFeatureName(int feature) {
  try {
    std::string _rv = ::cv::getHardwareFeatureName(feature);
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getHardwareFeatureName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getHardwareFeatureName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getNumThreads() {
  try {
    int _rv = ::cv::getNumThreads();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNumThreads: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNumThreads: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getNumberOfCPUs() {
  try {
    int _rv = ::cv::getNumberOfCPUs();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNumberOfCPUs: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNumberOfCPUs: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getThreadNum() {
  try {
    int _rv = ::cv::getThreadNum();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getThreadNum: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getThreadNum: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getTickCount() {
  try {
    double _rv = ::cv::getTickCount();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTickCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTickCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getTickFrequency() {
  try {
    double _rv = ::cv::getTickFrequency();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTickFrequency: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTickFrequency: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getVersionMajor() {
  try {
    int _rv = ::cv::getVersionMajor();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVersionMajor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVersionMajor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getVersionMinor() {
  try {
    int _rv = ::cv::getVersionMinor();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVersionMinor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVersionMinor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getVersionRevision() {
  try {
    int _rv = ::cv::getVersionRevision();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVersionRevision: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVersionRevision: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getVersionString() {
  try {
    std::string _rv = ::cv::getVersionString();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVersionString: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVersionString: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_glob(std::string pattern, SEXP result, bool recursive) {
  try {
    std::vector<cv::String> _o0;
    if (!Rf_isNull(result)) _o0 = ropecv::as_vec_string(result);
    ::cv::glob(pattern, _o0, recursive);
    return Rcpp::List::create(Rcpp::Named("result") = Rcpp::wrap(std::vector<std::string>(_o0.begin(), _o0.end())));
  } catch (const cv::Exception& e) {
    Rcpp::stop("glob: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("glob: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_setNumThreads(int nthreads) {
  try {
    ::cv::setNumThreads(nthreads);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNumThreads: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNumThreads: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_setUseOptimized(bool onoff) {
  try {
    ::cv::setUseOptimized(onoff);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseOptimized: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseOptimized: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_useOptimized() {
  try {
    bool _rv = ::cv::useOptimized();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("useOptimized: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("useOptimized: %s", e.what());
  }
}
