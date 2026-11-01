// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/imgproc.hpp
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/imgproc.hpp>

// [[Rcpp::export]]
SEXP cv_Canny__0(SEXP image, double threshold1, double threshold2, int apertureSize, bool L2gradient, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::Canny(_i0.ia(), cv::_OutputArray(*_p0), threshold1, threshold2, apertureSize, L2gradient);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("Canny: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("Canny: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Canny__1(SEXP dx, SEXP dy, double threshold1, double threshold2, bool L2gradient, SEXP dst) {
  try {
    ropecv::InArg _i0(dx);
    ropecv::InArg _i1(dy);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::Canny(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), threshold1, threshold2, L2gradient);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("Canny: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("Canny: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_EMD(SEXP signature1, SEXP signature2, int distType, SEXP cost, SEXP flow) {
  try {
    ropecv::InArg _i0(signature1);
    ropecv::InArg _i1(signature2);
    ropecv::InArg _i2(cost);
    float _o0 = 0;
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(flow) ? &_owned1 : ropecv::mat_ptr(flow);
    double _rv = ::cv::EMD(_i0.ia(), _i1.ia(), distType, _i2.ia(), &_o0, cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal((double)_rv),
                                Rcpp::Named("lowerBound") = Rf_ScalarReal((double)_o0),
                                Rcpp::Named("flow") = Rf_isNull(flow) ? ropecv::wrap_mat(std::move(_owned1)) : flow);
  } catch (const cv::Exception& e) {
    Rcpp::stop("EMD: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("EMD: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GaussianBlur(SEXP src, SEXP ksize, double sigmaX, double sigmaY, int borderType, int hint, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::GaussianBlur(_i0.ia(), cv::_OutputArray(*_p0), ropecv::as_size(ksize), sigmaX, sigmaY, borderType, (cv::AlgorithmHint)hint);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("GaussianBlur: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("GaussianBlur: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HoughCircles(SEXP image, int method, double dp, double minDist, double param1, double param2, int minRadius, int maxRadius, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::HoughCircles(_i0.ia(), cv::_OutputArray(*_p0), method, dp, minDist, param1, param2, minRadius, maxRadius);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("HoughCircles: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("HoughCircles: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HoughLines(SEXP image, double rho, double theta, int threshold, double srn, double stn, double min_theta, double max_theta, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::HoughLines(_i0.ia(), cv::_OutputArray(*_p0), rho, theta, threshold, srn, stn, min_theta, max_theta);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("HoughLines: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("HoughLines: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HoughLinesP(SEXP image, double rho, double theta, int threshold, double minLineLength, double maxLineGap, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::HoughLinesP(_i0.ia(), cv::_OutputArray(*_p0), rho, theta, threshold, minLineLength, maxLineGap);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("HoughLinesP: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("HoughLinesP: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HoughLinesPointSet(SEXP point, int lines_max, int threshold, double min_rho, double max_rho, double rho_step, double min_theta, double max_theta, double theta_step, SEXP dst) {
  try {
    ropecv::InArg _i0(point);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::HoughLinesPointSet(_i0.ia(), cv::_OutputArray(*_p0), lines_max, threshold, min_rho, max_rho, rho_step, min_theta, max_theta, theta_step);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("HoughLinesPointSet: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("HoughLinesPointSet: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HuMoments(SEXP m, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::HuMoments(ropecv::as_moments(m), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("HuMoments: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("HuMoments: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Laplacian(SEXP src, int ddepth, int ksize, double scale, double delta, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::Laplacian(_i0.ia(), cv::_OutputArray(*_p0), ddepth, ksize, scale, delta, borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("Laplacian: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("Laplacian: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Scharr(SEXP src, int ddepth, int dx, int dy, double scale, double delta, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::Scharr(_i0.ia(), cv::_OutputArray(*_p0), ddepth, dx, dy, scale, delta, borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("Scharr: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("Scharr: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Sobel(SEXP src, int ddepth, int dx, int dy, int ksize, double scale, double delta, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::Sobel(_i0.ia(), cv::_OutputArray(*_p0), ddepth, dx, dy, ksize, scale, delta, borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("Sobel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("Sobel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_accumulate(SEXP src, SEXP dst, SEXP mask) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::accumulate(_i0.ia(), cv::_InputOutputArray(*_p0), _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("accumulate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("accumulate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_accumulateProduct(SEXP src1, SEXP src2, SEXP dst, SEXP mask) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::accumulateProduct(_i0.ia(), _i1.ia(), cv::_InputOutputArray(*_p0), _i2.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("accumulateProduct: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("accumulateProduct: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_accumulateSquare(SEXP src, SEXP dst, SEXP mask) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::accumulateSquare(_i0.ia(), cv::_InputOutputArray(*_p0), _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("accumulateSquare: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("accumulateSquare: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_accumulateWeighted(SEXP src, SEXP dst, double alpha, SEXP mask) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::accumulateWeighted(_i0.ia(), cv::_InputOutputArray(*_p0), alpha, _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("accumulateWeighted: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("accumulateWeighted: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_adaptiveThreshold(SEXP src, double maxValue, int adaptiveMethod, int thresholdType, int blockSize, double C, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::adaptiveThreshold(_i0.ia(), cv::_OutputArray(*_p0), maxValue, adaptiveMethod, thresholdType, blockSize, C);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("adaptiveThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("adaptiveThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_applyColorMap__0(SEXP src, int colormap, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::applyColorMap(_i0.ia(), cv::_OutputArray(*_p0), colormap);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("applyColorMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("applyColorMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_applyColorMap__1(SEXP src, SEXP userColor, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(userColor);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::applyColorMap(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("applyColorMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("applyColorMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_approxPolyDP(SEXP curve, double epsilon, bool closed, SEXP dst) {
  try {
    ropecv::InArg _i0(curve);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::approxPolyDP(_i0.ia(), cv::_OutputArray(*_p0), epsilon, closed);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("approxPolyDP: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("approxPolyDP: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_approxPolyN(SEXP curve, int nsides, double epsilon_percentage, bool ensure_convex, SEXP dst) {
  try {
    ropecv::InArg _i0(curve);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::approxPolyN(_i0.ia(), cv::_OutputArray(*_p0), nsides, (float)epsilon_percentage, ensure_convex);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("approxPolyN: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("approxPolyN: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_arcLength(SEXP curve, bool closed) {
  try {
    ropecv::InArg _i0(curve);
    double _rv = ::cv::arcLength(_i0.ia(), closed);
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("arcLength: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("arcLength: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_arrowedLine(SEXP img, SEXP pt1, SEXP pt2, SEXP color, int thickness, int line_type, int shift, double tipLength) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    ::cv::arrowedLine(cv::_InputOutputArray(*_p0), ropecv::as_point(pt1), ropecv::as_point(pt2), ropecv::as_scalar(color), thickness, line_type, shift, tipLength);
    return Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img;
  } catch (const cv::Exception& e) {
    Rcpp::stop("arrowedLine: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("arrowedLine: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bilateralFilter(SEXP src, int d, double sigmaColor, double sigmaSpace, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::bilateralFilter(_i0.ia(), cv::_OutputArray(*_p0), d, sigmaColor, sigmaSpace, borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("bilateralFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("bilateralFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_blendLinear(SEXP src1, SEXP src2, SEXP weights1, SEXP weights2, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    ropecv::InArg _i2(weights1);
    ropecv::InArg _i3(weights2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::blendLinear(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("blendLinear: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("blendLinear: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_blur(SEXP src, SEXP ksize, SEXP anchor, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::blur(_i0.ia(), cv::_OutputArray(*_p0), ropecv::as_size(ksize), ropecv::as_point(anchor), borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("blur: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("blur: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_boundingRect(SEXP array) {
  try {
    ropecv::InArg _i0(array);
    cv::Rect _rv = ::cv::boundingRect(_i0.ia());
    return ropecv::wrap_rect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("boundingRect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("boundingRect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_boxFilter(SEXP src, int ddepth, SEXP ksize, SEXP anchor, bool normalize, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::boxFilter(_i0.ia(), cv::_OutputArray(*_p0), ddepth, ropecv::as_size(ksize), ropecv::as_point(anchor), normalize, borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("boxFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("boxFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_boxPoints(SEXP box, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::boxPoints(ropecv::as_rotatedrect(box), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("boxPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("boxPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_buildPyramid(SEXP src, int maxlevel, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    std::vector<cv::Mat> _o0;
    ::cv::buildPyramid(_i0.ia(), cv::_OutputArray(_o0), maxlevel, borderType);
    return ropecv::wrap_mat_vector(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("buildPyramid: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("buildPyramid: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_calcBackProject(SEXP images, SEXP channels, SEXP hist, SEXP ranges, double scale, SEXP dst) {
  try {
    ropecv::InArg _i0(images);
    std::vector<int> _a1 = ropecv::as_int_vector(channels);
    ropecv::InArg _i2(hist);
    std::vector<float> _a3 = ropecv::as_flt_vector(ranges);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::calcBackProject(_i0.ia(), _a1, _i2.ia(), cv::_OutputArray(*_p0), _a3, scale);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("calcBackProject: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calcBackProject: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_calcHist(SEXP images, SEXP channels, SEXP mask, SEXP histSize, SEXP ranges, bool accumulate, SEXP dst) {
  try {
    ropecv::InArg _i0(images);
    std::vector<int> _a1 = ropecv::as_int_vector(channels);
    ropecv::InArg _i2(mask);
    std::vector<int> _a3 = ropecv::as_int_vector(histSize);
    std::vector<float> _a4 = ropecv::as_flt_vector(ranges);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::calcHist(_i0.ia(), _a1, _i2.ia(), cv::_OutputArray(*_p0), _a3, _a4, accumulate);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("calcHist: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calcHist: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_circle(SEXP img, SEXP center, int radius, SEXP color, int thickness, int lineType, int shift) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    ::cv::circle(cv::_InputOutputArray(*_p0), ropecv::as_point(center), radius, ropecv::as_scalar(color), thickness, lineType, shift);
    return Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img;
  } catch (const cv::Exception& e) {
    Rcpp::stop("circle: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("circle: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_clipLine(SEXP imgRect) {
  try {
    cv::Point _o0;
    cv::Point _o1;
    bool _rv = ::cv::clipLine(ropecv::as_rect(imgRect), _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("pt1") = ropecv::wrap_point(_o0),
                                Rcpp::Named("pt2") = ropecv::wrap_point(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("clipLine: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("clipLine: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_compareHist(SEXP H1, SEXP H2, int method) {
  try {
    ropecv::InArg _i0(H1);
    ropecv::InArg _i1(H2);
    double _rv = ::cv::compareHist(_i0.ia(), _i1.ia(), method);
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("compareHist: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compareHist: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_connectedComponents__0(SEXP image, int connectivity, int ltype, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    int _rv = ::cv::connectedComponents(_i0.ia(), cv::_OutputArray(*_p0), connectivity, ltype);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarInteger(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("connectedComponents: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("connectedComponents: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_connectedComponents__1(SEXP image, int connectivity, int ltype, int ccltype, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    int _rv = ::cv::connectedComponents(_i0.ia(), cv::_OutputArray(*_p0), connectivity, ltype, ccltype);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarInteger(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("connectedComponents: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("connectedComponents: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_connectedComponentsWithStats__0(SEXP image, int connectivity, int ltype, SEXP labels, SEXP stats, SEXP centroids) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(labels) ? &_owned0 : ropecv::mat_ptr(labels);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(stats) ? &_owned1 : ropecv::mat_ptr(stats);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(centroids) ? &_owned2 : ropecv::mat_ptr(centroids);
    int _rv = ::cv::connectedComponentsWithStats(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), connectivity, ltype);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("labels") = Rf_isNull(labels) ? ropecv::wrap_mat(std::move(_owned0)) : labels,
                                Rcpp::Named("stats") = Rf_isNull(stats) ? ropecv::wrap_mat(std::move(_owned1)) : stats,
                                Rcpp::Named("centroids") = Rf_isNull(centroids) ? ropecv::wrap_mat(std::move(_owned2)) : centroids);
  } catch (const cv::Exception& e) {
    Rcpp::stop("connectedComponentsWithStats: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("connectedComponentsWithStats: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_connectedComponentsWithStats__1(SEXP image, int connectivity, int ltype, int ccltype, SEXP labels, SEXP stats, SEXP centroids) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(labels) ? &_owned0 : ropecv::mat_ptr(labels);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(stats) ? &_owned1 : ropecv::mat_ptr(stats);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(centroids) ? &_owned2 : ropecv::mat_ptr(centroids);
    int _rv = ::cv::connectedComponentsWithStats(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), connectivity, ltype, ccltype);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("labels") = Rf_isNull(labels) ? ropecv::wrap_mat(std::move(_owned0)) : labels,
                                Rcpp::Named("stats") = Rf_isNull(stats) ? ropecv::wrap_mat(std::move(_owned1)) : stats,
                                Rcpp::Named("centroids") = Rf_isNull(centroids) ? ropecv::wrap_mat(std::move(_owned2)) : centroids);
  } catch (const cv::Exception& e) {
    Rcpp::stop("connectedComponentsWithStats: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("connectedComponentsWithStats: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_contourArea(SEXP contour, bool oriented) {
  try {
    ropecv::InArg _i0(contour);
    double _rv = ::cv::contourArea(_i0.ia(), oriented);
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("contourArea: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("contourArea: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_convertMaps(SEXP map1, SEXP map2, int dstmap1type, bool nninterpolation, SEXP dstmap1, SEXP dstmap2) {
  try {
    ropecv::InArg _i0(map1);
    ropecv::InArg _i1(map2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dstmap1) ? &_owned0 : ropecv::mat_ptr(dstmap1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(dstmap2) ? &_owned1 : ropecv::mat_ptr(dstmap2);
    ::cv::convertMaps(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), dstmap1type, nninterpolation);
    return Rcpp::List::create(Rcpp::Named("dstmap1") = Rf_isNull(dstmap1) ? ropecv::wrap_mat(std::move(_owned0)) : dstmap1,
                                Rcpp::Named("dstmap2") = Rf_isNull(dstmap2) ? ropecv::wrap_mat(std::move(_owned1)) : dstmap2);
  } catch (const cv::Exception& e) {
    Rcpp::stop("convertMaps: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("convertMaps: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_convexHull(SEXP points, bool clockwise, bool returnPoints, SEXP dst) {
  try {
    ropecv::InArg _i0(points);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::convexHull(_i0.ia(), cv::_OutputArray(*_p0), clockwise, returnPoints);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("convexHull: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("convexHull: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_convexityDefects(SEXP contour, SEXP convexhull, SEXP dst) {
  try {
    ropecv::InArg _i0(contour);
    ropecv::InArg _i1(convexhull);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::convexityDefects(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("convexityDefects: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("convexityDefects: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_cornerEigenValsAndVecs(SEXP src, int blockSize, int ksize, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::cornerEigenValsAndVecs(_i0.ia(), cv::_OutputArray(*_p0), blockSize, ksize, borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("cornerEigenValsAndVecs: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cornerEigenValsAndVecs: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_cornerHarris(SEXP src, int blockSize, int ksize, double k, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::cornerHarris(_i0.ia(), cv::_OutputArray(*_p0), blockSize, ksize, k, borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("cornerHarris: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cornerHarris: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_cornerMinEigenVal(SEXP src, int blockSize, int ksize, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::cornerMinEigenVal(_i0.ia(), cv::_OutputArray(*_p0), blockSize, ksize, borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("cornerMinEigenVal: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cornerMinEigenVal: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_cornerSubPix(SEXP image, SEXP corners, SEXP winSize, SEXP zeroZone, SEXP criteria) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(corners) ? &_owned0 : ropecv::mat_ptr(corners);
    ::cv::cornerSubPix(_i0.ia(), cv::_InputOutputArray(*_p0), ropecv::as_size(winSize), ropecv::as_size(zeroZone), ropecv::as_termcriteria(criteria));
    return Rf_isNull(corners) ? ropecv::wrap_mat(std::move(_owned0)) : corners;
  } catch (const cv::Exception& e) {
    Rcpp::stop("cornerSubPix: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cornerSubPix: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createCLAHE(double clipLimit, SEXP tileGridSize) {
  try {
    cv::Ptr<cv::CLAHE> _rv = ::cv::createCLAHE(clipLimit, ropecv::as_size(tileGridSize));
    return ropecv::wrap_obj(_rv, "cvCLAHE");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createCLAHE: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createCLAHE: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createGeneralizedHoughBallard() {
  try {
    cv::Ptr<cv::GeneralizedHoughBallard> _rv = ::cv::createGeneralizedHoughBallard();
    return ropecv::wrap_obj(_rv, "cvGeneralizedHoughBallard");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createGeneralizedHoughBallard: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createGeneralizedHoughBallard: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createGeneralizedHoughGuil() {
  try {
    cv::Ptr<cv::GeneralizedHoughGuil> _rv = ::cv::createGeneralizedHoughGuil();
    return ropecv::wrap_obj(_rv, "cvGeneralizedHoughGuil");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createGeneralizedHoughGuil: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createGeneralizedHoughGuil: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createHanningWindow(SEXP dst, SEXP winSize, int type) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::createHanningWindow(cv::_OutputArray(*_p0), ropecv::as_size(winSize), type);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("createHanningWindow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createHanningWindow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createLineSegmentDetector(int refine, double scale, double sigma_scale, double quant, double ang_th, double log_eps, double density_th, int n_bins) {
  try {
    cv::Ptr<cv::LineSegmentDetector> _rv = ::cv::createLineSegmentDetector((cv::LineSegmentDetectorModes)refine, scale, sigma_scale, quant, ang_th, log_eps, density_th, n_bins);
    return ropecv::wrap_obj(_rv, "cvLineSegmentDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createLineSegmentDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createLineSegmentDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_cvtColor(SEXP src, int code, int dstCn, int hint, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::cvtColor(_i0.ia(), cv::_OutputArray(*_p0), code, dstCn, (cv::AlgorithmHint)hint);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvtColor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvtColor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_cvtColorTwoPlane(SEXP src1, SEXP src2, int code, int hint, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::cvtColorTwoPlane(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), code, (cv::AlgorithmHint)hint);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvtColorTwoPlane: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvtColorTwoPlane: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_demosaicing(SEXP src, int code, int dstCn, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::demosaicing(_i0.ia(), cv::_OutputArray(*_p0), code, dstCn);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("demosaicing: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("demosaicing: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dilate(SEXP src, SEXP kernel, SEXP anchor, int iterations, int borderType, SEXP borderValue, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(kernel);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::dilate(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), ropecv::as_point(anchor), iterations, borderType, ropecv::as_scalar(borderValue));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("dilate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("dilate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_distanceTransform__0(SEXP src, int distanceType, int maskSize, int dstType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::distanceTransform(_i0.ia(), cv::_OutputArray(*_p0), distanceType, maskSize, dstType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("distanceTransform: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("distanceTransform: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_distanceTransform__1(SEXP src, int distanceType, int maskSize, int labelType, SEXP dst, SEXP labels) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(labels) ? &_owned1 : ropecv::mat_ptr(labels);
    ::cv::distanceTransform(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), distanceType, maskSize, labelType);
    return Rcpp::List::create(Rcpp::Named("dst") = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst,
                                Rcpp::Named("labels") = Rf_isNull(labels) ? ropecv::wrap_mat(std::move(_owned1)) : labels);
  } catch (const cv::Exception& e) {
    Rcpp::stop("distanceTransform: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("distanceTransform: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_divSpectrums(SEXP a, SEXP b, int flags, bool conjB, SEXP dst) {
  try {
    ropecv::InArg _i0(a);
    ropecv::InArg _i1(b);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::divSpectrums(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), flags, conjB);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("divSpectrums: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("divSpectrums: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_drawContours(SEXP image, SEXP contours, int contourIdx, SEXP color, int thickness, int lineType, SEXP hierarchy, int maxLevel, SEXP offset) {
  try {
    ropecv::InArg _i0(contours);
    ropecv::InArg _i1(hierarchy);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(image) ? &_owned0 : ropecv::mat_ptr(image);
    ::cv::drawContours(cv::_InputOutputArray(*_p0), _i0.ia(), contourIdx, ropecv::as_scalar(color), thickness, lineType, _i1.ia(), maxLevel, ropecv::as_point(offset));
    return Rf_isNull(image) ? ropecv::wrap_mat(std::move(_owned0)) : image;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawContours: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawContours: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_drawMarker(SEXP img, SEXP position, SEXP color, int markerType, int markerSize, int thickness, int line_type) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    ::cv::drawMarker(cv::_InputOutputArray(*_p0), ropecv::as_point(position), ropecv::as_scalar(color), markerType, markerSize, thickness, line_type);
    return Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawMarker: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawMarker: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ellipse__0(SEXP img, SEXP box, SEXP color, int thickness, int lineType) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    ::cv::ellipse(cv::_InputOutputArray(*_p0), ropecv::as_rotatedrect(box), ropecv::as_scalar(color), thickness, lineType);
    return Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img;
  } catch (const cv::Exception& e) {
    Rcpp::stop("ellipse: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("ellipse: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ellipse__1(SEXP img, SEXP center, SEXP axes, double angle, double startAngle, double endAngle, SEXP color, int thickness, int lineType, int shift) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    ::cv::ellipse(cv::_InputOutputArray(*_p0), ropecv::as_point(center), ropecv::as_size(axes), angle, startAngle, endAngle, ropecv::as_scalar(color), thickness, lineType, shift);
    return Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img;
  } catch (const cv::Exception& e) {
    Rcpp::stop("ellipse: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("ellipse: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ellipse2Poly(SEXP center, SEXP axes, int angle, int arcStart, int arcEnd, int delta) {
  try {
    std::vector<cv::Point> _o0;
    ::cv::ellipse2Poly(ropecv::as_point(center), ropecv::as_size(axes), angle, arcStart, arcEnd, delta, _o0);
    return ropecv::wrap_points(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("ellipse2Poly: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("ellipse2Poly: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_equalizeHist(SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::equalizeHist(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("equalizeHist: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("equalizeHist: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_erode(SEXP src, SEXP kernel, SEXP anchor, int iterations, int borderType, SEXP borderValue, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(kernel);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::erode(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), ropecv::as_point(anchor), iterations, borderType, ropecv::as_scalar(borderValue));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("erode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("erode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fillConvexPoly(SEXP img, SEXP points, SEXP color, int lineType, int shift) {
  try {
    ropecv::InArg _i0(points);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    ::cv::fillConvexPoly(cv::_InputOutputArray(*_p0), _i0.ia(), ropecv::as_scalar(color), lineType, shift);
    return Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img;
  } catch (const cv::Exception& e) {
    Rcpp::stop("fillConvexPoly: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fillConvexPoly: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fillPoly(SEXP img, SEXP pts, SEXP color, int lineType, int shift, SEXP offset) {
  try {
    ropecv::InArg _i0(pts);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    ::cv::fillPoly(cv::_InputOutputArray(*_p0), _i0.ia(), ropecv::as_scalar(color), lineType, shift, ropecv::as_point(offset));
    return Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img;
  } catch (const cv::Exception& e) {
    Rcpp::stop("fillPoly: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fillPoly: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_filter2D__0(SEXP src, SEXP kernel, SEXP params, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(kernel);
    cv::Filter2DParams _s2 = ropecv::as_Filter2DParams(params);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::filter2D(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _s2);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("filter2D: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("filter2D: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_filter2D__1(SEXP src, int ddepth, SEXP kernel, SEXP anchor, double delta, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(kernel);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::filter2D(_i0.ia(), cv::_OutputArray(*_p0), ddepth, _i1.ia(), ropecv::as_point(anchor), delta, borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("filter2D: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("filter2D: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findContours(SEXP image, int mode, int method, SEXP offset, SEXP contours, SEXP hierarchy) {
  try {
    ropecv::InArg _i0(image);
    std::vector<cv::Mat> _o0;
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(hierarchy) ? &_owned1 : ropecv::mat_ptr(hierarchy);
    ::cv::findContours(_i0.ia(), cv::_OutputArray(_o0), cv::_OutputArray(*_p1), mode, method, ropecv::as_point(offset));
    return Rcpp::List::create(Rcpp::Named("contours") = ropecv::wrap_mat_vector(_o0),
                                Rcpp::Named("hierarchy") = Rf_isNull(hierarchy) ? ropecv::wrap_mat(std::move(_owned1)) : hierarchy);
  } catch (const cv::Exception& e) {
    Rcpp::stop("findContours: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findContours: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findContoursLinkRuns__0(SEXP image, SEXP contours) {
  try {
    ropecv::InArg _i0(image);
    std::vector<cv::Mat> _o0;
    ::cv::findContoursLinkRuns(_i0.ia(), cv::_OutputArray(_o0));
    return ropecv::wrap_mat_vector(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("findContoursLinkRuns: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findContoursLinkRuns: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findContoursLinkRuns__1(SEXP image, SEXP contours, SEXP hierarchy) {
  try {
    ropecv::InArg _i0(image);
    std::vector<cv::Mat> _o0;
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(hierarchy) ? &_owned1 : ropecv::mat_ptr(hierarchy);
    ::cv::findContoursLinkRuns(_i0.ia(), cv::_OutputArray(_o0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("contours") = ropecv::wrap_mat_vector(_o0),
                                Rcpp::Named("hierarchy") = Rf_isNull(hierarchy) ? ropecv::wrap_mat(std::move(_owned1)) : hierarchy);
  } catch (const cv::Exception& e) {
    Rcpp::stop("findContoursLinkRuns: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findContoursLinkRuns: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fitEllipse(SEXP points) {
  try {
    ropecv::InArg _i0(points);
    cv::RotatedRect _rv = ::cv::fitEllipse(_i0.ia());
    return ropecv::wrap_rotatedrect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("fitEllipse: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fitEllipse: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fitEllipseAMS(SEXP points) {
  try {
    ropecv::InArg _i0(points);
    cv::RotatedRect _rv = ::cv::fitEllipseAMS(_i0.ia());
    return ropecv::wrap_rotatedrect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("fitEllipseAMS: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fitEllipseAMS: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fitEllipseDirect(SEXP points) {
  try {
    ropecv::InArg _i0(points);
    cv::RotatedRect _rv = ::cv::fitEllipseDirect(_i0.ia());
    return ropecv::wrap_rotatedrect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("fitEllipseDirect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fitEllipseDirect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fitLine(SEXP points, int distType, double param, double reps, double aeps, SEXP dst) {
  try {
    ropecv::InArg _i0(points);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::fitLine(_i0.ia(), cv::_OutputArray(*_p0), distType, param, reps, aeps);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("fitLine: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fitLine: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_floodFill(SEXP image, SEXP mask, SEXP seedPoint, SEXP newVal, SEXP loDiff, SEXP upDiff, int flags) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(image) ? &_owned0 : ropecv::mat_ptr(image);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(mask) ? &_owned1 : ropecv::mat_ptr(mask);
    cv::Rect _o2;
    int _rv = ::cv::floodFill(cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), ropecv::as_point(seedPoint), ropecv::as_scalar(newVal), &_o2, ropecv::as_scalar(loDiff), ropecv::as_scalar(upDiff), flags);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("image") = Rf_isNull(image) ? ropecv::wrap_mat(std::move(_owned0)) : image,
                                Rcpp::Named("mask") = Rf_isNull(mask) ? ropecv::wrap_mat(std::move(_owned1)) : mask,
                                Rcpp::Named("rect") = ropecv::wrap_rect(_o2));
  } catch (const cv::Exception& e) {
    Rcpp::stop("floodFill: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("floodFill: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getAffineTransform(SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(dst);
    cv::Mat _rv = ::cv::getAffineTransform(_i0.ia(), _i1.ia());
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAffineTransform: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAffineTransform: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getDerivKernels(int dx, int dy, int ksize, bool normalize, int ktype, SEXP kx, SEXP ky) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(kx) ? &_owned0 : ropecv::mat_ptr(kx);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(ky) ? &_owned1 : ropecv::mat_ptr(ky);
    ::cv::getDerivKernels(cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), dx, dy, ksize, normalize, ktype);
    return Rcpp::List::create(Rcpp::Named("kx") = Rf_isNull(kx) ? ropecv::wrap_mat(std::move(_owned0)) : kx,
                                Rcpp::Named("ky") = Rf_isNull(ky) ? ropecv::wrap_mat(std::move(_owned1)) : ky);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDerivKernels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDerivKernels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getFontScaleFromHeight(int fontFace, int pixelHeight, int thickness) {
  try {
    double _rv = ::cv::getFontScaleFromHeight(fontFace, pixelHeight, thickness);
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFontScaleFromHeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFontScaleFromHeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getGaborKernel(SEXP ksize, double sigma, double theta, double lambd, double gamma, double psi, int ktype) {
  try {
    cv::Mat _rv = ::cv::getGaborKernel(ropecv::as_size(ksize), sigma, theta, lambd, gamma, psi, ktype);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGaborKernel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGaborKernel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getGaussianKernel(int ksize, double sigma, int ktype) {
  try {
    cv::Mat _rv = ::cv::getGaussianKernel(ksize, sigma, ktype);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGaussianKernel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGaussianKernel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getPerspectiveTransform(SEXP src, SEXP dst, int solveMethod) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(dst);
    cv::Mat _rv = ::cv::getPerspectiveTransform(_i0.ia(), _i1.ia(), solveMethod);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPerspectiveTransform: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPerspectiveTransform: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getRectSubPix(SEXP image, SEXP patchSize, SEXP center, int patchType, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::getRectSubPix(_i0.ia(), ropecv::as_size(patchSize), ropecv::as_point2f(center), cv::_OutputArray(*_p0), patchType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRectSubPix: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRectSubPix: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getRotationMatrix2D(SEXP center, double angle, double scale) {
  try {
    cv::Mat _rv = ::cv::getRotationMatrix2D(ropecv::as_point2f(center), angle, scale);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRotationMatrix2D: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRotationMatrix2D: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getStructuringElement(int shape, SEXP ksize, SEXP anchor) {
  try {
    cv::Mat _rv = ::cv::getStructuringElement(shape, ropecv::as_size(ksize), ropecv::as_point(anchor));
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getStructuringElement: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getStructuringElement: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getTextSize__0(std::string text, int fontFace, double fontScale, int thickness) {
  try {
    int _o0 = 0;
    cv::Size _rv = ::cv::getTextSize(text, fontFace, fontScale, thickness, &_o0);
    return Rcpp::List::create(Rcpp::Named("value") = ropecv::wrap_size(_rv),
                                Rcpp::Named("baseLine") = Rf_ScalarInteger(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTextSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTextSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getTextSize__1(SEXP imgsize, std::string text, SEXP org, SEXP fface, int size, int weight, int flags, SEXP wrap) {
  try {
    cv::FontFace& _r0 = *ropecv::obj_as<cv::FontFace>(fface);
    cv::Rect _rv = ::cv::getTextSize(ropecv::as_size(imgsize), text, ropecv::as_point(org), _r0, size, weight, (cv::PutTextFlags)flags, ropecv::as_range(wrap));
    return ropecv::wrap_rect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTextSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTextSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_goodFeaturesToTrack__0(SEXP image, int maxCorners, double qualityLevel, double minDistance, SEXP mask, int blockSize, bool useHarrisDetector, double k, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    ropecv::InArg _i1(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::goodFeaturesToTrack(_i0.ia(), cv::_OutputArray(*_p0), maxCorners, qualityLevel, minDistance, _i1.ia(), blockSize, useHarrisDetector, k);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("goodFeaturesToTrack: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("goodFeaturesToTrack: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_goodFeaturesToTrack__1(SEXP image, int maxCorners, double qualityLevel, double minDistance, SEXP mask, int blockSize, int gradientSize, bool useHarrisDetector, double k, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    ropecv::InArg _i1(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::goodFeaturesToTrack(_i0.ia(), cv::_OutputArray(*_p0), maxCorners, qualityLevel, minDistance, _i1.ia(), blockSize, gradientSize, useHarrisDetector, k);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("goodFeaturesToTrack: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("goodFeaturesToTrack: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_grabCut(SEXP img, SEXP mask, SEXP rect, SEXP bgdModel, SEXP fgdModel, int iterCount, int mode) {
  try {
    ropecv::InArg _i0(img);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(mask) ? &_owned0 : ropecv::mat_ptr(mask);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(bgdModel) ? &_owned1 : ropecv::mat_ptr(bgdModel);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(fgdModel) ? &_owned2 : ropecv::mat_ptr(fgdModel);
    ::cv::grabCut(_i0.ia(), cv::_InputOutputArray(*_p0), ropecv::as_rect(rect), cv::_InputOutputArray(*_p1), cv::_InputOutputArray(*_p2), iterCount, mode);
    return Rcpp::List::create(Rcpp::Named("mask") = Rf_isNull(mask) ? ropecv::wrap_mat(std::move(_owned0)) : mask,
                                Rcpp::Named("bgdModel") = Rf_isNull(bgdModel) ? ropecv::wrap_mat(std::move(_owned1)) : bgdModel,
                                Rcpp::Named("fgdModel") = Rf_isNull(fgdModel) ? ropecv::wrap_mat(std::move(_owned2)) : fgdModel);
  } catch (const cv::Exception& e) {
    Rcpp::stop("grabCut: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("grabCut: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_integral__0(SEXP src, int sdepth, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::integral(_i0.ia(), cv::_OutputArray(*_p0), sdepth);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("integral: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("integral: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_integral__1(SEXP src, int sdepth, int sqdepth, SEXP sum, SEXP sqsum) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(sum) ? &_owned0 : ropecv::mat_ptr(sum);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(sqsum) ? &_owned1 : ropecv::mat_ptr(sqsum);
    ::cv::integral(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), sdepth, sqdepth);
    return Rcpp::List::create(Rcpp::Named("sum") = Rf_isNull(sum) ? ropecv::wrap_mat(std::move(_owned0)) : sum,
                                Rcpp::Named("sqsum") = Rf_isNull(sqsum) ? ropecv::wrap_mat(std::move(_owned1)) : sqsum);
  } catch (const cv::Exception& e) {
    Rcpp::stop("integral: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("integral: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_integral__2(SEXP src, int sdepth, int sqdepth, SEXP sum, SEXP sqsum, SEXP tilted) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(sum) ? &_owned0 : ropecv::mat_ptr(sum);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(sqsum) ? &_owned1 : ropecv::mat_ptr(sqsum);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(tilted) ? &_owned2 : ropecv::mat_ptr(tilted);
    ::cv::integral(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), sdepth, sqdepth);
    return Rcpp::List::create(Rcpp::Named("sum") = Rf_isNull(sum) ? ropecv::wrap_mat(std::move(_owned0)) : sum,
                                Rcpp::Named("sqsum") = Rf_isNull(sqsum) ? ropecv::wrap_mat(std::move(_owned1)) : sqsum,
                                Rcpp::Named("tilted") = Rf_isNull(tilted) ? ropecv::wrap_mat(std::move(_owned2)) : tilted);
  } catch (const cv::Exception& e) {
    Rcpp::stop("integral: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("integral: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_intersectConvexConvex(SEXP p1, SEXP p2, bool handleNested, SEXP dst) {
  try {
    ropecv::InArg _i0(p1);
    ropecv::InArg _i1(p2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    double _rv = ::cv::intersectConvexConvex(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), handleNested);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarReal((double)_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("intersectConvexConvex: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("intersectConvexConvex: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_invertAffineTransform(SEXP M, SEXP dst) {
  try {
    ropecv::InArg _i0(M);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::invertAffineTransform(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("invertAffineTransform: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("invertAffineTransform: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_isContourConvex(SEXP contour) {
  try {
    ropecv::InArg _i0(contour);
    bool _rv = ::cv::isContourConvex(_i0.ia());
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isContourConvex: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isContourConvex: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line(SEXP img, SEXP pt1, SEXP pt2, SEXP color, int thickness, int lineType, int shift) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    ::cv::line(cv::_InputOutputArray(*_p0), ropecv::as_point(pt1), ropecv::as_point(pt2), ropecv::as_scalar(color), thickness, lineType, shift);
    return Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img;
  } catch (const cv::Exception& e) {
    Rcpp::stop("line: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("line: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linearPolar(SEXP src, SEXP center, double maxRadius, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::linearPolar(_i0.ia(), cv::_OutputArray(*_p0), ropecv::as_point2f(center), maxRadius, flags);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("linearPolar: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("linearPolar: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_logPolar(SEXP src, SEXP center, double M, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::logPolar(_i0.ia(), cv::_OutputArray(*_p0), ropecv::as_point2f(center), M, flags);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("logPolar: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("logPolar: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_matchShapes(SEXP contour1, SEXP contour2, int method, double parameter) {
  try {
    ropecv::InArg _i0(contour1);
    ropecv::InArg _i1(contour2);
    double _rv = ::cv::matchShapes(_i0.ia(), _i1.ia(), method, parameter);
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("matchShapes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("matchShapes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_matchTemplate(SEXP image, SEXP templ, int method, SEXP mask, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    ropecv::InArg _i1(templ);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::matchTemplate(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), method, _i2.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("matchTemplate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("matchTemplate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_medianBlur(SEXP src, int ksize, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::medianBlur(_i0.ia(), cv::_OutputArray(*_p0), ksize);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("medianBlur: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("medianBlur: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_minAreaRect(SEXP points) {
  try {
    ropecv::InArg _i0(points);
    cv::RotatedRect _rv = ::cv::minAreaRect(_i0.ia());
    return ropecv::wrap_rotatedrect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("minAreaRect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("minAreaRect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_minEnclosingCircle(SEXP points) {
  try {
    ropecv::InArg _i0(points);
    cv::Point2f _o0;
    float _o1 = 0;
    ::cv::minEnclosingCircle(_i0.ia(), _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("center") = ropecv::wrap_point2f(_o0),
                                Rcpp::Named("radius") = Rf_ScalarReal((double)_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("minEnclosingCircle: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("minEnclosingCircle: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_minEnclosingTriangle(SEXP points, SEXP dst) {
  try {
    ropecv::InArg _i0(points);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    double _rv = ::cv::minEnclosingTriangle(_i0.ia(), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarReal(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("minEnclosingTriangle: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("minEnclosingTriangle: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_moments(SEXP array, bool binaryImage) {
  try {
    ropecv::InArg _i0(array);
    cv::Moments _rv = ::cv::moments(_i0.ia(), binaryImage);
    return ropecv::wrap_moments(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("moments: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("moments: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_morphologyEx(SEXP src, int op, SEXP kernel, SEXP anchor, int iterations, int borderType, SEXP borderValue, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(kernel);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::morphologyEx(_i0.ia(), cv::_OutputArray(*_p0), op, _i1.ia(), ropecv::as_point(anchor), iterations, borderType, ropecv::as_scalar(borderValue));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("morphologyEx: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("morphologyEx: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_phaseCorrelate(SEXP src1, SEXP src2, SEXP window) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    ropecv::InArg _i2(window);
    double _o0 = 0;
    cv::Point2d _rv = ::cv::phaseCorrelate(_i0.ia(), _i1.ia(), _i2.ia(), &_o0);
    return Rcpp::List::create(Rcpp::Named("value") = ropecv::wrap_point2d(_rv),
                                Rcpp::Named("response") = Rf_ScalarReal(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("phaseCorrelate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("phaseCorrelate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_pointPolygonTest(SEXP contour, SEXP pt, bool measureDist) {
  try {
    ropecv::InArg _i0(contour);
    double _rv = ::cv::pointPolygonTest(_i0.ia(), ropecv::as_point2f(pt), measureDist);
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("pointPolygonTest: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("pointPolygonTest: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_polylines(SEXP img, SEXP pts, bool isClosed, SEXP color, int thickness, int lineType, int shift) {
  try {
    ropecv::InArg _i0(pts);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    ::cv::polylines(cv::_InputOutputArray(*_p0), _i0.ia(), isClosed, ropecv::as_scalar(color), thickness, lineType, shift);
    return Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img;
  } catch (const cv::Exception& e) {
    Rcpp::stop("polylines: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("polylines: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_preCornerDetect(SEXP src, int ksize, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::preCornerDetect(_i0.ia(), cv::_OutputArray(*_p0), ksize, borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("preCornerDetect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("preCornerDetect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_putText__0(SEXP img, std::string text, SEXP org, int fontFace, double fontScale, SEXP color, int thickness, int lineType, bool bottomLeftOrigin) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    ::cv::putText(cv::_InputOutputArray(*_p0), text, ropecv::as_point(org), fontFace, fontScale, ropecv::as_scalar(color), thickness, lineType, bottomLeftOrigin);
    return Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img;
  } catch (const cv::Exception& e) {
    Rcpp::stop("putText: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("putText: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_putText__1(SEXP img, std::string text, SEXP org, SEXP color, SEXP fface, int size, int weight, int flags, SEXP wrap) {
  try {
    cv::FontFace& _r0 = *ropecv::obj_as<cv::FontFace>(fface);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    cv::Point _rv = ::cv::putText(cv::_InputOutputArray(*_p0), text, ropecv::as_point(org), ropecv::as_scalar(color), _r0, size, weight, (cv::PutTextFlags)flags, ropecv::as_range(wrap));
    return Rcpp::List::create(Rcpp::Named("value") = ropecv::wrap_point(_rv),
                                Rcpp::Named("img") = Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img);
  } catch (const cv::Exception& e) {
    Rcpp::stop("putText: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("putText: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_pyrDown(SEXP src, SEXP dstsize, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::pyrDown(_i0.ia(), cv::_OutputArray(*_p0), ropecv::as_size(dstsize), borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("pyrDown: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("pyrDown: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_pyrMeanShiftFiltering(SEXP src, double sp, double sr, int maxLevel, SEXP termcrit, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::pyrMeanShiftFiltering(_i0.ia(), cv::_OutputArray(*_p0), sp, sr, maxLevel, ropecv::as_termcriteria(termcrit));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("pyrMeanShiftFiltering: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("pyrMeanShiftFiltering: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_pyrUp(SEXP src, SEXP dstsize, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::pyrUp(_i0.ia(), cv::_OutputArray(*_p0), ropecv::as_size(dstsize), borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("pyrUp: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("pyrUp: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_rectangle__0(SEXP img, SEXP rec, SEXP color, int thickness, int lineType, int shift) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    ::cv::rectangle(cv::_InputOutputArray(*_p0), ropecv::as_rect(rec), ropecv::as_scalar(color), thickness, lineType, shift);
    return Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img;
  } catch (const cv::Exception& e) {
    Rcpp::stop("rectangle: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("rectangle: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_rectangle__1(SEXP img, SEXP pt1, SEXP pt2, SEXP color, int thickness, int lineType, int shift) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    ::cv::rectangle(cv::_InputOutputArray(*_p0), ropecv::as_point(pt1), ropecv::as_point(pt2), ropecv::as_scalar(color), thickness, lineType, shift);
    return Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img;
  } catch (const cv::Exception& e) {
    Rcpp::stop("rectangle: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("rectangle: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_remap(SEXP src, SEXP map1, SEXP map2, int interpolation, int borderMode, SEXP borderValue, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(map1);
    ropecv::InArg _i2(map2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::remap(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _i2.ia(), interpolation, borderMode, ropecv::as_scalar(borderValue));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("remap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("remap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_resize(SEXP src, SEXP dsize, double fx, double fy, int interpolation, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::resize(_i0.ia(), cv::_OutputArray(*_p0), ropecv::as_size(dsize), fx, fy, interpolation);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("resize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("resize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_rotatedRectangleIntersection(SEXP rect1, SEXP rect2, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    int _rv = ::cv::rotatedRectangleIntersection(ropecv::as_rotatedrect(rect1), ropecv::as_rotatedrect(rect2), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarInteger(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("rotatedRectangleIntersection: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("rotatedRectangleIntersection: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_sepFilter2D(SEXP src, int ddepth, SEXP kernelX, SEXP kernelY, SEXP anchor, double delta, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(kernelX);
    ropecv::InArg _i2(kernelY);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::sepFilter2D(_i0.ia(), cv::_OutputArray(*_p0), ddepth, _i1.ia(), _i2.ia(), ropecv::as_point(anchor), delta, borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("sepFilter2D: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("sepFilter2D: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_spatialGradient(SEXP src, int ksize, int borderType, SEXP dx, SEXP dy) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dx) ? &_owned0 : ropecv::mat_ptr(dx);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(dy) ? &_owned1 : ropecv::mat_ptr(dy);
    ::cv::spatialGradient(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), ksize, borderType);
    return Rcpp::List::create(Rcpp::Named("dx") = Rf_isNull(dx) ? ropecv::wrap_mat(std::move(_owned0)) : dx,
                                Rcpp::Named("dy") = Rf_isNull(dy) ? ropecv::wrap_mat(std::move(_owned1)) : dy);
  } catch (const cv::Exception& e) {
    Rcpp::stop("spatialGradient: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("spatialGradient: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_sqrBoxFilter(SEXP src, int ddepth, SEXP ksize, SEXP anchor, bool normalize, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::sqrBoxFilter(_i0.ia(), cv::_OutputArray(*_p0), ddepth, ropecv::as_size(ksize), ropecv::as_point(anchor), normalize, borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("sqrBoxFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("sqrBoxFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stackBlur(SEXP src, SEXP ksize, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::stackBlur(_i0.ia(), cv::_OutputArray(*_p0), ropecv::as_size(ksize));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("stackBlur: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stackBlur: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_threshold(SEXP src, double thresh, double maxval, int type, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    double _rv = ::cv::threshold(_i0.ia(), cv::_OutputArray(*_p0), thresh, maxval, type);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarReal(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("threshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("threshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_warpAffine(SEXP src, SEXP M, SEXP dsize, int flags, int borderMode, SEXP borderValue, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(M);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::warpAffine(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), ropecv::as_size(dsize), flags, borderMode, ropecv::as_scalar(borderValue));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("warpAffine: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("warpAffine: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_warpPerspective(SEXP src, SEXP M, SEXP dsize, int flags, int borderMode, SEXP borderValue, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(M);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::warpPerspective(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), ropecv::as_size(dsize), flags, borderMode, ropecv::as_scalar(borderValue));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("warpPerspective: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("warpPerspective: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_warpPolar(SEXP src, SEXP dsize, SEXP center, double maxRadius, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::warpPolar(_i0.ia(), cv::_OutputArray(*_p0), ropecv::as_size(dsize), ropecv::as_point2f(center), maxRadius, flags);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("warpPolar: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("warpPolar: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_watershed(SEXP image, SEXP markers) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(markers) ? &_owned0 : ropecv::mat_ptr(markers);
    ::cv::watershed(_i0.ia(), cv::_InputOutputArray(*_p0));
    return Rf_isNull(markers) ? ropecv::wrap_mat(std::move(_owned0)) : markers;
  } catch (const cv::Exception& e) {
    Rcpp::stop("watershed: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("watershed: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_wrapperEMD(SEXP signature1, SEXP signature2, int distType, SEXP cost, SEXP lowerBound, SEXP dst) {
  try {
    ropecv::InArg _i0(signature1);
    ropecv::InArg _i1(signature2);
    ropecv::InArg _i2(cost);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    double _rv = ::cv::wrapperEMD(_i0.ia(), _i1.ia(), distType, _i2.ia(), ropecv::as_ptr_prim<float>(lowerBound), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarReal((double)_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("wrapperEMD: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("wrapperEMD: %s", e.what());
  }
}
