// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/core.hpp>
#include <opencv2/core/persistence.hpp>

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_new__0() {
  try {
    cv::Ptr<cv::FileNode> _rv(new cv::FileNode());
    return ropecv::wrap_obj(_rv, "cvFileNode");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvFileNode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvFileNode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_empty__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::FileNode>(ropecv_self_)->empty();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("empty: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("empty: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_isInt__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::FileNode>(ropecv_self_)->isInt();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isInt: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isInt: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_isMap__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::FileNode>(ropecv_self_)->isMap();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_isNamed__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::FileNode>(ropecv_self_)->isNamed();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isNamed: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isNamed: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_isNone__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::FileNode>(ropecv_self_)->isNone();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isNone: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isNone: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_isReal__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::FileNode>(ropecv_self_)->isReal();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isReal: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isReal: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_isSeq__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::FileNode>(ropecv_self_)->isSeq();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isSeq: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isSeq: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_isString__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::FileNode>(ropecv_self_)->isString();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isString: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isString: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_keys__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::String> _rv = ropecv::obj_as<cv::FileNode>(ropecv_self_)->keys();
    return Rcpp::wrap(std::vector<std::string>(_rv.begin(), _rv.end()));
  } catch (const cv::Exception& e) {
    Rcpp::stop("keys: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("keys: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_mat__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::FileNode>(ropecv_self_)->mat();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("mat: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("mat: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_name__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::FileNode>(ropecv_self_)->name();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("name: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("name: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_rawSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::FileNode>(ropecv_self_)->rawSize();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("rawSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("rawSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_real__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::FileNode>(ropecv_self_)->real();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("real: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("real: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_size__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::FileNode>(ropecv_self_)->size();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("size: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("size: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_string__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::FileNode>(ropecv_self_)->string();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("string: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("string: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileNode_FileNode_type__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::FileNode>(ropecv_self_)->type();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("type: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("type: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_new__0() {
  try {
    cv::Ptr<cv::FileStorage> _rv(new cv::FileStorage());
    return ropecv::wrap_obj(_rv, "cvFileStorage");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvFileStorage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvFileStorage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_new__1(std::string filename, int flags, std::string encoding) {
  try {
    cv::Ptr<cv::FileStorage> _rv(new cv::FileStorage(filename, flags, encoding));
    return ropecv::wrap_obj(_rv, "cvFileStorage");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvFileStorage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvFileStorage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_endWriteStruct__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::FileStorage>(ropecv_self_)->endWriteStruct();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("endWriteStruct: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("endWriteStruct: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_getFirstTopLevelNode__0(SEXP ropecv_self_) {
  try {
    cv::FileNode _rv = ropecv::obj_as<cv::FileStorage>(ropecv_self_)->getFirstTopLevelNode();
    return ropecv::wrap_obj(cv::Ptr<cv::FileNode>(std::make_shared<cv::FileNode>(_rv)), "cvFileNode");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFirstTopLevelNode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFirstTopLevelNode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_getFormat__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::FileStorage>(ropecv_self_)->getFormat();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFormat: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFormat: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_isOpened__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::FileStorage>(ropecv_self_)->isOpened();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isOpened: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isOpened: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_open__0(SEXP ropecv_self_, std::string filename, int flags, std::string encoding) {
  try {
    bool _rv = ropecv::obj_as<cv::FileStorage>(ropecv_self_)->open(filename, flags, encoding);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("open: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("open: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_release__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::FileStorage>(ropecv_self_)->release();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("release: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("release: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_releaseAndGetString__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::FileStorage>(ropecv_self_)->releaseAndGetString();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("releaseAndGetString: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("releaseAndGetString: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_root__0(SEXP ropecv_self_, int streamidx) {
  try {
    cv::FileNode _rv = ropecv::obj_as<cv::FileStorage>(ropecv_self_)->root(streamidx);
    return ropecv::wrap_obj(cv::Ptr<cv::FileNode>(std::make_shared<cv::FileNode>(_rv)), "cvFileNode");
  } catch (const cv::Exception& e) {
    Rcpp::stop("root: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("root: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_startWriteStruct__0(SEXP ropecv_self_, std::string name, int flags, std::string typeName) {
  try {
    ropecv::obj_as<cv::FileStorage>(ropecv_self_)->startWriteStruct(name, flags, typeName);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("startWriteStruct: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("startWriteStruct: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_write__0(SEXP ropecv_self_, std::string name, int val) {
  try {
    ropecv::obj_as<cv::FileStorage>(ropecv_self_)->write(name, val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_write__1(SEXP ropecv_self_, std::string name, double val) {
  try {
    ropecv::obj_as<cv::FileStorage>(ropecv_self_)->write(name, val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_write__2(SEXP ropecv_self_, std::string name, std::string val) {
  try {
    ropecv::obj_as<cv::FileStorage>(ropecv_self_)->write(name, val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_write__3(SEXP ropecv_self_, std::string name, SEXP val) {
  try {
    cv::Mat _m0 = Rf_isNull(val) ? cv::Mat() : *ropecv::mat_ptr(val);
    ropecv::obj_as<cv::FileStorage>(ropecv_self_)->write(name, _m0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_write__4(SEXP ropecv_self_, std::string name, SEXP val) {
  try {
    std::vector<cv::String> _a0 = ropecv::as_vec_string(val);
    ropecv::obj_as<cv::FileStorage>(ropecv_self_)->write(name, _a0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FileStorage_FileStorage_writeComment__0(SEXP ropecv_self_, std::string comment, bool append) {
  try {
    ropecv::obj_as<cv::FileStorage>(ropecv_self_)->writeComment(comment, append);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("writeComment: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("writeComment: %s", e.what());
  }
}
