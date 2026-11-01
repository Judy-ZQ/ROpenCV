# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::saliency::Saliency
.ropecv_reg("cvSaliency",
  new = list(

  ),
  m = list(
    computeSaliency = list(
      list(f = .ropecv_cv_saliency_Saliency_Saliency_computeSaliency__0, p = c(image = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "image, dst = NULL")
    )
  )
)

# cv::saliency::StaticSaliency
.ropecv_reg("cvStaticSaliency",
  new = list(

  ),
  m = list(
    computeBinaryMap = list(
      list(f = .ropecv_cv_saliency_StaticSaliency_StaticSaliency_computeBinaryMap__0, p = c(saliencyMap = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "saliencyMap, dst = NULL")
    )
  )
)
