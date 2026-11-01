# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createBackgroundSubtractorCNT
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;BackgroundSubtractorCNT&gt; createBackgroundSubtractorCNT(int minPixelStability, bool useHistory, int maxPixelStability, bool isParallel)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createBackgroundSubtractorCNT <- function(minPixelStability = 15, useHistory = TRUE, maxPixelStability = 900, isParallel = TRUE) {
  .Call(`_ROpenCV_cv_createBackgroundSubtractorCNT`, minPixelStability, useHistory, maxPixelStability, isParallel)
}

#' @title createBackgroundSubtractorGMG
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;BackgroundSubtractorGMG&gt; createBackgroundSubtractorGMG(int initializationFrames, double decisionThreshold)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createBackgroundSubtractorGMG <- function(initializationFrames = 120, decisionThreshold = 0.8) {
  .Call(`_ROpenCV_cv_createBackgroundSubtractorGMG`, initializationFrames, decisionThreshold)
}

#' @title createBackgroundSubtractorGSOC
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;BackgroundSubtractorGSOC&gt; createBackgroundSubtractorGSOC(int mc, int nSamples, float replaceRate, float propagationRate, int hitsThreshold, float alpha, float beta, float blinkingSupressionDecay, float blinkingSupressionMultiplier, float noiseRemovalThresholdFacBG, float noiseRemovalThresholdFacFG)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createBackgroundSubtractorGSOC <- function(mc = LSBP_CAMERA_MOTION_COMPENSATION_NONE, nSamples = 20, replaceRate = 0.003, propagationRate = 0.01, hitsThreshold = 32, alpha = 0.01, beta = 0.0022, blinkingSupressionDecay = 0.1, blinkingSupressionMultiplier = 0.1, noiseRemovalThresholdFacBG = 0.0004, noiseRemovalThresholdFacFG = 0.0008) {
  .Call(`_ROpenCV_cv_createBackgroundSubtractorGSOC`, mc, nSamples, replaceRate, propagationRate, hitsThreshold, alpha, beta, blinkingSupressionDecay, blinkingSupressionMultiplier, noiseRemovalThresholdFacBG, noiseRemovalThresholdFacFG)
}

#' @title createBackgroundSubtractorLSBP
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;BackgroundSubtractorLSBP&gt; createBackgroundSubtractorLSBP(int mc, int nSamples, int LSBPRadius, float Tlower, float Tupper, float Tinc, float Tdec, float Rscale, float Rincdec, float noiseRemovalThresholdFacBG, float noiseRemovalThresholdFacFG, int LSBPthreshold, int minCount)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createBackgroundSubtractorLSBP <- function(mc = LSBP_CAMERA_MOTION_COMPENSATION_NONE, nSamples = 20, LSBPRadius = 16, Tlower = 2.0, Tupper = 32.0, Tinc = 1.0, Tdec = 0.05, Rscale = 10.0, Rincdec = 0.005, noiseRemovalThresholdFacBG = 0.0004, noiseRemovalThresholdFacFG = 0.0008, LSBPthreshold = 8, minCount = 2) {
  .Call(`_ROpenCV_cv_createBackgroundSubtractorLSBP`, mc, nSamples, LSBPRadius, Tlower, Tupper, Tinc, Tdec, Rscale, Rincdec, noiseRemovalThresholdFacBG, noiseRemovalThresholdFacFG, LSBPthreshold, minCount)
}

#' @title createBackgroundSubtractorMOG
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;BackgroundSubtractorMOG&gt; createBackgroundSubtractorMOG(int history, int nmixtures, double backgroundRatio, double noiseSigma)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createBackgroundSubtractorMOG <- function(history = 200, nmixtures = 5, backgroundRatio = 0.7, noiseSigma = 0) {
  .Call(`_ROpenCV_cv_createBackgroundSubtractorMOG`, history, nmixtures, backgroundRatio, noiseSigma)
}

#' @title createSyntheticSequenceGenerator
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;SyntheticSequenceGenerator&gt; createSyntheticSequenceGenerator(InputArray background, InputArray object, double amplitude, double wavelength, double wavespeed, double objspeed)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createSyntheticSequenceGenerator <- function(background, object, amplitude = 2.0, wavelength = 20.0, wavespeed = 0.2, objspeed = 6.0) {
  .Call(`_ROpenCV_cv_createSyntheticSequenceGenerator`, background, object, amplitude, wavelength, wavespeed, objspeed)
}
