# 由 tools/gen/emit.py 生成，请勿手改。

#' @title calibrateCamera
#' @description ROpenCV 绑定。C++ 签名：<code>double calibrateCamera(InputArrayOfArrays objectPoints, InputArrayOfArrays imagePoints, Size imageSize, InputOutputArray cameraMatrix, InputOutputArray distCoeffs, OutputArrayOfArrays rvecs, OutputArrayOfArrays tvecs, int flags, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_calibrateCamera__0 <- function(objectPoints, imagePoints, imageSize, cameraMatrix = NULL, distCoeffs = NULL, flags = 0, criteria = c(5, 100, 2.220446049250313e-16), rvecs = NULL, tvecs = NULL) {
  .Call(`_ROpenCV_cv_calibrateCamera__0`, objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, flags, criteria, rvecs, tvecs)
}

#' @title calibrateCamera
#' @description ROpenCV 绑定。C++ 签名：<code>double calibrateCamera(InputArrayOfArrays objectPoints, InputArrayOfArrays imagePoints, Size imageSize, InputOutputArray cameraMatrix, InputOutputArray distCoeffs, OutputArrayOfArrays rvecs, OutputArrayOfArrays tvecs, OutputArray stdDeviationsIntrinsics, OutputArray stdDeviationsExtrinsics, OutputArray perViewErrors, int flags, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_calibrateCamera__1 <- function(objectPoints, imagePoints, imageSize, cameraMatrix = NULL, distCoeffs = NULL, flags = 0, criteria = c(5, 100, 2.220446049250313e-16), rvecs = NULL, tvecs = NULL, stdDeviationsIntrinsics = NULL, stdDeviationsExtrinsics = NULL, perViewErrors = NULL) {
  .Call(`_ROpenCV_cv_calibrateCamera__1`, objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, flags, criteria, rvecs, tvecs, stdDeviationsIntrinsics, stdDeviationsExtrinsics, perViewErrors)
}

# cv_calibrateCamera
#' @rdname cv_calibrateCamera
#' @export
cv_calibrateCamera <- local({
  .sigs <- list(
    list(f = .ropecv_cv_calibrateCamera__0, p = c(objectPoints = "matlist", imagePoints = "matlist", imageSize = "size", cameraMatrix = "mat", distCoeffs = "mat", flags = "int", criteria = "tc", rvecs = "lst", tvecs = "lst"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "objectPoints, imagePoints, imageSize, cameraMatrix = NULL, distCoeffs = NULL, flags = 0, criteria = c(5, 100, 2.220446049250313e-16), rvecs = NULL, tvecs = NULL"),
    list(f = .ropecv_cv_calibrateCamera__1, p = c(objectPoints = "matlist", imagePoints = "matlist", imageSize = "size", cameraMatrix = "mat", distCoeffs = "mat", flags = "int", criteria = "tc", rvecs = "lst", tvecs = "lst", stdDeviationsIntrinsics = "mat", stdDeviationsExtrinsics = "mat", perViewErrors = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "objectPoints, imagePoints, imageSize, cameraMatrix = NULL, distCoeffs = NULL, flags = 0, criteria = c(5, 100, 2.220446049250313e-16), rvecs = NULL, tvecs = NULL, stdDeviationsIntrinsics = NULL, stdDeviationsExtrinsics = NULL, perViewErrors = NULL")
  )
  function(...) .ropecv_pick("cv_calibrateCamera", .sigs, list(...))
})

#' @title calibrateCameraRO
#' @description ROpenCV 绑定。C++ 签名：<code>double calibrateCameraRO(InputArrayOfArrays objectPoints, InputArrayOfArrays imagePoints, Size imageSize, int iFixedPoint, InputOutputArray cameraMatrix, InputOutputArray distCoeffs, OutputArrayOfArrays rvecs, OutputArrayOfArrays tvecs, OutputArray newObjPoints, int flags, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_calibrateCameraRO__0 <- function(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix = NULL, distCoeffs = NULL, flags = 0, criteria = c(5, 100, 2.220446049250313e-16), rvecs = NULL, tvecs = NULL, newObjPoints = NULL) {
  .Call(`_ROpenCV_cv_calibrateCameraRO__0`, objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, flags, criteria, rvecs, tvecs, newObjPoints)
}

#' @title calibrateCameraRO
#' @description ROpenCV 绑定。C++ 签名：<code>double calibrateCameraRO(InputArrayOfArrays objectPoints, InputArrayOfArrays imagePoints, Size imageSize, int iFixedPoint, InputOutputArray cameraMatrix, InputOutputArray distCoeffs, OutputArrayOfArrays rvecs, OutputArrayOfArrays tvecs, OutputArray newObjPoints, OutputArray stdDeviationsIntrinsics, OutputArray stdDeviationsExtrinsics, OutputArray stdDeviationsObjPoints, OutputArray perViewErrors, int flags, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_calibrateCameraRO__1 <- function(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix = NULL, distCoeffs = NULL, flags = 0, criteria = c(5, 100, 2.220446049250313e-16), rvecs = NULL, tvecs = NULL, newObjPoints = NULL, stdDeviationsIntrinsics = NULL, stdDeviationsExtrinsics = NULL, stdDeviationsObjPoints = NULL, perViewErrors = NULL) {
  .Call(`_ROpenCV_cv_calibrateCameraRO__1`, objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, flags, criteria, rvecs, tvecs, newObjPoints, stdDeviationsIntrinsics, stdDeviationsExtrinsics, stdDeviationsObjPoints, perViewErrors)
}

