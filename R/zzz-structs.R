# 由 tools/gen/emit.py --structs 生成，请勿手改。
# 结构体参数的字段名表（C++ 字段名 = R 侧命名 list 的 name）。

.ropecv_struct_tbl <- list(
  "cv::CirclesGridFinderParameters" = c("densityNeighborhoodSize", "minDensity", "kmeansAttempts", "minDistanceToAddKeypoint", "keypointScale", "minGraphConfidence", "vertexGain", "vertexPenalty", "existingVertexGain", "edgeGain", "edgePenalty", "convexHullFactor", "minRNGEdgeSwitchDist", "squareSize", "maxRectifiedDistance"),
  "cv::DMatch" = c("queryIdx", "trainIdx", "imgIdx", "distance"),
  "cv::Filter2DParams" = c("anchorX", "anchorY", "borderType", "borderValue", "ddepth", "scale", "shift"),
  "cv::QRCodeDetectorAruco::Params" = c("minModuleSizeInPyramid", "maxRotation", "maxModuleSizeMismatch", "maxTimingPatternMismatch", "maxPenalties", "maxColorsMismatch", "scaleTimingPatternScore"),
  "cv::QRCodeEncoder::Params" = c("version", "correction_level", "mode", "structure_number"),
  "cv::SimpleBlobDetector::Params" = c("thresholdStep", "minThreshold", "maxThreshold", "minRepeatability", "minDistBetweenBlobs", "filterByColor", "blobColor", "filterByArea", "minArea", "maxArea", "filterByCircularity", "minCircularity", "maxCircularity", "filterByInertia", "minInertiaRatio", "maxInertiaRatio", "filterByConvexity", "minConvexity", "maxConvexity", "collectContours"),
  "cv::TrackerDaSiamRPN::Params" = c("model", "kernel_cls1", "kernel_r1", "backend", "target"),
  "cv::TrackerMIL::Params" = c("samplerInitInRadius", "samplerInitMaxNegNum", "samplerSearchWinSize", "samplerTrackInRadius", "samplerTrackMaxPosNum", "samplerTrackMaxNegNum", "featureSetNumFeatures"),
  "cv::TrackerNano::Params" = c("backbone", "neckhead", "backend", "target"),
  "cv::TrackerVit::Params" = c("net", "backend", "target", "meanvalue", "stdvalue", "tracking_score_threshold"),
  "cv::UsacParams" = c("confidence", "isParallel", "loIterations", "loMethod", "loSampleSize", "maxIterations", "neighborsSearch", "randomGeneratorState", "sampler", "score", "threshold", "final_polisher", "final_polisher_iterations"),
  "cv::aruco::CharucoParameters" = c("cameraMatrix", "distCoeffs", "minMarkers", "tryRefineMarkers"),
  "cv::aruco::DetectorParameters" = c("adaptiveThreshWinSizeMin", "adaptiveThreshWinSizeMax", "adaptiveThreshWinSizeStep", "adaptiveThreshConstant", "minMarkerPerimeterRate", "maxMarkerPerimeterRate", "polygonalApproxAccuracyRate", "minCornerDistanceRate", "minDistanceToBorder", "minMarkerDistanceRate", "minGroupDistance", "cornerRefinementMethod", "cornerRefinementWinSize", "relativeCornerRefinmentWinSize", "cornerRefinementMaxIterations", "cornerRefinementMinAccuracy", "markerBorderBits", "perspectiveRemovePixelPerCell", "perspectiveRemoveIgnoredMarginPerCell", "maxErroneousBitsInBorderRate", "minOtsuStdDev", "errorCorrectionRate", "aprilTagQuadDecimate", "aprilTagQuadSigma", "aprilTagMinClusterPixels", "aprilTagMaxNmaxima", "aprilTagCriticalRad", "aprilTagMaxLineFitMse", "aprilTagMinWhiteBlackDiff", "aprilTagDeglitch", "detectInvertedMarker", "useAruco3Detection", "minSideLengthCanonicalImg", "minMarkerLengthRatioOriginalImg"),
  "cv::aruco::RefineParameters" = c("minRepDistance", "errorCorrectionRate", "checkAllOrders"),
  "cv::detail::ImageFeatures" = c("img_idx", "img_size", "keypoints", "descriptors"),
  "cv::detail::MatchesInfo" = c("src_img_idx", "dst_img_idx", "matches", "inliers_mask", "num_inliers", "H", "confidence"),
  "cv::kinfu::VolumeParams" = c("kind", "resolutionX", "resolutionY", "resolutionZ", "unitResolution", "volumSize", "pose", "voxelSize", "tsdfTruncDist", "maxWeight", "depthTruncThreshold", "raycastStepFactor"),
  "cv::large_kinfu::VolumeParams" = c("kind", "resolutionX", "resolutionY", "resolutionZ", "unitResolution", "volumSize", "pose", "voxelSize", "tsdfTruncDist", "maxWeight", "depthTruncThreshold", "raycastStepFactor"),
  "cv::line_descriptor::KeyLine" = c("angle", "class_id", "octave", "pt", "response", "size", "startPointX", "startPointY", "endPointX", "endPointY", "sPointInOctaveX", "sPointInOctaveY", "ePointInOctaveX", "ePointInOctaveY", "lineLength", "numOfPixels"),
  "cv::line_descriptor::LSDParam" = c("scale", "sigma_scale", "quant", "ang_th", "log_eps", "density_th", "n_bins"),
  "cv::linemod::Feature" = c("x", "y", "label"),
  "cv::linemod::Match" = c("x", "y", "similarity", "class_id", "template_id"),
  "cv::linemod::Template" = c("width", "height", "pyramid_level", "features"),
  "cv::mcc::DetectorParameters" = c("adaptiveThreshWinSizeMin", "adaptiveThreshWinSizeMax", "adaptiveThreshWinSizeStep", "adaptiveThreshConstant", "minContoursAreaRate", "minContoursArea", "confidenceThreshold", "minContourSolidity", "findCandidatesApproxPolyDPEpsMultiplier", "borderWidth", "B0factor", "maxError", "minContourPointsAllowed", "minContourLengthAllowed", "minInterContourDistance", "minInterCheckerDistance", "minImageSize", "minGroupSize"),
  "cv::ml::ParamGrid" = c("minVal", "maxVal", "logStep"),
  "cv::phase_unwrapping::HistogramPhaseUnwrapping::Params" = c("width", "height", "histThresh", "nbrOfSmallBins", "nbrOfLargeBins"),
  "cv::stereo::MatchQuasiDense" = c("p0", "p1", "corr"),
  "cv::stereo::PropagationParameters" = c("corrWinSizeX", "corrWinSizeY", "borderX", "borderY", "correlationThreshold", "textrureThreshold", "neighborhoodSize", "disparityGradient", "lkTemplateSize", "lkPyrLvl", "lkTermParam1", "lkTermParam2", "gftQualityThres", "gftMinSeperationDist", "gftMaxNumFeatures"),
  "cv::structured_light::SinusoidalPattern::Params" = c("width", "height", "nbrOfPeriods", "shiftValue", "methodId", "nbrOfPixelsBetweenMarkers", "horizontal", "setMarkers"),
  "cv::tracking::TrackerCSRT::Params" = c("use_hog", "use_color_names", "use_gray", "use_rgb", "use_channel_weights", "use_segmentation", "window_function", "kaiser_alpha", "cheb_attenuation", "template_size", "gsl_sigma", "hog_orientations", "hog_clip", "padding", "filter_lr", "weights_lr", "num_hog_channels_used", "admm_iterations", "histogram_bins", "histogram_lr", "background_ratio", "number_of_scales", "scale_sigma_factor", "scale_model_max_area", "scale_lr", "scale_step", "psr_threshold"),
  "cv::tracking::TrackerKCF::Params" = c("detect_thresh", "sigma", "lambda", "interp_factor", "output_sigma_factor", "pca_learning_rate", "resize", "split_coeff", "wrap_kernel", "compress_feature", "max_patch_size", "compressed_size", "desc_pca", "desc_npca"),
  "cv::utils::ClassWithKeywordProperties" = c("lambda"),
  "cv::utils::FunctionParams" = c("lambda", "sigma"),
  "cv::ximgproc::EdgeDrawing::Params" = c("PFmode", "EdgeDetectionOperator", "GradientThresholdValue", "AnchorThresholdValue", "ScanInterval", "MinPathLength", "Sigma", "SumFlag", "NFAValidation", "MinLineLength", "MaxDistanceBetweenTwoLines", "LineFitErrorThreshold", "MaxErrorThreshold")

)

