// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/photo.hpp
#include "ropecv.h"
#include <opencv2/photo.hpp>

// [[Rcpp::export]]
SEXP cv_colorChange(SEXP src, SEXP mask, double red_mul, double green_mul, double blue_mul, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::colorChange(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), (float)red_mul, (float)green_mul, (float)blue_mul);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("colorChange: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("colorChange: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createAlignMTB(int max_bits, int exclude_range, bool cut) {
  try {
    cv::Ptr<cv::AlignMTB> _rv = ::cv::createAlignMTB(max_bits, exclude_range, cut);
    return ropecv::wrap_obj(_rv, "cvAlignMTB");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createAlignMTB: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createAlignMTB: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createCalibrateDebevec(int samples, double lambda, bool random) {
  try {
    cv::Ptr<cv::CalibrateDebevec> _rv = ::cv::createCalibrateDebevec(samples, (float)lambda, random);
    return ropecv::wrap_obj(_rv, "cvCalibrateDebevec");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createCalibrateDebevec: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createCalibrateDebevec: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createCalibrateRobertson(int max_iter, double threshold) {
  try {
    cv::Ptr<cv::CalibrateRobertson> _rv = ::cv::createCalibrateRobertson(max_iter, (float)threshold);
    return ropecv::wrap_obj(_rv, "cvCalibrateRobertson");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createCalibrateRobertson: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createCalibrateRobertson: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createMergeDebevec() {
  try {
    cv::Ptr<cv::MergeDebevec> _rv = ::cv::createMergeDebevec();
    return ropecv::wrap_obj(_rv, "cvMergeDebevec");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createMergeDebevec: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createMergeDebevec: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createMergeMertens(double contrast_weight, double saturation_weight, double exposure_weight) {
  try {
    cv::Ptr<cv::MergeMertens> _rv = ::cv::createMergeMertens((float)contrast_weight, (float)saturation_weight, (float)exposure_weight);
    return ropecv::wrap_obj(_rv, "cvMergeMertens");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createMergeMertens: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createMergeMertens: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createMergeRobertson() {
  try {
    cv::Ptr<cv::MergeRobertson> _rv = ::cv::createMergeRobertson();
    return ropecv::wrap_obj(_rv, "cvMergeRobertson");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createMergeRobertson: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createMergeRobertson: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createTonemap(double gamma) {
  try {
    cv::Ptr<cv::Tonemap> _rv = ::cv::createTonemap((float)gamma);
    return ropecv::wrap_obj(_rv, "cvTonemap");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createTonemap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createTonemap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createTonemapDrago(double gamma, double saturation, double bias) {
  try {
    cv::Ptr<cv::TonemapDrago> _rv = ::cv::createTonemapDrago((float)gamma, (float)saturation, (float)bias);
    return ropecv::wrap_obj(_rv, "cvTonemapDrago");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createTonemapDrago: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createTonemapDrago: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createTonemapMantiuk(double gamma, double scale, double saturation) {
  try {
    cv::Ptr<cv::TonemapMantiuk> _rv = ::cv::createTonemapMantiuk((float)gamma, (float)scale, (float)saturation);
    return ropecv::wrap_obj(_rv, "cvTonemapMantiuk");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createTonemapMantiuk: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createTonemapMantiuk: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createTonemapReinhard(double gamma, double intensity, double light_adapt, double color_adapt) {
  try {
    cv::Ptr<cv::TonemapReinhard> _rv = ::cv::createTonemapReinhard((float)gamma, (float)intensity, (float)light_adapt, (float)color_adapt);
    return ropecv::wrap_obj(_rv, "cvTonemapReinhard");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createTonemapReinhard: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createTonemapReinhard: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_decolor(SEXP src, SEXP grayscale, SEXP color_boost) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(grayscale) ? &_owned0 : ropecv::mat_ptr(grayscale);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(color_boost) ? &_owned1 : ropecv::mat_ptr(color_boost);
    ::cv::decolor(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("grayscale") = Rf_isNull(grayscale) ? ropecv::wrap_mat(std::move(_owned0)) : grayscale,
                                Rcpp::Named("color_boost") = Rf_isNull(color_boost) ? ropecv::wrap_mat(std::move(_owned1)) : color_boost);
  } catch (const cv::Exception& e) {
    Rcpp::stop("decolor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("decolor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_denoise_TVL1(SEXP observations, SEXP result, double lambda, int niters) {
  try {
    std::vector<cv::Mat> _a0 = ropecv::as_mat_vector(observations);
    cv::Mat _o0;
    if (!Rf_isNull(result)) _o0 = *ropecv::mat_ptr(result);
    ::cv::denoise_TVL1(_a0, _o0, lambda, niters);
    return Rcpp::List::create(Rcpp::Named("result") = ropecv::wrap_mat(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("denoise_TVL1: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("denoise_TVL1: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_detailEnhance(SEXP src, double sigma_s, double sigma_r, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::detailEnhance(_i0.ia(), cv::_OutputArray(*_p0), (float)sigma_s, (float)sigma_r);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("detailEnhance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detailEnhance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_edgePreservingFilter(SEXP src, int flags, double sigma_s, double sigma_r, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::edgePreservingFilter(_i0.ia(), cv::_OutputArray(*_p0), flags, (float)sigma_s, (float)sigma_r);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("edgePreservingFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("edgePreservingFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fastNlMeansDenoising__0(SEXP src, double h, int templateWindowSize, int searchWindowSize, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::fastNlMeansDenoising(_i0.ia(), cv::_OutputArray(*_p0), (float)h, templateWindowSize, searchWindowSize);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("fastNlMeansDenoising: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fastNlMeansDenoising: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fastNlMeansDenoising__1(SEXP src, SEXP h, int templateWindowSize, int searchWindowSize, int normType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    std::vector<float> _a1 = ropecv::as_flt_vector(h);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::fastNlMeansDenoising(_i0.ia(), cv::_OutputArray(*_p0), _a1, templateWindowSize, searchWindowSize, normType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("fastNlMeansDenoising: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fastNlMeansDenoising: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fastNlMeansDenoisingColored(SEXP src, double h, double hColor, int templateWindowSize, int searchWindowSize, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::fastNlMeansDenoisingColored(_i0.ia(), cv::_OutputArray(*_p0), (float)h, (float)hColor, templateWindowSize, searchWindowSize);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("fastNlMeansDenoisingColored: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fastNlMeansDenoisingColored: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fastNlMeansDenoisingColoredMulti(SEXP srcImgs, int imgToDenoiseIndex, int temporalWindowSize, double h, double hColor, int templateWindowSize, int searchWindowSize, SEXP dst) {
  try {
    ropecv::InArg _i0(srcImgs);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::fastNlMeansDenoisingColoredMulti(_i0.ia(), cv::_OutputArray(*_p0), imgToDenoiseIndex, temporalWindowSize, (float)h, (float)hColor, templateWindowSize, searchWindowSize);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("fastNlMeansDenoisingColoredMulti: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fastNlMeansDenoisingColoredMulti: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fastNlMeansDenoisingMulti__0(SEXP srcImgs, int imgToDenoiseIndex, int temporalWindowSize, double h, int templateWindowSize, int searchWindowSize, SEXP dst) {
  try {
    ropecv::InArg _i0(srcImgs);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::fastNlMeansDenoisingMulti(_i0.ia(), cv::_OutputArray(*_p0), imgToDenoiseIndex, temporalWindowSize, (float)h, templateWindowSize, searchWindowSize);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("fastNlMeansDenoisingMulti: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fastNlMeansDenoisingMulti: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fastNlMeansDenoisingMulti__1(SEXP srcImgs, int imgToDenoiseIndex, int temporalWindowSize, SEXP h, int templateWindowSize, int searchWindowSize, int normType, SEXP dst) {
  try {
    ropecv::InArg _i0(srcImgs);
    std::vector<float> _a1 = ropecv::as_flt_vector(h);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::fastNlMeansDenoisingMulti(_i0.ia(), cv::_OutputArray(*_p0), imgToDenoiseIndex, temporalWindowSize, _a1, templateWindowSize, searchWindowSize, normType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("fastNlMeansDenoisingMulti: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fastNlMeansDenoisingMulti: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_illuminationChange(SEXP src, SEXP mask, double alpha, double beta, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::illuminationChange(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), (float)alpha, (float)beta);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("illuminationChange: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("illuminationChange: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_inpaint(SEXP src, SEXP inpaintMask, double inpaintRadius, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(inpaintMask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::inpaint(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), inpaintRadius, flags);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("inpaint: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("inpaint: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_pencilSketch(SEXP src, double sigma_s, double sigma_r, double shade_factor, SEXP dst1, SEXP dst2) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst1) ? &_owned0 : ropecv::mat_ptr(dst1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(dst2) ? &_owned1 : ropecv::mat_ptr(dst2);
    ::cv::pencilSketch(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), (float)sigma_s, (float)sigma_r, (float)shade_factor);
    return Rcpp::List::create(Rcpp::Named("dst1") = Rf_isNull(dst1) ? ropecv::wrap_mat(std::move(_owned0)) : dst1,
                                Rcpp::Named("dst2") = Rf_isNull(dst2) ? ropecv::wrap_mat(std::move(_owned1)) : dst2);
  } catch (const cv::Exception& e) {
    Rcpp::stop("pencilSketch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("pencilSketch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_seamlessClone(SEXP src, SEXP dst, SEXP mask, SEXP p, int flags, SEXP blend) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(dst);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(blend) ? &_owned0 : ropecv::mat_ptr(blend);
    ::cv::seamlessClone(_i0.ia(), _i1.ia(), _i2.ia(), ropecv::as_point(p), cv::_OutputArray(*_p0), flags);
    return Rf_isNull(blend) ? ropecv::wrap_mat(std::move(_owned0)) : blend;
  } catch (const cv::Exception& e) {
    Rcpp::stop("seamlessClone: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("seamlessClone: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stylization(SEXP src, double sigma_s, double sigma_r, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::stylization(_i0.ia(), cv::_OutputArray(*_p0), (float)sigma_s, (float)sigma_r);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("stylization: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stylization: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_textureFlattening(SEXP src, SEXP mask, double low_threshold, double high_threshold, int kernel_size, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::textureFlattening(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), (float)low_threshold, (float)high_threshold, kernel_size);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("textureFlattening: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("textureFlattening: %s", e.what());
  }
}
