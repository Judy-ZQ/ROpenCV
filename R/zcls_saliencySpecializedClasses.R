# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::saliency::MotionSaliencyBinWangApr2014
.ropecv_reg("cvMotionSaliencyBinWangApr2014",
  new = list(
    list(f = .ropecv_cv_saliency_MotionSaliencyBinWangApr2014_MotionSaliencyBinWangApr2014_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    computeSaliency = list(
      list(f = .ropecv_cv_saliency_MotionSaliencyBinWangApr2014_MotionSaliencyBinWangApr2014_computeSaliency__0, p = c(image = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "image, dst = NULL")
    ),
    getImageHeight = list(
      list(f = .ropecv_cv_saliency_MotionSaliencyBinWangApr2014_MotionSaliencyBinWangApr2014_getImageHeight__0, p = c(), r = c(), s = "")
    ),
    getImageWidth = list(
      list(f = .ropecv_cv_saliency_MotionSaliencyBinWangApr2014_MotionSaliencyBinWangApr2014_getImageWidth__0, p = c(), r = c(), s = "")
    ),
    init = list(
      list(f = .ropecv_cv_saliency_MotionSaliencyBinWangApr2014_MotionSaliencyBinWangApr2014_init__0, p = c(), r = c(), s = "")
    ),
    setImageHeight = list(
      list(f = .ropecv_cv_saliency_MotionSaliencyBinWangApr2014_MotionSaliencyBinWangApr2014_setImageHeight__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setImageWidth = list(
      list(f = .ropecv_cv_saliency_MotionSaliencyBinWangApr2014_MotionSaliencyBinWangApr2014_setImageWidth__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setImagesize = list(
      list(f = .ropecv_cv_saliency_MotionSaliencyBinWangApr2014_MotionSaliencyBinWangApr2014_setImagesize__0, p = c(W = "int", H = "int"), r = c(TRUE, TRUE), s = "W, H")
    )
  )
)

# cv::saliency::ObjectnessBING
.ropecv_reg("cvObjectnessBING",
  new = list(
    list(f = .ropecv_cv_saliency_ObjectnessBING_ObjectnessBING_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    computeSaliency = list(
      list(f = .ropecv_cv_saliency_ObjectnessBING_ObjectnessBING_computeSaliency__0, p = c(image = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "image, dst = NULL")
    ),
    getBase = list(
      list(f = .ropecv_cv_saliency_ObjectnessBING_ObjectnessBING_getBase__0, p = c(), r = c(), s = "")
    ),
    getNSS = list(
      list(f = .ropecv_cv_saliency_ObjectnessBING_ObjectnessBING_getNSS__0, p = c(), r = c(), s = "")
    ),
    getW = list(
      list(f = .ropecv_cv_saliency_ObjectnessBING_ObjectnessBING_getW__0, p = c(), r = c(), s = "")
    ),
    getobjectnessValues = list(
      list(f = .ropecv_cv_saliency_ObjectnessBING_ObjectnessBING_getobjectnessValues__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_saliency_ObjectnessBING_ObjectnessBING_read__0, p = c(), r = c(), s = "")
    ),
    setBBResDir = list(
      list(f = .ropecv_cv_saliency_ObjectnessBING_ObjectnessBING_setBBResDir__0, p = c(resultsDir = "chr"), r = c(TRUE), s = "resultsDir")
    ),
    setBase = list(
      list(f = .ropecv_cv_saliency_ObjectnessBING_ObjectnessBING_setBase__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setNSS = list(
      list(f = .ropecv_cv_saliency_ObjectnessBING_ObjectnessBING_setNSS__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setTrainingPath = list(
      list(f = .ropecv_cv_saliency_ObjectnessBING_ObjectnessBING_setTrainingPath__0, p = c(trainingPath = "chr"), r = c(TRUE), s = "trainingPath")
    ),
    setW = list(
      list(f = .ropecv_cv_saliency_ObjectnessBING_ObjectnessBING_setW__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    write = list(
      list(f = .ropecv_cv_saliency_ObjectnessBING_ObjectnessBING_write__0, p = c(), r = c(), s = "")
    )
  )
)

# cv::saliency::StaticSaliencyFineGrained
.ropecv_reg("cvStaticSaliencyFineGrained",
  new = list(
    list(f = .ropecv_cv_saliency_StaticSaliencyFineGrained_StaticSaliencyFineGrained_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    computeBinaryMap = list(
      list(f = .ropecv_cv_saliency_StaticSaliency_StaticSaliency_computeBinaryMap__0, p = c(saliencyMap = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "saliencyMap, dst = NULL")
    ),
    computeSaliency = list(
      list(f = .ropecv_cv_saliency_StaticSaliencyFineGrained_StaticSaliencyFineGrained_computeSaliency__0, p = c(image = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "image, dst = NULL")
    )
  )
)

# cv::saliency::StaticSaliencySpectralResidual
.ropecv_reg("cvStaticSaliencySpectralResidual",
  new = list(
    list(f = .ropecv_cv_saliency_StaticSaliencySpectralResidual_StaticSaliencySpectralResidual_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    computeBinaryMap = list(
      list(f = .ropecv_cv_saliency_StaticSaliency_StaticSaliency_computeBinaryMap__0, p = c(saliencyMap = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "saliencyMap, dst = NULL")
    ),
    computeSaliency = list(
      list(f = .ropecv_cv_saliency_StaticSaliencySpectralResidual_StaticSaliencySpectralResidual_computeSaliency__0, p = c(image = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "image, dst = NULL")
    ),
    getImageHeight = list(
      list(f = .ropecv_cv_saliency_StaticSaliencySpectralResidual_StaticSaliencySpectralResidual_getImageHeight__0, p = c(), r = c(), s = "")
    ),
    getImageWidth = list(
      list(f = .ropecv_cv_saliency_StaticSaliencySpectralResidual_StaticSaliencySpectralResidual_getImageWidth__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_saliency_StaticSaliencySpectralResidual_StaticSaliencySpectralResidual_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    setImageHeight = list(
      list(f = .ropecv_cv_saliency_StaticSaliencySpectralResidual_StaticSaliencySpectralResidual_setImageHeight__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setImageWidth = list(
      list(f = .ropecv_cv_saliency_StaticSaliencySpectralResidual_StaticSaliencySpectralResidual_setImageWidth__0, p = c(val = "int"), r = c(TRUE), s = "val")
    )
  )
)