# cv_calibrateCameraRO
#' @rdname cv_calibrateCameraRO
#' @export
cv_calibrateCameraRO <- local({
  .sigs <- list(
    list(f = .ropecv_cv_calibrateCameraRO__0, p = c(objectPoints = "matlist", imagePoints = "matlist", imageSize = "size", iFixedPoint = "int", cameraMatrix = "mat", distCoeffs = "mat", flags = "int", criteria = "tc", rvecs = "lst", tvecs = "lst", newObjPoints = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix = NULL, distCoeffs = NULL, flags = 0, criteria = c(5, 100, 2.220446049250313e-16), rvecs = NULL, tvecs = NULL, newObjPoints = NULL"),
    list(f = .ropecv_cv_calibrateCameraRO__1, p = c(objectPoints = "matlist", imagePoints = "matlist", imageSize = "size", iFixedPoint = "int", cameraMatrix = "mat", distCoeffs = "mat", flags = "int", criteria = "tc", rvecs = "lst", tvecs = "lst", newObjPoints = "mat", stdDeviationsIntrinsics = "mat", stdDeviationsExtrinsics = "mat", stdDeviationsObjPoints = "mat", perViewErrors = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix = NULL, distCoeffs = NULL, flags = 0, criteria = c(5, 100, 2.220446049250313e-16), rvecs = NULL, tvecs = NULL, newObjPoints = NULL, stdDeviationsIntrinsics = NULL, stdDeviationsExtrinsics = NULL, stdDeviationsObjPoints = NULL, perViewErrors = NULL")
  )
  function(...) .ropecv_pick("cv_calibrateCameraRO", .sigs, list(...))
})

#' @title calibrateHandEye
#' @description ROpenCV 绑定。C++ 签名：<code>void calibrateHandEye(InputArrayOfArrays R_gripper2base, InputArrayOfArrays t_gripper2base, InputArrayOfArrays R_target2cam, InputArrayOfArrays t_target2cam, OutputArray R_cam2gripper, OutputArray t_cam2gripper, HandEyeCalibrationMethod method)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_calibrateHandEye <- function(R_gripper2base, t_gripper2base, R_target2cam, t_target2cam, method = CALIB_HAND_EYE_TSAI, R_cam2gripper = NULL, t_cam2gripper = NULL) {
  .Call(`_ROpenCV_cv_calibrateHandEye`, R_gripper2base, t_gripper2base, R_target2cam, t_target2cam, method, R_cam2gripper, t_cam2gripper)
}

#' @title calibrateMultiview
#' @description ROpenCV 绑定。C++ 签名：<code>double calibrateMultiview(InputArrayOfArrays objPoints, const std::vector&lt;std::vector&lt;Mat&gt;&gt; &amp; imagePoints, const std::vector&lt;Size&gt; &amp; imageSize, InputArray detectionMask, OutputArrayOfArrays Rs, OutputArrayOfArrays Ts, std::vector&lt;Mat&gt; &amp; Ks, std::vector&lt;Mat&gt; &amp; distortions, OutputArrayOfArrays rvecs0, OutputArrayOfArrays tvecs0, InputArray isFisheye, OutputArray perFrameErrors, OutputArray initializationPairs, bool useIntrinsicsGuess, InputArray flagsForIntrinsics)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_calibrateMultiview <- function(objPoints, imagePoints, imageSize, detectionMask, Ks = NULL, distortions = NULL, isFisheye, useIntrinsicsGuess = FALSE, flagsForIntrinsics = NULL, Rs = NULL, Ts = NULL, rvecs0 = NULL, tvecs0 = NULL, perFrameErrors = NULL, initializationPairs = NULL) {
  .Call(`_ROpenCV_cv_calibrateMultiview`, objPoints, imagePoints, imageSize, detectionMask, Ks, distortions, isFisheye, useIntrinsicsGuess, flagsForIntrinsics, Rs, Ts, rvecs0, tvecs0, perFrameErrors, initializationPairs)
}

#' @title calibrateRobotWorldHandEye
#' @description ROpenCV 绑定。C++ 签名：<code>void calibrateRobotWorldHandEye(InputArrayOfArrays R_world2cam, InputArrayOfArrays t_world2cam, InputArrayOfArrays R_base2gripper, InputArrayOfArrays t_base2gripper, OutputArray R_base2world, OutputArray t_base2world, OutputArray R_gripper2cam, OutputArray t_gripper2cam, RobotWorldHandEyeCalibrationMethod method)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_calibrateRobotWorldHandEye <- function(R_world2cam, t_world2cam, R_base2gripper, t_base2gripper, method = CALIB_ROBOT_WORLD_HAND_EYE_SHAH, R_base2world = NULL, t_base2world = NULL, R_gripper2cam = NULL, t_gripper2cam = NULL) {
  .Call(`_ROpenCV_cv_calibrateRobotWorldHandEye`, R_world2cam, t_world2cam, R_base2gripper, t_base2gripper, method, R_base2world, t_base2world, R_gripper2cam, t_gripper2cam)
}

#' @title calibrationMatrixValues
#' @description ROpenCV 绑定。C++ 签名：<code>void calibrationMatrixValues(InputArray cameraMatrix, Size imageSize, double apertureWidth, double apertureHeight, double&amp; fovx, double&amp; fovy, double&amp; focalLength, Point2d&amp; principalPoint, double&amp; aspectRatio)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_calibrationMatrixValues <- function(cameraMatrix, imageSize, apertureWidth, apertureHeight) {
  .Call(`_ROpenCV_cv_calibrationMatrixValues`, cameraMatrix, imageSize, apertureWidth, apertureHeight)
}

