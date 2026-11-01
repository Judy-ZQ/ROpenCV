// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/videoio.hpp>

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_new__0() {
  try {
    cv::Ptr<cv::VideoCapture> _rv(new cv::VideoCapture());
    return ropecv::wrap_obj(_rv, "cvVideoCapture");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvVideoCapture: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvVideoCapture: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_new__1(std::string filename, int apiPreference) {
  try {
    cv::Ptr<cv::VideoCapture> _rv(new cv::VideoCapture(filename, apiPreference));
    return ropecv::wrap_obj(_rv, "cvVideoCapture");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvVideoCapture: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvVideoCapture: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_new__2(int index, int apiPreference) {
  try {
    cv::Ptr<cv::VideoCapture> _rv(new cv::VideoCapture(index, apiPreference));
    return ropecv::wrap_obj(_rv, "cvVideoCapture");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvVideoCapture: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvVideoCapture: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_new__3(std::string filename, int apiPreference, SEXP params) {
  try {
    std::vector<int> _a0 = ropecv::as_int_vector(params);
    cv::Ptr<cv::VideoCapture> _rv(new cv::VideoCapture(filename, apiPreference, _a0));
    return ropecv::wrap_obj(_rv, "cvVideoCapture");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvVideoCapture: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvVideoCapture: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_new__4(int index, int apiPreference, SEXP params) {
  try {
    std::vector<int> _a0 = ropecv::as_int_vector(params);
    cv::Ptr<cv::VideoCapture> _rv(new cv::VideoCapture(index, apiPreference, _a0));
    return ropecv::wrap_obj(_rv, "cvVideoCapture");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvVideoCapture: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvVideoCapture: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_get__0(SEXP ropecv_self_, int propId) {
  try {
    double _rv = ropecv::obj_as<cv::VideoCapture>(ropecv_self_)->get(propId);
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("get: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("get: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_getBackendName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::VideoCapture>(ropecv_self_)->getBackendName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBackendName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBackendName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_getExceptionMode__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::VideoCapture>(ropecv_self_)->getExceptionMode();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getExceptionMode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getExceptionMode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_grab__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::VideoCapture>(ropecv_self_)->grab();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("grab: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("grab: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_isOpened__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::VideoCapture>(ropecv_self_)->isOpened();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isOpened: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isOpened: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_open__0(SEXP ropecv_self_, std::string filename, int apiPreference) {
  try {
    bool _rv = ropecv::obj_as<cv::VideoCapture>(ropecv_self_)->open(filename, apiPreference);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("open: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("open: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_open__1(SEXP ropecv_self_, int index, int apiPreference) {
  try {
    bool _rv = ropecv::obj_as<cv::VideoCapture>(ropecv_self_)->open(index, apiPreference);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("open: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("open: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_open__2(SEXP ropecv_self_, std::string filename, int apiPreference, SEXP params) {
  try {
    std::vector<int> _a0 = ropecv::as_int_vector(params);
    bool _rv = ropecv::obj_as<cv::VideoCapture>(ropecv_self_)->open(filename, apiPreference, _a0);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("open: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("open: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_open__3(SEXP ropecv_self_, int index, int apiPreference, SEXP params) {
  try {
    std::vector<int> _a0 = ropecv::as_int_vector(params);
    bool _rv = ropecv::obj_as<cv::VideoCapture>(ropecv_self_)->open(index, apiPreference, _a0);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("open: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("open: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_read__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ropecv::obj_as<cv::VideoCapture>(ropecv_self_)->read(cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("read: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("read: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_release__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::VideoCapture>(ropecv_self_)->release();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("release: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("release: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_retrieve__0(SEXP ropecv_self_, SEXP dst, int flag) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ropecv::obj_as<cv::VideoCapture>(ropecv_self_)->retrieve(cv::_OutputArray(*_p0), flag);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("retrieve: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("retrieve: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_set__0(SEXP ropecv_self_, int propId, double value) {
  try {
    bool _rv = ropecv::obj_as<cv::VideoCapture>(ropecv_self_)->set(propId, value);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("set: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("set: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoCapture_VideoCapture_setExceptionMode__0(SEXP ropecv_self_, bool enable) {
  try {
    ropecv::obj_as<cv::VideoCapture>(ropecv_self_)->setExceptionMode(enable);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setExceptionMode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setExceptionMode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoWriter_VideoWriter_new__0() {
  try {
    cv::Ptr<cv::VideoWriter> _rv(new cv::VideoWriter());
    return ropecv::wrap_obj(_rv, "cvVideoWriter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvVideoWriter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvVideoWriter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoWriter_VideoWriter_new__1(std::string filename, int fourcc, double fps, SEXP frameSize, bool isColor) {
  try {
    cv::Ptr<cv::VideoWriter> _rv(new cv::VideoWriter(filename, fourcc, fps, ropecv::as_size(frameSize), isColor));
    return ropecv::wrap_obj(_rv, "cvVideoWriter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvVideoWriter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvVideoWriter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoWriter_VideoWriter_new__2(std::string filename, int fourcc, double fps, SEXP frameSize, SEXP params) {
  try {
    std::vector<int> _a0 = ropecv::as_int_vector(params);
    cv::Ptr<cv::VideoWriter> _rv(new cv::VideoWriter(filename, fourcc, fps, ropecv::as_size(frameSize), _a0));
    return ropecv::wrap_obj(_rv, "cvVideoWriter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvVideoWriter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvVideoWriter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoWriter_VideoWriter_new__3(std::string filename, int apiPreference, int fourcc, double fps, SEXP frameSize, bool isColor) {
  try {
    cv::Ptr<cv::VideoWriter> _rv(new cv::VideoWriter(filename, apiPreference, fourcc, fps, ropecv::as_size(frameSize), isColor));
    return ropecv::wrap_obj(_rv, "cvVideoWriter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvVideoWriter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvVideoWriter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoWriter_VideoWriter_new__4(std::string filename, int apiPreference, int fourcc, double fps, SEXP frameSize, SEXP params) {
  try {
    std::vector<int> _a0 = ropecv::as_int_vector(params);
    cv::Ptr<cv::VideoWriter> _rv(new cv::VideoWriter(filename, apiPreference, fourcc, fps, ropecv::as_size(frameSize), _a0));
    return ropecv::wrap_obj(_rv, "cvVideoWriter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvVideoWriter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvVideoWriter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoWriter_VideoWriter_fourcc__0(std::string c1, std::string c2, std::string c3, std::string c4) {
  try {
    int _rv = cv::VideoWriter::fourcc((c1.empty() ? 0 : (char)c1[0]), (c2.empty() ? 0 : (char)c2[0]), (c3.empty() ? 0 : (char)c3[0]), (c4.empty() ? 0 : (char)c4[0]));
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("fourcc: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fourcc: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoWriter_VideoWriter_get__0(SEXP ropecv_self_, int propId) {
  try {
    double _rv = ropecv::obj_as<cv::VideoWriter>(ropecv_self_)->get(propId);
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("get: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("get: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoWriter_VideoWriter_getBackendName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::VideoWriter>(ropecv_self_)->getBackendName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBackendName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBackendName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoWriter_VideoWriter_isOpened__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::VideoWriter>(ropecv_self_)->isOpened();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isOpened: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isOpened: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoWriter_VideoWriter_open__0(SEXP ropecv_self_, std::string filename, int fourcc, double fps, SEXP frameSize, bool isColor) {
  try {
    bool _rv = ropecv::obj_as<cv::VideoWriter>(ropecv_self_)->open(filename, fourcc, fps, ropecv::as_size(frameSize), isColor);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("open: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("open: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoWriter_VideoWriter_open__1(SEXP ropecv_self_, std::string filename, int fourcc, double fps, SEXP frameSize, SEXP params) {
  try {
    std::vector<int> _a0 = ropecv::as_int_vector(params);
    bool _rv = ropecv::obj_as<cv::VideoWriter>(ropecv_self_)->open(filename, fourcc, fps, ropecv::as_size(frameSize), _a0);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("open: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("open: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoWriter_VideoWriter_open__2(SEXP ropecv_self_, std::string filename, int apiPreference, int fourcc, double fps, SEXP frameSize, bool isColor) {
  try {
    bool _rv = ropecv::obj_as<cv::VideoWriter>(ropecv_self_)->open(filename, apiPreference, fourcc, fps, ropecv::as_size(frameSize), isColor);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("open: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("open: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoWriter_VideoWriter_open__3(SEXP ropecv_self_, std::string filename, int apiPreference, int fourcc, double fps, SEXP frameSize, SEXP params) {
  try {
    std::vector<int> _a0 = ropecv::as_int_vector(params);
    bool _rv = ropecv::obj_as<cv::VideoWriter>(ropecv_self_)->open(filename, apiPreference, fourcc, fps, ropecv::as_size(frameSize), _a0);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("open: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("open: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoWriter_VideoWriter_release__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::VideoWriter>(ropecv_self_)->release();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("release: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("release: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoWriter_VideoWriter_set__0(SEXP ropecv_self_, int propId, double value) {
  try {
    bool _rv = ropecv::obj_as<cv::VideoWriter>(ropecv_self_)->set(propId, value);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("set: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("set: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VideoWriter_VideoWriter_write__0(SEXP ropecv_self_, SEXP image) {
  try {
    ropecv::InArg _i0(image);
    ropecv::obj_as<cv::VideoWriter>(ropecv_self_)->write(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}
