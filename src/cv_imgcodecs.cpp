// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/imgcodecs.hpp
#include "ropecv.h"
#include <opencv2/imgcodecs.hpp>

// [[Rcpp::export]]
SEXP cv_haveImageReader(std::string filename) {
  try {
    bool _rv = ::cv::haveImageReader(filename);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("haveImageReader: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("haveImageReader: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_haveImageWriter(std::string filename) {
  try {
    bool _rv = ::cv::haveImageWriter(filename);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("haveImageWriter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("haveImageWriter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_imcount(std::string filename, int flags) {
  try {
    int _rv = ::cv::imcount(filename, flags);
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("imcount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("imcount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_imdecode(SEXP buf, int flags) {
  try {
    ropecv::InArg _i0(buf);
    cv::Mat _rv = ::cv::imdecode(_i0.ia(), flags);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("imdecode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("imdecode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_imdecodemulti(SEXP buf, int flags, SEXP range) {
  try {
    ropecv::InArg _i0(buf);
    std::vector<cv::Mat> _o0;
    bool _rv = ::cv::imdecodemulti(_i0.ia(), flags, _o0, ropecv::as_range(range));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("mats") = ropecv::wrap_mat_vector(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("imdecodemulti: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("imdecodemulti: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_imencode(std::string ext, SEXP img, SEXP params) {
  try {
    ropecv::InArg _i0(img);
    std::vector<int> _a1 = ropecv::as_int_vector(params);
    std::vector<uchar> _o0;
    bool _rv = ::cv::imencode(ext, _i0.ia(), _o0, _a1);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("buf") = ropecv::wrap_raw_vector(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("imencode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("imencode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_imread__0(std::string filename, int flags) {
  try {
    cv::Mat _rv = ::cv::imread(filename, flags);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("imread: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("imread: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_imread__1(std::string filename, int flags, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::imread(filename, cv::_OutputArray(*_p0), flags);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("imread: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("imread: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_imreadmulti__0(std::string filename, int flags) {
  try {
    std::vector<cv::Mat> _o0;
    bool _rv = ::cv::imreadmulti(filename, _o0, flags);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("mats") = ropecv::wrap_mat_vector(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("imreadmulti: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("imreadmulti: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_imreadmulti__1(std::string filename, int start, int count, int flags) {
  try {
    std::vector<cv::Mat> _o0;
    bool _rv = ::cv::imreadmulti(filename, _o0, start, count, flags);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("mats") = ropecv::wrap_mat_vector(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("imreadmulti: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("imreadmulti: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_imwrite(std::string filename, SEXP img, SEXP params) {
  try {
    ropecv::InArg _i0(img);
    std::vector<int> _a1 = ropecv::as_int_vector(params);
    bool _rv = ::cv::imwrite(filename, _i0.ia(), _a1);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("imwrite: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("imwrite: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_imwritemulti(std::string filename, SEXP img, SEXP params) {
  try {
    ropecv::InArg _i0(img);
    std::vector<int> _a1 = ropecv::as_int_vector(params);
    bool _rv = ::cv::imwritemulti(filename, _i0.ia(), _a1);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("imwritemulti: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("imwritemulti: %s", e.what());
  }
}