#' @title checkChessboard
#' @description ROpenCV 绑定。C++ 签名：<code>bool checkChessboard(InputArray img, Size size)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_checkChessboard <- function(img, size) {
  .Call(`_ROpenCV_cv_checkChessboard`, img, size)
}

#' @title drawChessboardCorners
#' @description ROpenCV 绑定。C++ 签名：<code>void drawChessboardCorners(InputOutputArray image, Size patternSize, InputArray corners, bool patternWasFound)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>image</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_drawChessboardCorners <- function(image = NULL, patternSize, corners, patternWasFound) {
  .Call(`_ROpenCV_cv_drawChessboardCorners`, image, patternSize, corners, patternWasFound)
}

#' @title estimateChessboardSharpness
#' @description ROpenCV 绑定。C++ 签名：<code>Scalar estimateChessboardSharpness(InputArray image, Size patternSize, InputArray corners, float rise_distance, bool vertical, OutputArray sharpness)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_estimateChessboardSharpness <- function(image, patternSize, corners, rise_distance = 0.8, vertical = FALSE, dst = NULL) {
  .Call(`_ROpenCV_cv_estimateChessboardSharpness`, image, patternSize, corners, rise_distance, vertical, dst)
}

#' @title find4QuadCornerSubpix
#' @description ROpenCV 绑定。C++ 签名：<code>bool find4QuadCornerSubpix(InputArray img, InputOutputArray corners, Size region_size)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>corners</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_find4QuadCornerSubpix <- function(img, corners = NULL, region_size) {
  .Call(`_ROpenCV_cv_find4QuadCornerSubpix`, img, corners, region_size)
}

