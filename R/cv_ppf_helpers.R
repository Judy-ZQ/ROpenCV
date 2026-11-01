# 由 tools/gen/emit.py 生成，请勿手改。

#' @title addNoisePC
#' @description ROpenCV 绑定。C++ 签名：<code>Mat addNoisePC(Mat pc, double scale)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_addNoisePC <- function(pc, scale) {
  .Call(`_ROpenCV_cv_addNoisePC`, pc, scale)
}

#' @title computeBboxStd
#' @description ROpenCV 绑定。C++ 签名：<code>void computeBboxStd(Mat pc, Vec2f&amp; xRange, Vec2f&amp; yRange, Vec2f&amp; zRange)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_computeBboxStd <- function(pc, xRange = NULL, yRange = NULL, zRange = NULL) {
  .Call(`_ROpenCV_cv_computeBboxStd`, pc, xRange, yRange, zRange)
}

#' @title computeNormalsPC3d
#' @description ROpenCV 绑定。C++ 签名：<code>int computeNormalsPC3d(const Mat&amp; PC, Mat&amp; PCNormals, const int NumNeighbors, const bool FlipViewpoint, const Vec3f&amp; viewpoint)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_computeNormalsPC3d <- function(PC, NumNeighbors, FlipViewpoint, viewpoint) {
  .Call(`_ROpenCV_cv_computeNormalsPC3d`, PC, NumNeighbors, FlipViewpoint, viewpoint)
}

#' @title getRandomPose
#' @description ROpenCV 绑定。C++ 签名：<code>void getRandomPose(Matx44d&amp; Pose)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getRandomPose <- function(Pose = NULL) {
  .Call(`_ROpenCV_cv_getRandomPose`, Pose)
}

#' @title loadPLYSimple
#' @description ROpenCV 绑定。C++ 签名：<code>Mat loadPLYSimple(const char* fileName, int withNormals)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_loadPLYSimple <- function(fileName, withNormals = 0) {
  .Call(`_ROpenCV_cv_loadPLYSimple`, fileName, withNormals)
}

#' @title normalizePCCoeff
#' @description ROpenCV 绑定。C++ 签名：<code>Mat normalizePCCoeff(Mat pc, float scale, float* Cx, float* Cy, float* Cz, float* MinVal, float* MaxVal)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_normalizePCCoeff <- function(pc, scale) {
  .Call(`_ROpenCV_cv_normalizePCCoeff`, pc, scale)
}

#' @title samplePCByQuantization
#' @description ROpenCV 绑定。C++ 签名：<code>Mat samplePCByQuantization(Mat pc, Vec2f&amp; xrange, Vec2f&amp; yrange, Vec2f&amp; zrange, float sample_step_relative, int weightByCenter)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_samplePCByQuantization <- function(pc, xrange = NULL, yrange = NULL, zrange = NULL, sample_step_relative, weightByCenter = 0) {
  .Call(`_ROpenCV_cv_samplePCByQuantization`, pc, xrange, yrange, zrange, sample_step_relative, weightByCenter)
}

#' @title samplePCUniform
#' @description ROpenCV 绑定。C++ 签名：<code>Mat samplePCUniform(Mat PC, int sampleStep)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_samplePCUniform <- function(PC, sampleStep) {
  .Call(`_ROpenCV_cv_samplePCUniform`, PC, sampleStep)
}

#' @title samplePCUniformInd
#' @description ROpenCV 绑定。C++ 签名：<code>Mat samplePCUniformInd(Mat PC, int sampleStep, std::vector&lt;int&gt;&amp; indices)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_samplePCUniformInd <- function(PC, sampleStep, indices = NULL) {
  .Call(`_ROpenCV_cv_samplePCUniformInd`, PC, sampleStep, indices)
}

#' @title transPCCoeff
#' @description ROpenCV 绑定。C++ 签名：<code>Mat transPCCoeff(Mat pc, float scale, float Cx, float Cy, float Cz, float MinVal, float MaxVal)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_transPCCoeff <- function(pc, scale, Cx, Cy, Cz, MinVal, MaxVal) {
  .Call(`_ROpenCV_cv_transPCCoeff`, pc, scale, Cx, Cy, Cz, MinVal, MaxVal)
}

#' @title transformPCPose
#' @description ROpenCV 绑定。C++ 签名：<code>Mat transformPCPose(Mat pc, const Matx44d&amp; Pose)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_transformPCPose <- function(pc, Pose) {
  .Call(`_ROpenCV_cv_transformPCPose`, pc, Pose)
}

#' @title writePLY
#' @description ROpenCV 绑定。C++ 签名：<code>void writePLY(Mat PC, const char* fileName)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_writePLY <- function(PC, fileName) {
  .Call(`_ROpenCV_cv_writePLY`, PC, fileName)
}

#' @title writePLYVisibleNormals
#' @description ROpenCV 绑定。C++ 签名：<code>void writePLYVisibleNormals(Mat PC, const char* fileName)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_writePLYVisibleNormals <- function(PC, fileName) {
  .Call(`_ROpenCV_cv_writePLYVisibleNormals`, PC, fileName)
}
