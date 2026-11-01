// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/bgsegm.hpp
#include "ropecv.h"
#include <opencv2/bgsegm.hpp>

// [[Rcpp::export]]
SEXP cv_createBackgroundSubtractorCNT(int minPixelStability, bool useHistory, int maxPixelStability, bool isParallel) {
  try {
    cv::Ptr<cv::bgsegm::BackgroundSubtractorCNT> _rv = ::cv::bgsegm::createBackgroundSubtractorCNT(minPixelStability, useHistory, maxPixelStability, isParallel);
    return ropecv::wrap_obj(_rv, "cvBackgroundSubtractorCNT");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createBackgroundSubtractorCNT: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createBackgroundSubtractorCNT: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createBackgroundSubtractorGMG(int initializationFrames, double decisionThreshold) {
  try {
    cv::Ptr<cv::bgsegm::BackgroundSubtractorGMG> _rv = ::cv::bgsegm::createBackgroundSubtractorGMG(initializationFrames, decisionThreshold);
    return ropecv::wrap_obj(_rv, "cvBackgroundSubtractorGMG");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createBackgroundSubtractorGMG: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createBackgroundSubtractorGMG: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createBackgroundSubtractorGSOC(int mc, int nSamples, double replaceRate, double propagationRate, int hitsThreshold, double alpha, double beta, double blinkingSupressionDecay, double blinkingSupressionMultiplier, double noiseRemovalThresholdFacBG, double noiseRemovalThresholdFacFG) {
  try {
    cv::Ptr<cv::bgsegm::BackgroundSubtractorGSOC> _rv = ::cv::bgsegm::createBackgroundSubtractorGSOC(mc, nSamples, (float)replaceRate, (float)propagationRate, hitsThreshold, (float)alpha, (float)beta, (float)blinkingSupressionDecay, (float)blinkingSupressionMultiplier, (float)noiseRemovalThresholdFacBG, (float)noiseRemovalThresholdFacFG);
    return ropecv::wrap_obj(_rv, "cvBackgroundSubtractorGSOC");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createBackgroundSubtractorGSOC: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createBackgroundSubtractorGSOC: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createBackgroundSubtractorLSBP(int mc, int nSamples, int LSBPRadius, double Tlower, double Tupper, double Tinc, double Tdec, double Rscale, double Rincdec, double noiseRemovalThresholdFacBG, double noiseRemovalThresholdFacFG, int LSBPthreshold, int minCount) {
  try {
    cv::Ptr<cv::bgsegm::BackgroundSubtractorLSBP> _rv = ::cv::bgsegm::createBackgroundSubtractorLSBP(mc, nSamples, LSBPRadius, (float)Tlower, (float)Tupper, (float)Tinc, (float)Tdec, (float)Rscale, (float)Rincdec, (float)noiseRemovalThresholdFacBG, (float)noiseRemovalThresholdFacFG, LSBPthreshold, minCount);
    return ropecv::wrap_obj(_rv, "cvBackgroundSubtractorLSBP");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createBackgroundSubtractorLSBP: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createBackgroundSubtractorLSBP: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createBackgroundSubtractorMOG(int history, int nmixtures, double backgroundRatio, double noiseSigma) {
  try {
    cv::Ptr<cv::bgsegm::BackgroundSubtractorMOG> _rv = ::cv::bgsegm::createBackgroundSubtractorMOG(history, nmixtures, backgroundRatio, noiseSigma);
    return ropecv::wrap_obj(_rv, "cvBackgroundSubtractorMOG");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createBackgroundSubtractorMOG: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createBackgroundSubtractorMOG: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createSyntheticSequenceGenerator(SEXP background, SEXP object, double amplitude, double wavelength, double wavespeed, double objspeed) {
  try {
    ropecv::InArg _i0(background);
    ropecv::InArg _i1(object);
    cv::Ptr<cv::bgsegm::SyntheticSequenceGenerator> _rv = ::cv::bgsegm::createSyntheticSequenceGenerator(_i0.ia(), _i1.ia(), amplitude, wavelength, wavespeed, objspeed);
    return ropecv::wrap_obj(_rv, "cvSyntheticSequenceGenerator");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createSyntheticSequenceGenerator: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createSyntheticSequenceGenerator: %s", e.what());
  }
}