#' @title findChessboardCorners
#' @description ROpenCV 绑定。C++ 签名：<code>bool findChessboardCorners(InputArray image, Size patternSize, OutputArray corners, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_findChessboardCorners <- function(image, patternSize, flags, dst = NULL) {
  .Call(`_ROpenCV_cv_findChessboardCorners`, image, patternSize, flags, dst)
}

#' @title findChessboardCornersSB
#' @description ROpenCV 绑定。C++ 签名：<code>inline bool findChessboardCornersSB(InputArray image, Size patternSize, OutputArray corners, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_findChessboardCornersSB__0 <- function(image, patternSize, flags = 0, dst = NULL) {
  .Call(`_ROpenCV_cv_findChessboardCornersSB__0`, image, patternSize, flags, dst)
}

#' @title findChessboardCornersSB
#' @description ROpenCV 绑定。C++ 签名：<code>bool findChessboardCornersSB(InputArray image, Size patternSize, OutputArray corners, int flags, OutputArray meta)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_findChessboardCornersSB__1 <- function(image, patternSize, flags, corners = NULL, meta = NULL) {
  .Call(`_ROpenCV_cv_findChessboardCornersSB__1`, image, patternSize, flags, corners, meta)
}

# cv_findChessboardCornersSB
#' @rdname cv_findChessboardCornersSB
#' @export
cv_findChessboardCornersSB <- local({
  .sigs <- list(
    list(f = .ropecv_cv_findChessboardCornersSB__0, p = c(image = "mat", patternSize = "size", flags = "int", dst = "mat"), r = c(TRUE, TRUE, FALSE, FALSE), s = "image, patternSize, flags = 0, dst = NULL"),
    list(f = .ropecv_cv_findChessboardCornersSB__1, p = c(image = "mat", patternSize = "size", flags = "int", corners = "mat", meta = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE), s = "image, patternSize, flags, corners = NULL, meta = NULL")
  )
  function(...) .ropecv_pick("cv_findChessboardCornersSB", .sigs, list(...))
})

#' @title findCirclesGrid
#' @description ROpenCV 绑定。C++ 签名：<code>bool findCirclesGrid(InputArray image, Size patternSize, OutputArray centers, int flags, const Ptr&lt;FeatureDetector&gt; &amp; blobDetector)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_findCirclesGrid__0 <- function(image, patternSize, flags = CALIB_CB_SYMMETRIC_GRID, blobDetector = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_findCirclesGrid__0`, image, patternSize, flags, blobDetector, dst)
}

#' @title findCirclesGrid
#' @description ROpenCV 绑定。C++ 签名：<code>bool findCirclesGrid(InputArray image, Size patternSize, OutputArray centers, int flags, const Ptr&lt;FeatureDetector&gt; &amp; blobDetector, const CirclesGridFinderParameters&amp; parameters)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_findCirclesGrid__1 <- function(image, patternSize, flags, blobDetector, parameters, dst = NULL) {
  .Call(`_ROpenCV_cv_findCirclesGrid__1`, image, patternSize, flags, blobDetector, parameters, dst)
}

