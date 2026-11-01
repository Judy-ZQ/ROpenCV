# 由 tools/gen/emit.py 生成，请勿手改。

#' @title depthTo3d
#' @description ROpenCV 绑定。C++ 签名：<code>void depthTo3d(InputArray depth, InputArray K, OutputArray points3d, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_depthTo3d <- function(depth, K, mask = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_depthTo3d`, depth, K, mask, dst)
}

#' @title depthTo3dSparse
#' @description ROpenCV 绑定。C++ 签名：<code>void depthTo3dSparse(InputArray depth, InputArray in_K, InputArray in_points, OutputArray points3d)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_depthTo3dSparse <- function(depth, in_K, in_points, dst = NULL) {
  .Call(`_ROpenCV_cv_depthTo3dSparse`, depth, in_K, in_points, dst)
}

#' @title findPlanes
#' @description ROpenCV 绑定。C++ 签名：<code>void findPlanes(InputArray points3d, InputArray normals, OutputArray mask, OutputArray plane_coefficients, int block_size, int min_size, double threshold, double sensor_error_a, double sensor_error_b, double sensor_error_c, RgbdPlaneMethod method)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_findPlanes <- function(points3d, normals, block_size = 40, min_size = 1600, threshold = 0.01, sensor_error_a = 0, sensor_error_b = 0, sensor_error_c = 0, method = RGBD_PLANE_METHOD_DEFAULT, mask = NULL, plane_coefficients = NULL) {
  .Call(`_ROpenCV_cv_findPlanes`, points3d, normals, block_size, min_size, threshold, sensor_error_a, sensor_error_b, sensor_error_c, method, mask, plane_coefficients)
}

#' @title registerDepth
#' @description ROpenCV 绑定。C++ 签名：<code>void registerDepth(InputArray unregisteredCameraMatrix, InputArray registeredCameraMatrix, InputArray registeredDistCoeffs, InputArray Rt, InputArray unregisteredDepth, const Size&amp; outputImagePlaneSize, OutputArray registeredDepth, bool depthDilation)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_registerDepth <- function(unregisteredCameraMatrix, registeredCameraMatrix, registeredDistCoeffs, Rt, unregisteredDepth, outputImagePlaneSize, depthDilation = FALSE, dst = NULL) {
  .Call(`_ROpenCV_cv_registerDepth`, unregisteredCameraMatrix, registeredCameraMatrix, registeredDistCoeffs, Rt, unregisteredDepth, outputImagePlaneSize, depthDilation, dst)
}

#' @title rescaleDepth
#' @description ROpenCV 绑定。C++ 签名：<code>void rescaleDepth(InputArray in, int type, OutputArray out, double depth_factor)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_rescaleDepth <- function(in_, type, depth_factor = 1000.0, dst = NULL) {
  .Call(`_ROpenCV_cv_rescaleDepth`, in_, type, depth_factor, dst)
}

#' @title warpFrame
#' @description ROpenCV 绑定。C++ 签名：<code>void warpFrame(InputArray depth, InputArray image, InputArray mask, InputArray Rt, InputArray cameraMatrix, OutputArray warpedDepth, OutputArray warpedImage, OutputArray warpedMask)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_warpFrame <- function(depth, image, mask = NULL, Rt, cameraMatrix, warpedDepth = NULL, warpedImage = NULL, warpedMask = NULL) {
  .Call(`_ROpenCV_cv_warpFrame`, depth, image, mask, Rt, cameraMatrix, warpedDepth, warpedImage, warpedMask)
}