#' 结构体参数的字段名
#'
#' 这些 struct 在 R 侧就是命名 list，名字与 C++ 字段一一对应；
#' 只写关心的字段，其余保留 OpenCV 的默认值。字段名拼错会直接报错。
#'
#' @param name 结构体名，可省略 cv:: 前缀；不传则列出全部。
#' @return 字段名向量，或全部结构体名。
#' @examples
#' cv_struct_fields("SimpleBlobDetector::Params")
#' cvSimpleBlobDetector(list(minThreshold = 10, filterByArea = TRUE))
#' @export
cv_struct_fields <- function(name = NULL) {
  if (is.null(name)) return(names(.ropecv_struct_tbl))
  nms <- names(.ropecv_struct_tbl)
  # 允许省略中间的命名空间：cv::TrackerKCF::Params
  #                       -> cv::tracking::TrackerKCF::Params
  q <- sub("^cv::", "", name)
  hit <- nms[nms == name | nms == paste0("cv::", name) |
             endsWith(nms, paste0("::", q))]
  if (length(hit) > 1L)
    stop("'", name, "' is ambiguous, candidates: ", paste(hit, collapse = ", "))
  if (!length(hit))
    stop("no such struct '", name, "'. Available: ", paste(nms, collapse = ", "))
  .ropecv_struct_tbl[[hit[1]]]
}