# cv_findCirclesGrid
#' @rdname cv_findCirclesGrid
#' @export
cv_findCirclesGrid <- local({
  .sigs <- list(
    list(f = .ropecv_cv_findCirclesGrid__0, p = c(image = "mat", patternSize = "size", flags = "int", blobDetector = "obj", dst = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE), s = "image, patternSize, flags = CALIB_CB_SYMMETRIC_GRID, blobDetector = NULL, dst = NULL"),
    list(f = .ropecv_cv_findCirclesGrid__1, p = c(image = "mat", patternSize = "size", flags = "int", blobDetector = "obj", parameters = "lst", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, FALSE), s = "image, patternSize, flags, blobDetector, parameters, dst = NULL")
  )
  function(...) .ropecv_pick("cv_findCirclesGrid", .sigs, list(...))
})

#' @title calibrate
#' @description ROpenCV 绑定。C++ 签名：<code>double calibrate(InputArrayOfArrays objectPoints, InputArrayOfArrays imagePoints, const Size&amp; image_size, InputOutputArray K, InputOutputArray D, OutputArrayOfArrays rvecs, OutputArrayOfArrays tvecs, int flags, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_fisheye_calibrate <- function(objectPoints, imagePoints, image_size, K = NULL, D = NULL, flags = 0, criteria = c(5, 100, 2.220446049250313e-16), rvecs = NULL, tvecs = NULL) {
  .Call(`_ROpenCV_cv_fisheye_calibrate`, objectPoints, imagePoints, image_size, K, D, flags, criteria, rvecs, tvecs)
}

#' @title stereoCalibrate
#' @description ROpenCV 绑定。C++ 签名：<code>double stereoCalibrate(InputArrayOfArrays objectPoints, InputArrayOfArrays imagePoints1, InputArrayOfArrays imagePoints2, InputOutputArray K1, InputOutputArray D1, InputOutputArray K2, InputOutputArray D2, Size imageSize, OutputArray R, OutputArray T, int flags, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_fisheye_stereoCalibrate__0 <- function(objectPoints, imagePoints1, imagePoints2, K1 = NULL, D1 = NULL, K2 = NULL, D2 = NULL, imageSize, flags = CALIB_FIX_INTRINSIC, criteria = c(5, 100, 2.220446049250313e-16), R = NULL, T = NULL) {
  .Call(`_ROpenCV_cv_fisheye_stereoCalibrate__0`, objectPoints, imagePoints1, imagePoints2, K1, D1, K2, D2, imageSize, flags, criteria, R, T)
}

#' @title stereoCalibrate
#' @description ROpenCV 绑定。C++ 签名：<code>double stereoCalibrate(InputArrayOfArrays objectPoints, InputArrayOfArrays imagePoints1, InputArrayOfArrays imagePoints2, InputOutputArray K1, InputOutputArray D1, InputOutputArray K2, InputOutputArray D2, Size imageSize, OutputArray R, OutputArray T, OutputArrayOfArrays rvecs, OutputArrayOfArrays tvecs, int flags, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_fisheye_stereoCalibrate__1 <- function(objectPoints, imagePoints1, imagePoints2, K1 = NULL, D1 = NULL, K2 = NULL, D2 = NULL, imageSize, flags = CALIB_FIX_INTRINSIC, criteria = c(5, 100, 2.220446049250313e-16), R = NULL, T = NULL, rvecs = NULL, tvecs = NULL) {
  .Call(`_ROpenCV_cv_fisheye_stereoCalibrate__1`, objectPoints, imagePoints1, imagePoints2, K1, D1, K2, D2, imageSize, flags, criteria, R, T, rvecs, tvecs)
}

