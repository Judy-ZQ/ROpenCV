// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/core.hpp
#include "ropecv.h"
#include <opencv2/core.hpp>

// [[Rcpp::export]]
SEXP cv_LUT(SEXP src, SEXP lut, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(lut);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::LUT(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("LUT: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("LUT: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Mahalanobis(SEXP v1, SEXP v2, SEXP icovar) {
  try {
    ropecv::InArg _i0(v1);
    ropecv::InArg _i1(v2);
    ropecv::InArg _i2(icovar);
    double _rv = ::cv::Mahalanobis(_i0.ia(), _i1.ia(), _i2.ia());
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("Mahalanobis: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("Mahalanobis: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_PCABackProject(SEXP data, SEXP mean, SEXP eigenvectors, SEXP dst) {
  try {
    ropecv::InArg _i0(data);
    ropecv::InArg _i1(mean);
    ropecv::InArg _i2(eigenvectors);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::PCABackProject(_i0.ia(), _i1.ia(), _i2.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("PCABackProject: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("PCABackProject: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_PCACompute__0(SEXP data, SEXP mean, int maxComponents, SEXP eigenvectors) {
  try {
    ropecv::InArg _i0(data);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(mean) ? &_owned0 : ropecv::mat_ptr(mean);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(eigenvectors) ? &_owned1 : ropecv::mat_ptr(eigenvectors);
    ::cv::PCACompute(_i0.ia(), cv::_InputOutputArray(*_p0), cv::_OutputArray(*_p1), maxComponents);
    return Rcpp::List::create(Rcpp::Named("mean") = Rf_isNull(mean) ? ropecv::wrap_mat(std::move(_owned0)) : mean,
                                Rcpp::Named("eigenvectors") = Rf_isNull(eigenvectors) ? ropecv::wrap_mat(std::move(_owned1)) : eigenvectors);
  } catch (const cv::Exception& e) {
    Rcpp::stop("PCACompute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("PCACompute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_PCACompute__1(SEXP data, SEXP mean, double retainedVariance, SEXP eigenvectors) {
  try {
    ropecv::InArg _i0(data);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(mean) ? &_owned0 : ropecv::mat_ptr(mean);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(eigenvectors) ? &_owned1 : ropecv::mat_ptr(eigenvectors);
    ::cv::PCACompute(_i0.ia(), cv::_InputOutputArray(*_p0), cv::_OutputArray(*_p1), retainedVariance);
    return Rcpp::List::create(Rcpp::Named("mean") = Rf_isNull(mean) ? ropecv::wrap_mat(std::move(_owned0)) : mean,
                                Rcpp::Named("eigenvectors") = Rf_isNull(eigenvectors) ? ropecv::wrap_mat(std::move(_owned1)) : eigenvectors);
  } catch (const cv::Exception& e) {
    Rcpp::stop("PCACompute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("PCACompute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_PCACompute__2(SEXP data, SEXP mean, int maxComponents, SEXP eigenvectors, SEXP eigenvalues) {
  try {
    ropecv::InArg _i0(data);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(mean) ? &_owned0 : ropecv::mat_ptr(mean);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(eigenvectors) ? &_owned1 : ropecv::mat_ptr(eigenvectors);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(eigenvalues) ? &_owned2 : ropecv::mat_ptr(eigenvalues);
    ::cv::PCACompute(_i0.ia(), cv::_InputOutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), maxComponents);
    return Rcpp::List::create(Rcpp::Named("mean") = Rf_isNull(mean) ? ropecv::wrap_mat(std::move(_owned0)) : mean,
                                Rcpp::Named("eigenvectors") = Rf_isNull(eigenvectors) ? ropecv::wrap_mat(std::move(_owned1)) : eigenvectors,
                                Rcpp::Named("eigenvalues") = Rf_isNull(eigenvalues) ? ropecv::wrap_mat(std::move(_owned2)) : eigenvalues);
  } catch (const cv::Exception& e) {
    Rcpp::stop("PCACompute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("PCACompute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_PCACompute__3(SEXP data, SEXP mean, double retainedVariance, SEXP eigenvectors, SEXP eigenvalues) {
  try {
    ropecv::InArg _i0(data);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(mean) ? &_owned0 : ropecv::mat_ptr(mean);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(eigenvectors) ? &_owned1 : ropecv::mat_ptr(eigenvectors);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(eigenvalues) ? &_owned2 : ropecv::mat_ptr(eigenvalues);
    ::cv::PCACompute(_i0.ia(), cv::_InputOutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), retainedVariance);
    return Rcpp::List::create(Rcpp::Named("mean") = Rf_isNull(mean) ? ropecv::wrap_mat(std::move(_owned0)) : mean,
                                Rcpp::Named("eigenvectors") = Rf_isNull(eigenvectors) ? ropecv::wrap_mat(std::move(_owned1)) : eigenvectors,
                                Rcpp::Named("eigenvalues") = Rf_isNull(eigenvalues) ? ropecv::wrap_mat(std::move(_owned2)) : eigenvalues);
  } catch (const cv::Exception& e) {
    Rcpp::stop("PCACompute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("PCACompute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_PCAProject(SEXP data, SEXP mean, SEXP eigenvectors, SEXP dst) {
  try {
    ropecv::InArg _i0(data);
    ropecv::InArg _i1(mean);
    ropecv::InArg _i2(eigenvectors);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::PCAProject(_i0.ia(), _i1.ia(), _i2.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("PCAProject: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("PCAProject: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_PSNR(SEXP src1, SEXP src2, double R) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    double _rv = ::cv::PSNR(_i0.ia(), _i1.ia(), R);
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("PSNR: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("PSNR: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SVBackSubst(SEXP w, SEXP u, SEXP vt, SEXP rhs, SEXP dst) {
  try {
    ropecv::InArg _i0(w);
    ropecv::InArg _i1(u);
    ropecv::InArg _i2(vt);
    ropecv::InArg _i3(rhs);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::SVBackSubst(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("SVBackSubst: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("SVBackSubst: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SVDecomp(SEXP src, int flags, SEXP w, SEXP u, SEXP vt) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(w) ? &_owned0 : ropecv::mat_ptr(w);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(u) ? &_owned1 : ropecv::mat_ptr(u);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(vt) ? &_owned2 : ropecv::mat_ptr(vt);
    ::cv::SVDecomp(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), flags);
    return Rcpp::List::create(Rcpp::Named("w") = Rf_isNull(w) ? ropecv::wrap_mat(std::move(_owned0)) : w,
                                Rcpp::Named("u") = Rf_isNull(u) ? ropecv::wrap_mat(std::move(_owned1)) : u,
                                Rcpp::Named("vt") = Rf_isNull(vt) ? ropecv::wrap_mat(std::move(_owned2)) : vt);
  } catch (const cv::Exception& e) {
    Rcpp::stop("SVDecomp: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("SVDecomp: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_absdiff(SEXP src1, SEXP src2, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::absdiff(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("absdiff: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("absdiff: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_add(SEXP src1, SEXP src2, SEXP mask, int dtype, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::add(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), _i2.ia(), dtype);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("add: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("add: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_addWeighted(SEXP src1, double alpha, SEXP src2, double beta, double gamma, int dtype, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::addWeighted(_i0.ia(), alpha, _i1.ia(), beta, gamma, cv::_OutputArray(*_p0), dtype);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("addWeighted: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("addWeighted: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_batchDistance(SEXP src1, SEXP src2, int dtype, int normType, int K, SEXP mask, int update, bool crosscheck, SEXP dist, SEXP nidx) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dist) ? &_owned0 : ropecv::mat_ptr(dist);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(nidx) ? &_owned1 : ropecv::mat_ptr(nidx);
    ::cv::batchDistance(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), dtype, cv::_OutputArray(*_p1), normType, K, _i2.ia(), update, crosscheck);
    return Rcpp::List::create(Rcpp::Named("dist") = Rf_isNull(dist) ? ropecv::wrap_mat(std::move(_owned0)) : dist,
                                Rcpp::Named("nidx") = Rf_isNull(nidx) ? ropecv::wrap_mat(std::move(_owned1)) : nidx);
  } catch (const cv::Exception& e) {
    Rcpp::stop("batchDistance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("batchDistance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bitwise_and(SEXP src1, SEXP src2, SEXP mask, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::bitwise_and(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), _i2.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("bitwise_and: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("bitwise_and: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bitwise_not(SEXP src, SEXP mask, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::bitwise_not(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("bitwise_not: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("bitwise_not: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bitwise_or(SEXP src1, SEXP src2, SEXP mask, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::bitwise_or(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), _i2.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("bitwise_or: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("bitwise_or: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bitwise_xor(SEXP src1, SEXP src2, SEXP mask, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::bitwise_xor(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), _i2.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("bitwise_xor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("bitwise_xor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_borderInterpolate(int p, int len, int borderType) {
  try {
    int _rv = ::cv::borderInterpolate(p, len, borderType);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("borderInterpolate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("borderInterpolate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_broadcast(SEXP src, SEXP shape, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(shape);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::broadcast(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("broadcast: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("broadcast: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_calcCovarMatrix(SEXP samples, SEXP mean, int flags, int ctype, SEXP covar) {
  try {
    ropecv::InArg _i0(samples);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(covar) ? &_owned0 : ropecv::mat_ptr(covar);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(mean) ? &_owned1 : ropecv::mat_ptr(mean);
    ::cv::calcCovarMatrix(_i0.ia(), cv::_OutputArray(*_p0), cv::_InputOutputArray(*_p1), flags, ctype);
    return Rcpp::List::create(Rcpp::Named("covar") = Rf_isNull(covar) ? ropecv::wrap_mat(std::move(_owned0)) : covar,
                                Rcpp::Named("mean") = Rf_isNull(mean) ? ropecv::wrap_mat(std::move(_owned1)) : mean);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calcCovarMatrix: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calcCovarMatrix: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_cartToPolar(SEXP x, SEXP y, bool angleInDegrees, SEXP magnitude, SEXP angle) {
  try {
    ropecv::InArg _i0(x);
    ropecv::InArg _i1(y);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(magnitude) ? &_owned0 : ropecv::mat_ptr(magnitude);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(angle) ? &_owned1 : ropecv::mat_ptr(angle);
    ::cv::cartToPolar(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), angleInDegrees);
    return Rcpp::List::create(Rcpp::Named("magnitude") = Rf_isNull(magnitude) ? ropecv::wrap_mat(std::move(_owned0)) : magnitude,
                                Rcpp::Named("angle") = Rf_isNull(angle) ? ropecv::wrap_mat(std::move(_owned1)) : angle);
  } catch (const cv::Exception& e) {
    Rcpp::stop("cartToPolar: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cartToPolar: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_checkRange(SEXP a, bool quiet, double minVal, double maxVal) {
  try {
    ropecv::InArg _i0(a);
    cv::Point _o0;
    bool _rv = ::cv::checkRange(_i0.ia(), quiet, &_o0, minVal, maxVal);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("pos") = ropecv::wrap_point(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("checkRange: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("checkRange: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_compare(SEXP src1, SEXP src2, int cmpop, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::compare(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), cmpop);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("compare: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compare: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_completeSymm(SEXP m, bool lowerToUpper) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(m) ? &_owned0 : ropecv::mat_ptr(m);
    ::cv::completeSymm(cv::_InputOutputArray(*_p0), lowerToUpper);
    return Rf_isNull(m) ? ropecv::wrap_mat(std::move(_owned0)) : m;
  } catch (const cv::Exception& e) {
    Rcpp::stop("completeSymm: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("completeSymm: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_convertFp16(SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::convertFp16(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("convertFp16: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("convertFp16: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_convertScaleAbs(SEXP src, double alpha, double beta, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::convertScaleAbs(_i0.ia(), cv::_OutputArray(*_p0), alpha, beta);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("convertScaleAbs: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("convertScaleAbs: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_copyMakeBorder(SEXP src, int top, int bottom, int left, int right, int borderType, SEXP value, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::copyMakeBorder(_i0.ia(), cv::_OutputArray(*_p0), top, bottom, left, right, borderType, ropecv::as_scalar(value));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("copyMakeBorder: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("copyMakeBorder: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_copyTo(SEXP src, SEXP mask, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::copyTo(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("copyTo: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("copyTo: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_countNonZero(SEXP src) {
  try {
    ropecv::InArg _i0(src);
    int _rv = ::cv::countNonZero(_i0.ia());
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("countNonZero: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("countNonZero: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dct(SEXP src, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::dct(_i0.ia(), cv::_OutputArray(*_p0), flags);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("dct: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("dct: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_determinant(SEXP mtx) {
  try {
    ropecv::InArg _i0(mtx);
    double _rv = ::cv::determinant(_i0.ia());
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("determinant: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("determinant: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dft(SEXP src, int flags, int nonzeroRows, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::dft(_i0.ia(), cv::_OutputArray(*_p0), flags, nonzeroRows);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("dft: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("dft: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_divide__0(double scale, SEXP src2, int dtype, SEXP dst) {
  try {
    ropecv::InArg _i0(src2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::divide(scale, _i0.ia(), cv::_OutputArray(*_p0), dtype);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("divide: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("divide: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_divide__1(SEXP src1, SEXP src2, double scale, int dtype, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::divide(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), scale, dtype);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("divide: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("divide: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_eigen(SEXP src, SEXP eigenvalues, SEXP eigenvectors) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(eigenvalues) ? &_owned0 : ropecv::mat_ptr(eigenvalues);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(eigenvectors) ? &_owned1 : ropecv::mat_ptr(eigenvectors);
    bool _rv = ::cv::eigen(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("eigenvalues") = Rf_isNull(eigenvalues) ? ropecv::wrap_mat(std::move(_owned0)) : eigenvalues,
                                Rcpp::Named("eigenvectors") = Rf_isNull(eigenvectors) ? ropecv::wrap_mat(std::move(_owned1)) : eigenvectors);
  } catch (const cv::Exception& e) {
    Rcpp::stop("eigen: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("eigen: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_eigenNonSymmetric(SEXP src, SEXP eigenvalues, SEXP eigenvectors) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(eigenvalues) ? &_owned0 : ropecv::mat_ptr(eigenvalues);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(eigenvectors) ? &_owned1 : ropecv::mat_ptr(eigenvectors);
    ::cv::eigenNonSymmetric(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("eigenvalues") = Rf_isNull(eigenvalues) ? ropecv::wrap_mat(std::move(_owned0)) : eigenvalues,
                                Rcpp::Named("eigenvectors") = Rf_isNull(eigenvectors) ? ropecv::wrap_mat(std::move(_owned1)) : eigenvectors);
  } catch (const cv::Exception& e) {
    Rcpp::stop("eigenNonSymmetric: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("eigenNonSymmetric: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_exp(SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::exp(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("exp: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("exp: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_extractChannel(SEXP src, int coi, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::extractChannel(_i0.ia(), cv::_OutputArray(*_p0), coi);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("extractChannel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("extractChannel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findNonZero(SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::findNonZero(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("findNonZero: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findNonZero: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_finiteMask(SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::finiteMask(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("finiteMask: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("finiteMask: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_flip(SEXP src, int flipCode, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::flip(_i0.ia(), cv::_OutputArray(*_p0), flipCode);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("flip: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("flip: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_flipND(SEXP src, int axis, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::flipND(_i0.ia(), cv::_OutputArray(*_p0), axis);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("flipND: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("flipND: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_gemm(SEXP src1, SEXP src2, double alpha, SEXP src3, double beta, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    ropecv::InArg _i2(src3);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::gemm(_i0.ia(), _i1.ia(), alpha, _i2.ia(), beta, cv::_OutputArray(*_p0), flags);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("gemm: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("gemm: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getOptimalDFTSize(int vecsize) {
  try {
    int _rv = ::cv::getOptimalDFTSize(vecsize);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getOptimalDFTSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getOptimalDFTSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hasNonZero(SEXP src) {
  try {
    ropecv::InArg _i0(src);
    bool _rv = ::cv::hasNonZero(_i0.ia());
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("hasNonZero: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("hasNonZero: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hconcat(SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::hconcat(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("hconcat: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("hconcat: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_idct(SEXP src, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::idct(_i0.ia(), cv::_OutputArray(*_p0), flags);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("idct: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("idct: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_idft(SEXP src, int flags, int nonzeroRows, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::idft(_i0.ia(), cv::_OutputArray(*_p0), flags, nonzeroRows);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("idft: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("idft: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_inRange(SEXP src, SEXP lowerb, SEXP upperb, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(lowerb);
    ropecv::InArg _i2(upperb);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::inRange(_i0.ia(), _i1.ia(), _i2.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("inRange: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("inRange: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_insertChannel(SEXP src, SEXP dst, int coi) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::insertChannel(_i0.ia(), cv::_InputOutputArray(*_p0), coi);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("insertChannel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("insertChannel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_invert(SEXP src, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    double _rv = ::cv::invert(_i0.ia(), cv::_OutputArray(*_p0), flags);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarReal(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("invert: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("invert: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kmeans(SEXP data, int K, SEXP bestLabels, SEXP criteria, int attempts, int flags, SEXP centers) {
  try {
    ropecv::InArg _i0(data);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(bestLabels) ? &_owned0 : ropecv::mat_ptr(bestLabels);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(centers) ? &_owned1 : ropecv::mat_ptr(centers);
    double _rv = ::cv::kmeans(_i0.ia(), K, cv::_InputOutputArray(*_p0), ropecv::as_termcriteria(criteria), attempts, flags, cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("bestLabels") = Rf_isNull(bestLabels) ? ropecv::wrap_mat(std::move(_owned0)) : bestLabels,
                                Rcpp::Named("centers") = Rf_isNull(centers) ? ropecv::wrap_mat(std::move(_owned1)) : centers);
  } catch (const cv::Exception& e) {
    Rcpp::stop("kmeans: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("kmeans: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_log(SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::log(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("log: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("log: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_magnitude(SEXP x, SEXP y, SEXP dst) {
  try {
    ropecv::InArg _i0(x);
    ropecv::InArg _i1(y);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::magnitude(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("magnitude: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("magnitude: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_max(SEXP src1, SEXP src2, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::max(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("max: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("max: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mean(SEXP src, SEXP mask) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(mask);
    cv::Scalar _rv = ::cv::mean(_i0.ia(), _i1.ia());
    return ropecv::wrap_scalar(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("mean: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("mean: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_meanStdDev(SEXP src, SEXP mask, SEXP mean, SEXP stddev) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(mean) ? &_owned0 : ropecv::mat_ptr(mean);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(stddev) ? &_owned1 : ropecv::mat_ptr(stddev);
    ::cv::meanStdDev(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), _i1.ia());
    return Rcpp::List::create(Rcpp::Named("mean") = Rf_isNull(mean) ? ropecv::wrap_mat(std::move(_owned0)) : mean,
                                Rcpp::Named("stddev") = Rf_isNull(stddev) ? ropecv::wrap_mat(std::move(_owned1)) : stddev);
  } catch (const cv::Exception& e) {
    Rcpp::stop("meanStdDev: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("meanStdDev: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_merge(SEXP mv, SEXP dst) {
  try {
    ropecv::InArg _i0(mv);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::merge(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("merge: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("merge: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_min(SEXP src1, SEXP src2, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::min(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("min: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("min: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_minMaxLoc(SEXP src, SEXP mask) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(mask);
    double _o0 = 0;
    double _o1 = 0;
    cv::Point _o2;
    cv::Point _o3;
    ::cv::minMaxLoc(_i0.ia(), &_o0, &_o1, &_o2, &_o3, _i1.ia());
    return Rcpp::List::create(Rcpp::Named("minVal") = Rf_ScalarReal(_o0),
                                Rcpp::Named("maxVal") = Rf_ScalarReal(_o1),
                                Rcpp::Named("minLoc") = ropecv::wrap_point(_o2),
                                Rcpp::Named("maxLoc") = ropecv::wrap_point(_o3));
  } catch (const cv::Exception& e) {
    Rcpp::stop("minMaxLoc: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("minMaxLoc: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mixChannels(SEXP src, SEXP fromTo, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    std::vector<int> _a1 = ropecv::as_int_vector(fromTo);
    std::vector<cv::Mat> _o0;
    if (!Rf_isNull(dst)) _o0 = ropecv::as_mat_vector(dst);
    ::cv::mixChannels(_i0.ia(), cv::_InputOutputArray(_o0), _a1);
    return ropecv::wrap_mat_vector(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("mixChannels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("mixChannels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mulSpectrums(SEXP a, SEXP b, int flags, bool conjB, SEXP dst) {
  try {
    ropecv::InArg _i0(a);
    ropecv::InArg _i1(b);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::mulSpectrums(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), flags, conjB);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("mulSpectrums: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("mulSpectrums: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mulTransposed(SEXP src, bool aTa, SEXP delta, double scale, int dtype, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(delta);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::mulTransposed(_i0.ia(), cv::_OutputArray(*_p0), aTa, _i1.ia(), scale, dtype);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("mulTransposed: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("mulTransposed: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_multiply(SEXP src1, SEXP src2, double scale, int dtype, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::multiply(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), scale, dtype);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("multiply: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("multiply: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_norm__0(SEXP src1, int normType, SEXP mask) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(mask);
    double _rv = ::cv::norm(_i0.ia(), normType, _i1.ia());
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("norm: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("norm: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_norm__1(SEXP src1, SEXP src2, int normType, SEXP mask) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    ropecv::InArg _i2(mask);
    double _rv = ::cv::norm(_i0.ia(), _i1.ia(), normType, _i2.ia());
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("norm: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("norm: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_normalize(SEXP src, SEXP dst, double alpha, double beta, int norm_type, int dtype, SEXP mask) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::normalize(_i0.ia(), cv::_InputOutputArray(*_p0), alpha, beta, norm_type, dtype, _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("normalize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("normalize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_patchNaNs(SEXP a, double val) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(a) ? &_owned0 : ropecv::mat_ptr(a);
    ::cv::patchNaNs(cv::_InputOutputArray(*_p0), val);
    return Rf_isNull(a) ? ropecv::wrap_mat(std::move(_owned0)) : a;
  } catch (const cv::Exception& e) {
    Rcpp::stop("patchNaNs: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("patchNaNs: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_perspectiveTransform(SEXP src, SEXP m, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(m);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::perspectiveTransform(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("perspectiveTransform: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("perspectiveTransform: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_phase(SEXP x, SEXP y, bool angleInDegrees, SEXP dst) {
  try {
    ropecv::InArg _i0(x);
    ropecv::InArg _i1(y);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::phase(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), angleInDegrees);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("phase: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("phase: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_polarToCart(SEXP magnitude, SEXP angle, bool angleInDegrees, SEXP x, SEXP y) {
  try {
    ropecv::InArg _i0(magnitude);
    ropecv::InArg _i1(angle);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(x) ? &_owned0 : ropecv::mat_ptr(x);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(y) ? &_owned1 : ropecv::mat_ptr(y);
    ::cv::polarToCart(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), angleInDegrees);
    return Rcpp::List::create(Rcpp::Named("x") = Rf_isNull(x) ? ropecv::wrap_mat(std::move(_owned0)) : x,
                                Rcpp::Named("y") = Rf_isNull(y) ? ropecv::wrap_mat(std::move(_owned1)) : y);
  } catch (const cv::Exception& e) {
    Rcpp::stop("polarToCart: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("polarToCart: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_pow(SEXP src, double power, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::pow(_i0.ia(), power, cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("pow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("pow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_randShuffle(SEXP dst, double iterFactor) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::RNG _o1;
    ::cv::randShuffle(cv::_InputOutputArray(*_p0), iterFactor, &_o1);
    return Rcpp::List::create(Rcpp::Named("dst") = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst,
                                Rcpp::Named("rng") = R_NilValue);
  } catch (const cv::Exception& e) {
    Rcpp::stop("randShuffle: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("randShuffle: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_randn(SEXP dst, SEXP mean, SEXP stddev) {
  try {
    ropecv::InArg _i0(mean);
    ropecv::InArg _i1(stddev);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::randn(cv::_InputOutputArray(*_p0), _i0.ia(), _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("randn: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("randn: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_randu(SEXP dst, SEXP low, SEXP high) {
  try {
    ropecv::InArg _i0(low);
    ropecv::InArg _i1(high);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::randu(cv::_InputOutputArray(*_p0), _i0.ia(), _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("randu: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("randu: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reduce(SEXP src, int dim, int rtype, int dtype, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::reduce(_i0.ia(), cv::_OutputArray(*_p0), dim, rtype, dtype);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("reduce: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("reduce: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reduceArgMax(SEXP src, int axis, bool lastIndex, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::reduceArgMax(_i0.ia(), cv::_OutputArray(*_p0), axis, lastIndex);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("reduceArgMax: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("reduceArgMax: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reduceArgMin(SEXP src, int axis, bool lastIndex, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::reduceArgMin(_i0.ia(), cv::_OutputArray(*_p0), axis, lastIndex);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("reduceArgMin: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("reduceArgMin: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_repeat(SEXP src, int ny, int nx, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::repeat(_i0.ia(), ny, nx, cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("repeat: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("repeat: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_rotate(SEXP src, int rotateCode, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::rotate(_i0.ia(), cv::_OutputArray(*_p0), rotateCode);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("rotate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("rotate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_scaleAdd(SEXP src1, double alpha, SEXP src2, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::scaleAdd(_i0.ia(), alpha, _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("scaleAdd: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("scaleAdd: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_setIdentity(SEXP mtx, SEXP s) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(mtx) ? &_owned0 : ropecv::mat_ptr(mtx);
    ::cv::setIdentity(cv::_InputOutputArray(*_p0), ropecv::as_scalar(s));
    return Rf_isNull(mtx) ? ropecv::wrap_mat(std::move(_owned0)) : mtx;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setIdentity: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setIdentity: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_solve(SEXP src1, SEXP src2, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ::cv::solve(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), flags);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("solve: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("solve: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_solveCubic(SEXP coeffs, SEXP dst) {
  try {
    ropecv::InArg _i0(coeffs);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    int _rv = ::cv::solveCubic(_i0.ia(), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarInteger(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("solveCubic: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("solveCubic: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_solvePoly(SEXP coeffs, int maxIters, SEXP dst) {
  try {
    ropecv::InArg _i0(coeffs);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    double _rv = ::cv::solvePoly(_i0.ia(), cv::_OutputArray(*_p0), maxIters);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarReal(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("solvePoly: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("solvePoly: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_sort(SEXP src, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::sort(_i0.ia(), cv::_OutputArray(*_p0), flags);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("sort: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("sort: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_sortIdx(SEXP src, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::sortIdx(_i0.ia(), cv::_OutputArray(*_p0), flags);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("sortIdx: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("sortIdx: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_split(SEXP m, SEXP mv) {
  try {
    ropecv::InArg _i0(m);
    std::vector<cv::Mat> _o0;
    ::cv::split(_i0.ia(), cv::_OutputArray(_o0));
    return ropecv::wrap_mat_vector(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("split: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("split: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_sqrt(SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::sqrt(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("sqrt: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("sqrt: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_subtract(SEXP src1, SEXP src2, SEXP mask, int dtype, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::subtract(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), _i2.ia(), dtype);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("subtract: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("subtract: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_sum(SEXP src) {
  try {
    ropecv::InArg _i0(src);
    cv::Scalar _rv = ::cv::sum(_i0.ia());
    return ropecv::wrap_scalar(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("sum: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("sum: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_trace(SEXP mtx) {
  try {
    ropecv::InArg _i0(mtx);
    cv::Scalar _rv = ::cv::trace(_i0.ia());
    return ropecv::wrap_scalar(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("trace: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("trace: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_transform(SEXP src, SEXP m, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(m);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::transform(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("transform: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("transform: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_transpose(SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::transpose(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("transpose: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("transpose: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_transposeND(SEXP src, SEXP order, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    std::vector<int> _a1 = ropecv::as_int_vector(order);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::transposeND(_i0.ia(), _a1, cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("transposeND: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("transposeND: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_vconcat(SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::vconcat(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("vconcat: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("vconcat: %s", e.what());
  }
}