# cv_fisheye_stereoCalibrate
#' @rdname cv_fisheye_stereoCalibrate
#' @export
cv_fisheye_stereoCalibrate <- local({
  .sigs <- list(
    list(f = .ropecv_cv_fisheye_stereoCalibrate__0, p = c(objectPoints = "matlist", imagePoints1 = "matlist", imagePoints2 = "matlist", K1 = "mat", D1 = "mat", K2 = "mat", D2 = "mat", imageSize = "size", flags = "int", criteria = "tc", R = "mat", T = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "objectPoints, imagePoints1, imagePoints2, K1 = NULL, D1 = NULL, K2 = NULL, D2 = NULL, imageSize, flags = CALIB_FIX_INTRINSIC, criteria = c(5, 100, 2.220446049250313e-16), R = NULL, T = NULL"),
    list(f = .ropecv_cv_fisheye_stereoCalibrate__1, p = c(objectPoints = "matlist", imagePoints1 = "matlist", imagePoints2 = "matlist", K1 = "mat", D1 = "mat", K2 = "mat", D2 = "mat", imageSize = "size", flags = "int", criteria = "tc", R = "mat", T = "mat", rvecs = "lst", tvecs = "lst"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "objectPoints, imagePoints1, imagePoints2, K1 = NULL, D1 = NULL, K2 = NULL, D2 = NULL, imageSize, flags = CALIB_FIX_INTRINSIC, criteria = c(5, 100, 2.220446049250313e-16), R = NULL, T = NULL, rvecs = NULL, tvecs = NULL")
  )
  function(...) .ropecv_pick("cv_fisheye_stereoCalibrate", .sigs, list(...))
})

#' @title initCameraMatrix2D
#' @description ROpenCV 绑定。C++ 签名：<code>Mat initCameraMatrix2D(InputArrayOfArrays objectPoints, InputArrayOfArrays imagePoints, Size imageSize, double aspectRatio)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_initCameraMatrix2D <- function(objectPoints, imagePoints, imageSize, aspectRatio = 1.0) {
  .Call(`_ROpenCV_cv_initCameraMatrix2D`, objectPoints, imagePoints, imageSize, aspectRatio)
}

#' @title registerCameras
#' @description ROpenCV 绑定。C++ 签名：<code>double registerCameras(InputArrayOfArrays objectPoints1, InputArrayOfArrays objectPoints2, InputArrayOfArrays imagePoints1, InputArrayOfArrays imagePoints2, InputArray cameraMatrix1, InputArray distCoeffs1, CameraModel cameraModel1, InputArray cameraMatrix2, InputArray distCoeffs2, CameraModel cameraModel2, InputOutputArray R, InputOutputArray T, OutputArray E, OutputArray F, OutputArray perViewErrors, int flags, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_registerCameras__0 <- function(objectPoints1, objectPoints2, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraModel1, cameraMatrix2, distCoeffs2, cameraModel2, R = NULL, T = NULL, flags = 0, criteria = c(5, 100, 1e-6), E = NULL, F = NULL, perViewErrors = NULL) {
  .Call(`_ROpenCV_cv_registerCameras__0`, objectPoints1, objectPoints2, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraModel1, cameraMatrix2, distCoeffs2, cameraModel2, R, T, flags, criteria, E, F, perViewErrors)
}

#' @title registerCameras
#' @description ROpenCV 绑定。C++ 签名：<code>double registerCameras(InputArrayOfArrays objectPoints1, InputArrayOfArrays objectPoints2, InputArrayOfArrays imagePoints1, InputArrayOfArrays imagePoints2, InputArray cameraMatrix1, InputArray distCoeffs1, CameraModel cameraModel1, InputArray cameraMatrix2, InputArray distCoeffs2, CameraModel cameraModel2, InputOutputArray R, InputOutputArray T, OutputArray E, OutputArray F, OutputArrayOfArrays rvecs, OutputArrayOfArrays tvecs, OutputArray perViewErrors, int flags, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_registerCameras__1 <- function(objectPoints1, objectPoints2, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraModel1, cameraMatrix2, distCoeffs2, cameraModel2, R = NULL, T = NULL, flags = 0, criteria = c(5, 100, 1e-6), E = NULL, F = NULL, rvecs = NULL, tvecs = NULL, perViewErrors = NULL) {
  .Call(`_ROpenCV_cv_registerCameras__1`, objectPoints1, objectPoints2, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraModel1, cameraMatrix2, distCoeffs2, cameraModel2, R, T, flags, criteria, E, F, rvecs, tvecs, perViewErrors)
}

# cv_registerCameras
#' @rdname cv_registerCameras
#' @export
cv_registerCameras <- local({
  .sigs <- list(
    list(f = .ropecv_cv_registerCameras__0, p = c(objectPoints1 = "matlist", objectPoints2 = "matlist", imagePoints1 = "matlist", imagePoints2 = "matlist", cameraMatrix1 = "mat", distCoeffs1 = "mat", cameraModel1 = "any", cameraMatrix2 = "mat", distCoeffs2 = "mat", cameraModel2 = "any", R = "mat", T = "mat", flags = "int", criteria = "tc", E = "mat", F = "mat", perViewErrors = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "objectPoints1, objectPoints2, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraModel1, cameraMatrix2, distCoeffs2, cameraModel2, R = NULL, T = NULL, flags = 0, criteria = c(5, 100, 1e-6), E = NULL, F = NULL, perViewErrors = NULL"),
    list(f = .ropecv_cv_registerCameras__1, p = c(objectPoints1 = "matlist", objectPoints2 = "matlist", imagePoints1 = "matlist", imagePoints2 = "matlist", cameraMatrix1 = "mat", distCoeffs1 = "mat", cameraModel1 = "any", cameraMatrix2 = "mat", distCoeffs2 = "mat", cameraModel2 = "any", R = "mat", T = "mat", flags = "int", criteria = "tc", E = "mat", F = "mat", rvecs = "lst", tvecs = "lst", perViewErrors = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "objectPoints1, objectPoints2, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraModel1, cameraMatrix2, distCoeffs2, cameraModel2, R = NULL, T = NULL, flags = 0, criteria = c(5, 100, 1e-6), E = NULL, F = NULL, rvecs = NULL, tvecs = NULL, perViewErrors = NULL")
  )
  function(...) .ropecv_pick("cv_registerCameras", .sigs, list(...))
})

#' @title stereoCalibrate
#' @description ROpenCV 绑定。C++ 签名：<code>double stereoCalibrate(InputArrayOfArrays objectPoints, InputArrayOfArrays imagePoints1, InputArrayOfArrays imagePoints2, InputOutputArray cameraMatrix1, InputOutputArray distCoeffs1, InputOutputArray cameraMatrix2, InputOutputArray distCoeffs2, Size imageSize, OutputArray R, OutputArray T, OutputArray E, OutputArray F, int flags, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_stereoCalibrate__0 <- function(objectPoints, imagePoints1, imagePoints2, cameraMatrix1 = NULL, distCoeffs1 = NULL, cameraMatrix2 = NULL, distCoeffs2 = NULL, imageSize, flags = CALIB_FIX_INTRINSIC, criteria = c(5, 100, 1e-6), R = NULL, T = NULL, E = NULL, F = NULL) {
  .Call(`_ROpenCV_cv_stereoCalibrate__0`, objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, flags, criteria, R, T, E, F)
}

#' @title stereoCalibrate
#' @description ROpenCV 绑定。C++ 签名：<code>double stereoCalibrate(InputArrayOfArrays objectPoints, InputArrayOfArrays imagePoints1, InputArrayOfArrays imagePoints2, InputOutputArray cameraMatrix1, InputOutputArray distCoeffs1, InputOutputArray cameraMatrix2, InputOutputArray distCoeffs2, Size imageSize, InputOutputArray R, InputOutputArray T, OutputArray E, OutputArray F, OutputArray perViewErrors, int flags, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_stereoCalibrate__1 <- function(objectPoints, imagePoints1, imagePoints2, cameraMatrix1 = NULL, distCoeffs1 = NULL, cameraMatrix2 = NULL, distCoeffs2 = NULL, imageSize, R = NULL, T = NULL, flags = CALIB_FIX_INTRINSIC, criteria = c(5, 30, 1e-6), E = NULL, F = NULL, perViewErrors = NULL) {
  .Call(`_ROpenCV_cv_stereoCalibrate__1`, objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, flags, criteria, E, F, perViewErrors)
}

#' @title stereoCalibrate
#' @description ROpenCV 绑定。C++ 签名：<code>double stereoCalibrate(InputArrayOfArrays objectPoints, InputArrayOfArrays imagePoints1, InputArrayOfArrays imagePoints2, InputOutputArray cameraMatrix1, InputOutputArray distCoeffs1, InputOutputArray cameraMatrix2, InputOutputArray distCoeffs2, Size imageSize, InputOutputArray R, InputOutputArray T, OutputArray E, OutputArray F, OutputArrayOfArrays rvecs, OutputArrayOfArrays tvecs, OutputArray perViewErrors, int flags, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_stereoCalibrate__2 <- function(objectPoints, imagePoints1, imagePoints2, cameraMatrix1 = NULL, distCoeffs1 = NULL, cameraMatrix2 = NULL, distCoeffs2 = NULL, imageSize, R = NULL, T = NULL, flags = CALIB_FIX_INTRINSIC, criteria = c(5, 100, 1e-6), E = NULL, F = NULL, rvecs = NULL, tvecs = NULL, perViewErrors = NULL) {
  .Call(`_ROpenCV_cv_stereoCalibrate__2`, objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, flags, criteria, E, F, rvecs, tvecs, perViewErrors)
}

# cv_stereoCalibrate
#' @rdname cv_stereoCalibrate
#' @export
cv_stereoCalibrate <- local({
  .sigs <- list(
    list(f = .ropecv_cv_stereoCalibrate__0, p = c(objectPoints = "matlist", imagePoints1 = "matlist", imagePoints2 = "matlist", cameraMatrix1 = "mat", distCoeffs1 = "mat", cameraMatrix2 = "mat", distCoeffs2 = "mat", imageSize = "size", flags = "int", criteria = "tc", R = "mat", T = "mat", E = "mat", F = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "objectPoints, imagePoints1, imagePoints2, cameraMatrix1 = NULL, distCoeffs1 = NULL, cameraMatrix2 = NULL, distCoeffs2 = NULL, imageSize, flags = CALIB_FIX_INTRINSIC, criteria = c(5, 100, 1e-6), R = NULL, T = NULL, E = NULL, F = NULL"),
    list(f = .ropecv_cv_stereoCalibrate__1, p = c(objectPoints = "matlist", imagePoints1 = "matlist", imagePoints2 = "matlist", cameraMatrix1 = "mat", distCoeffs1 = "mat", cameraMatrix2 = "mat", distCoeffs2 = "mat", imageSize = "size", R = "mat", T = "mat", flags = "int", criteria = "tc", E = "mat", F = "mat", perViewErrors = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "objectPoints, imagePoints1, imagePoints2, cameraMatrix1 = NULL, distCoeffs1 = NULL, cameraMatrix2 = NULL, distCoeffs2 = NULL, imageSize, R = NULL, T = NULL, flags = CALIB_FIX_INTRINSIC, criteria = c(5, 30, 1e-6), E = NULL, F = NULL, perViewErrors = NULL"),
    list(f = .ropecv_cv_stereoCalibrate__2, p = c(objectPoints = "matlist", imagePoints1 = "matlist", imagePoints2 = "matlist", cameraMatrix1 = "mat", distCoeffs1 = "mat", cameraMatrix2 = "mat", distCoeffs2 = "mat", imageSize = "size", R = "mat", T = "mat", flags = "int", criteria = "tc", E = "mat", F = "mat", rvecs = "lst", tvecs = "lst", perViewErrors = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "objectPoints, imagePoints1, imagePoints2, cameraMatrix1 = NULL, distCoeffs1 = NULL, cameraMatrix2 = NULL, distCoeffs2 = NULL, imageSize, R = NULL, T = NULL, flags = CALIB_FIX_INTRINSIC, criteria = c(5, 100, 1e-6), E = NULL, F = NULL, rvecs = NULL, tvecs = NULL, perViewErrors = NULL")
  )
  function(...) .ropecv_pick("cv_stereoCalibrate", .sigs, list(...))
})
