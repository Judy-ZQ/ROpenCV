# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::dnn::ClassificationModel
.ropecv_reg("cvClassificationModel",
  new = list(
    list(f = .ropecv_cv_dnn_ClassificationModel_ClassificationModel_new__0, p = c(network = "any"), r = c(TRUE), s = "network"),
    list(f = .ropecv_cv_dnn_ClassificationModel_ClassificationModel_new__1, p = c(model = "chr", config = "chr"), r = c(TRUE, FALSE), s = "model, config = ''")
  ),
  m = list(
    classify = list(
      list(f = .ropecv_cv_dnn_ClassificationModel_ClassificationModel_classify__0, p = c(frame = "mat"), r = c(TRUE), s = "frame")
    ),
    enableWinograd = list(
      list(f = .ropecv_cv_dnn_Model_Model_enableWinograd__0, p = c(useWinograd = "lgl"), r = c(TRUE), s = "useWinograd")
    ),
    getEnableSoftmaxPostProcessing = list(
      list(f = .ropecv_cv_dnn_ClassificationModel_ClassificationModel_getEnableSoftmaxPostProcessing__0, p = c(), r = c(), s = "")
    ),
    predict = list(
      list(f = .ropecv_cv_dnn_Model_Model_predict__0, p = c(frame = "mat", outs = "lst"), r = c(TRUE, FALSE), s = "frame, outs = NULL")
    ),
    setEnableSoftmaxPostProcessing = list(
      list(f = .ropecv_cv_dnn_ClassificationModel_ClassificationModel_setEnableSoftmaxPostProcessing__0, p = c(enable = "lgl"), r = c(TRUE), s = "enable")
    ),
    setInputCrop = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputCrop__0, p = c(crop = "lgl"), r = c(TRUE), s = "crop")
    ),
    setInputMean = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputMean__0, p = c(mean = "scalar"), r = c(TRUE), s = "mean")
    ),
    setInputParams = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputParams__0, p = c(scale = "dbl", size = "size", mean = "scalar", swapRB = "lgl", crop = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE), s = "scale = 1.0, size = NULL, mean = NULL, swapRB = FALSE, crop = FALSE")
    ),
    setInputScale = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputScale__0, p = c(scale = "scalar"), r = c(TRUE), s = "scale")
    ),
    setInputSize = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__0, p = c(size = "size"), r = c(TRUE), s = "size"),
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__1, p = c(width = "int", height = "int"), r = c(TRUE, TRUE), s = "width, height")
    ),
    setInputSwapRB = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSwapRB__0, p = c(swapRB = "lgl"), r = c(TRUE), s = "swapRB")
    ),
    setOutputNames = list(
      list(f = .ropecv_cv_dnn_Model_Model_setOutputNames__0, p = c(outNames = "chr"), r = c(TRUE), s = "outNames")
    ),
    setPreferableBackend = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableBackend__0, p = c(backendId = "any"), r = c(TRUE), s = "backendId")
    ),
    setPreferableTarget = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableTarget__0, p = c(targetId = "any"), r = c(TRUE), s = "targetId")
    )
  )
)

# cv::dnn::DetectionModel
.ropecv_reg("cvDetectionModel",
  new = list(
    list(f = .ropecv_cv_dnn_DetectionModel_DetectionModel_new__0, p = c(network = "any"), r = c(TRUE), s = "network"),
    list(f = .ropecv_cv_dnn_DetectionModel_DetectionModel_new__1, p = c(model = "chr", config = "chr"), r = c(TRUE, FALSE), s = "model, config = ''")
  ),
  m = list(
    detect = list(
      list(f = .ropecv_cv_dnn_DetectionModel_DetectionModel_detect__0, p = c(frame = "mat", confThreshold = "dbl", nmsThreshold = "dbl"), r = c(TRUE, FALSE, FALSE), s = "frame, confThreshold = 0.5, nmsThreshold = 0.0")
    ),
    enableWinograd = list(
      list(f = .ropecv_cv_dnn_Model_Model_enableWinograd__0, p = c(useWinograd = "lgl"), r = c(TRUE), s = "useWinograd")
    ),
    getNmsAcrossClasses = list(
      list(f = .ropecv_cv_dnn_DetectionModel_DetectionModel_getNmsAcrossClasses__0, p = c(), r = c(), s = "")
    ),
    predict = list(
      list(f = .ropecv_cv_dnn_Model_Model_predict__0, p = c(frame = "mat", outs = "lst"), r = c(TRUE, FALSE), s = "frame, outs = NULL")
    ),
    setInputCrop = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputCrop__0, p = c(crop = "lgl"), r = c(TRUE), s = "crop")
    ),
    setInputMean = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputMean__0, p = c(mean = "scalar"), r = c(TRUE), s = "mean")
    ),
    setInputParams = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputParams__0, p = c(scale = "dbl", size = "size", mean = "scalar", swapRB = "lgl", crop = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE), s = "scale = 1.0, size = NULL, mean = NULL, swapRB = FALSE, crop = FALSE")
    ),
    setInputScale = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputScale__0, p = c(scale = "scalar"), r = c(TRUE), s = "scale")
    ),
    setInputSize = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__0, p = c(size = "size"), r = c(TRUE), s = "size"),
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__1, p = c(width = "int", height = "int"), r = c(TRUE, TRUE), s = "width, height")
    ),
    setInputSwapRB = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSwapRB__0, p = c(swapRB = "lgl"), r = c(TRUE), s = "swapRB")
    ),
    setNmsAcrossClasses = list(
      list(f = .ropecv_cv_dnn_DetectionModel_DetectionModel_setNmsAcrossClasses__0, p = c(value = "lgl"), r = c(TRUE), s = "value")
    ),
    setOutputNames = list(
      list(f = .ropecv_cv_dnn_Model_Model_setOutputNames__0, p = c(outNames = "chr"), r = c(TRUE), s = "outNames")
    ),
    setPreferableBackend = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableBackend__0, p = c(backendId = "any"), r = c(TRUE), s = "backendId")
    ),
    setPreferableTarget = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableTarget__0, p = c(targetId = "any"), r = c(TRUE), s = "targetId")
    )
  )
)

# cv::dnn::Image2BlobParams
.ropecv_reg("cvImage2BlobParams",
  new = list(
    list(f = .ropecv_cv_dnn_Image2BlobParams_Image2BlobParams_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_dnn_Image2BlobParams_Image2BlobParams_new__1, p = c(scalefactor = "scalar", size = "size", mean = "scalar", swapRB = "lgl", ddepth = "int", datalayout = "any", mode = "any", borderValue = "scalar"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "scalefactor, size = NULL, mean = NULL, swapRB = FALSE, ddepth = CV_32F, datalayout = DNN_LAYOUT_NCHW, mode = DNN_PMODE_NULL, borderValue = 0.0")
  ),
  m = list(
    blobRectToImageRect = list(
      list(f = .ropecv_cv_dnn_Image2BlobParams_Image2BlobParams_blobRectToImageRect__0, p = c(rBlob = "rect", size = "size"), r = c(TRUE, TRUE), s = "rBlob, size")
    ),
    blobRectsToImageRects = list(
      list(f = .ropecv_cv_dnn_Image2BlobParams_Image2BlobParams_blobRectsToImageRects__0, p = c(rBlob = "lst", size = "size"), r = c(TRUE, TRUE), s = "rBlob, size")
    )
  )
)

# cv::dnn::KeypointsModel
.ropecv_reg("cvKeypointsModel",
  new = list(
    list(f = .ropecv_cv_dnn_KeypointsModel_KeypointsModel_new__0, p = c(network = "any"), r = c(TRUE), s = "network"),
    list(f = .ropecv_cv_dnn_KeypointsModel_KeypointsModel_new__1, p = c(model = "chr", config = "chr"), r = c(TRUE, FALSE), s = "model, config = ''")
  ),
  m = list(
    enableWinograd = list(
      list(f = .ropecv_cv_dnn_Model_Model_enableWinograd__0, p = c(useWinograd = "lgl"), r = c(TRUE), s = "useWinograd")
    ),
    estimate = list(
      list(f = .ropecv_cv_dnn_KeypointsModel_KeypointsModel_estimate__0, p = c(frame = "mat", thresh = "dbl"), r = c(TRUE, FALSE), s = "frame, thresh = 0.5")
    ),
    predict = list(
      list(f = .ropecv_cv_dnn_Model_Model_predict__0, p = c(frame = "mat", outs = "lst"), r = c(TRUE, FALSE), s = "frame, outs = NULL")
    ),
    setInputCrop = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputCrop__0, p = c(crop = "lgl"), r = c(TRUE), s = "crop")
    ),
    setInputMean = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputMean__0, p = c(mean = "scalar"), r = c(TRUE), s = "mean")
    ),
    setInputParams = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputParams__0, p = c(scale = "dbl", size = "size", mean = "scalar", swapRB = "lgl", crop = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE), s = "scale = 1.0, size = NULL, mean = NULL, swapRB = FALSE, crop = FALSE")
    ),
    setInputScale = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputScale__0, p = c(scale = "scalar"), r = c(TRUE), s = "scale")
    ),
    setInputSize = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__0, p = c(size = "size"), r = c(TRUE), s = "size"),
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__1, p = c(width = "int", height = "int"), r = c(TRUE, TRUE), s = "width, height")
    ),
    setInputSwapRB = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSwapRB__0, p = c(swapRB = "lgl"), r = c(TRUE), s = "swapRB")
    ),
    setOutputNames = list(
      list(f = .ropecv_cv_dnn_Model_Model_setOutputNames__0, p = c(outNames = "chr"), r = c(TRUE), s = "outNames")
    ),
    setPreferableBackend = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableBackend__0, p = c(backendId = "any"), r = c(TRUE), s = "backendId")
    ),
    setPreferableTarget = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableTarget__0, p = c(targetId = "any"), r = c(TRUE), s = "targetId")
    )
  )
)

# cv::dnn::Layer
.ropecv_reg("cvLayer",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    finalize = list(
      list(f = .ropecv_cv_dnn_Layer_Layer_finalize__0, p = c(inputs = "matlist", outputs = "lst"), r = c(TRUE, FALSE), s = "inputs, outputs = NULL")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    outputNameToIndex = list(
      list(f = .ropecv_cv_dnn_Layer_Layer_outputNameToIndex__0, p = c(outputName = "chr"), r = c(TRUE), s = "outputName")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    run = list(
      list(f = .ropecv_cv_dnn_Layer_Layer_run__0, p = c(inputs = "lst", internals = "lst"), r = c(TRUE, FALSE), s = "inputs, internals = NULL")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::dnn::Model
.ropecv_reg("cvModel",
  new = list(
    list(f = .ropecv_cv_dnn_Model_Model_new__0, p = c(network = "any"), r = c(TRUE), s = "network"),
    list(f = .ropecv_cv_dnn_Model_Model_new__1, p = c(model = "chr", config = "chr"), r = c(TRUE, FALSE), s = "model, config = ''")
  ),
  m = list(
    enableWinograd = list(
      list(f = .ropecv_cv_dnn_Model_Model_enableWinograd__0, p = c(useWinograd = "lgl"), r = c(TRUE), s = "useWinograd")
    ),
    predict = list(
      list(f = .ropecv_cv_dnn_Model_Model_predict__0, p = c(frame = "mat", outs = "lst"), r = c(TRUE, FALSE), s = "frame, outs = NULL")
    ),
    setInputCrop = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputCrop__0, p = c(crop = "lgl"), r = c(TRUE), s = "crop")
    ),
    setInputMean = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputMean__0, p = c(mean = "scalar"), r = c(TRUE), s = "mean")
    ),
    setInputParams = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputParams__0, p = c(scale = "dbl", size = "size", mean = "scalar", swapRB = "lgl", crop = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE), s = "scale = 1.0, size = NULL, mean = NULL, swapRB = FALSE, crop = FALSE")
    ),
    setInputScale = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputScale__0, p = c(scale = "scalar"), r = c(TRUE), s = "scale")
    ),
    setInputSize = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__0, p = c(size = "size"), r = c(TRUE), s = "size"),
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__1, p = c(width = "int", height = "int"), r = c(TRUE, TRUE), s = "width, height")
    ),
    setInputSwapRB = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSwapRB__0, p = c(swapRB = "lgl"), r = c(TRUE), s = "swapRB")
    ),
    setOutputNames = list(
      list(f = .ropecv_cv_dnn_Model_Model_setOutputNames__0, p = c(outNames = "chr"), r = c(TRUE), s = "outNames")
    ),
    setPreferableBackend = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableBackend__0, p = c(backendId = "any"), r = c(TRUE), s = "backendId")
    ),
    setPreferableTarget = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableTarget__0, p = c(targetId = "any"), r = c(TRUE), s = "targetId")
    )
  )
)

# cv::dnn::Net
.ropecv_reg("cvNet",
  new = list(
    list(f = .ropecv_cv_dnn_Net_Net_new__0, p = c(), r = c(), s = "")
  ),
  m = list(
    addLayer = list(
      list(f = .ropecv_cv_dnn_Net_Net_addLayer__0, p = c(name = "chr", type = "chr", dtype = "int", params = "any"), r = c(TRUE, TRUE, TRUE, FALSE), s = "name, type, dtype, params = list()")
    ),
    addLayerToPrev = list(
      list(f = .ropecv_cv_dnn_Net_Net_addLayerToPrev__0, p = c(name = "chr", type = "chr", dtype = "int", params = "any"), r = c(TRUE, TRUE, TRUE, FALSE), s = "name, type, dtype, params = list()")
    ),
    connect = list(
      list(f = .ropecv_cv_dnn_Net_Net_connect__0, p = c(outPin = "chr", inpPin = "chr"), r = c(TRUE, TRUE), s = "outPin, inpPin")
    ),
    dump = list(
      list(f = .ropecv_cv_dnn_Net_Net_dump__0, p = c(), r = c(), s = "")
    ),
    dumpToFile = list(
      list(f = .ropecv_cv_dnn_Net_Net_dumpToFile__0, p = c(path = "chr"), r = c(TRUE), s = "path")
    ),
    dumpToPbtxt = list(
      list(f = .ropecv_cv_dnn_Net_Net_dumpToPbtxt__0, p = c(path = "chr"), r = c(TRUE), s = "path")
    ),
    empty = list(
      list(f = .ropecv_cv_dnn_Net_Net_empty__0, p = c(), r = c(), s = "")
    ),
    enableFusion = list(
      list(f = .ropecv_cv_dnn_Net_Net_enableFusion__0, p = c(fusion = "lgl"), r = c(TRUE), s = "fusion")
    ),
    enableWinograd = list(
      list(f = .ropecv_cv_dnn_Net_Net_enableWinograd__0, p = c(useWinograd = "lgl"), r = c(TRUE), s = "useWinograd")
    ),
    forward = list(
      list(f = .ropecv_cv_dnn_Net_Net_forward__0, p = c(outputName = "chr"), r = c(FALSE), s = "outputName = ''"),
      list(f = .ropecv_cv_dnn_Net_Net_forward__1, p = c(outputName = "chr", outputBlobs = "lst"), r = c(FALSE, FALSE), s = "outputName = '', outputBlobs = NULL"),
      list(f = .ropecv_cv_dnn_Net_Net_forward__2, p = c(outBlobNames = "chr", outputBlobs = "lst"), r = c(TRUE, FALSE), s = "outBlobNames, outputBlobs = NULL")
    ),
    forwardAsync = list(
      list(f = .ropecv_cv_dnn_Net_Net_forwardAsync__0, p = c(outputName = "chr"), r = c(FALSE), s = "outputName = ''")
    ),
    getFLOPS = list(
      list(f = .ropecv_cv_dnn_Net_Net_getFLOPS__0, p = c(netInputShapes = "lst", netInputTypes = "int"), r = c(TRUE, TRUE), s = "netInputShapes, netInputTypes"),
      list(f = .ropecv_cv_dnn_Net_Net_getFLOPS__1, p = c(netInputShape = "any", netInputType = "int"), r = c(TRUE, TRUE), s = "netInputShape, netInputType"),
      list(f = .ropecv_cv_dnn_Net_Net_getFLOPS__2, p = c(layerId = "int", netInputShapes = "lst", netInputTypes = "int"), r = c(TRUE, TRUE, TRUE), s = "layerId, netInputShapes, netInputTypes"),
      list(f = .ropecv_cv_dnn_Net_Net_getFLOPS__3, p = c(layerId = "int", netInputShape = "any", netInputType = "int"), r = c(TRUE, TRUE, TRUE), s = "layerId, netInputShape, netInputType")
    ),
    getLayer = list(
      list(f = .ropecv_cv_dnn_Net_Net_getLayer__0, p = c(layerId = "int"), r = c(TRUE), s = "layerId"),
      list(f = .ropecv_cv_dnn_Net_Net_getLayer__1, p = c(layerName = "chr"), r = c(TRUE), s = "layerName")
    ),
    getLayerId = list(
      list(f = .ropecv_cv_dnn_Net_Net_getLayerId__0, p = c(layer = "chr"), r = c(TRUE), s = "layer")
    ),
    getLayerNames = list(
      list(f = .ropecv_cv_dnn_Net_Net_getLayerNames__0, p = c(), r = c(), s = "")
    ),
    getLayerShapes = list(
      list(f = .ropecv_cv_dnn_Net_Net_getLayerShapes__0, p = c(netInputShape = "any", netInputType = "int", layerId = "int"), r = c(TRUE, TRUE, TRUE), s = "netInputShape, netInputType, layerId")
    ),
    getLayerTypes = list(
      list(f = .ropecv_cv_dnn_Net_Net_getLayerTypes__0, p = c(), r = c(), s = "")
    ),
    getLayersCount = list(
      list(f = .ropecv_cv_dnn_Net_Net_getLayersCount__0, p = c(layerType = "chr"), r = c(TRUE), s = "layerType")
    ),
    getLayersShapes = list(
      list(f = .ropecv_cv_dnn_Net_Net_getLayersShapes__0, p = c(netInputShapes = "lst", netInputTypes = "int"), r = c(TRUE, TRUE), s = "netInputShapes, netInputTypes"),
      list(f = .ropecv_cv_dnn_Net_Net_getLayersShapes__1, p = c(netInputShape = "any", netInputType = "int"), r = c(TRUE, TRUE), s = "netInputShape, netInputType")
    ),
    getMemoryConsumption = list(
      list(f = .ropecv_cv_dnn_Net_Net_getMemoryConsumption__0, p = c(netInputShape = "any", netInputType = "int"), r = c(TRUE, TRUE), s = "netInputShape, netInputType"),
      list(f = .ropecv_cv_dnn_Net_Net_getMemoryConsumption__1, p = c(layerId = "int", netInputShapes = "lst", netInputTypes = "int"), r = c(TRUE, TRUE, TRUE), s = "layerId, netInputShapes, netInputTypes"),
      list(f = .ropecv_cv_dnn_Net_Net_getMemoryConsumption__2, p = c(layerId = "int", netInputShape = "any", netInputType = "int"), r = c(TRUE, TRUE, TRUE), s = "layerId, netInputShape, netInputType")
    ),
    getParam = list(
      list(f = .ropecv_cv_dnn_Net_Net_getParam__0, p = c(layer = "int", numParam = "int"), r = c(TRUE, FALSE), s = "layer, numParam = 0"),
      list(f = .ropecv_cv_dnn_Net_Net_getParam__1, p = c(layerName = "chr", numParam = "int"), r = c(TRUE, FALSE), s = "layerName, numParam = 0")
    ),
    getPerfProfile = list(
      list(f = .ropecv_cv_dnn_Net_Net_getPerfProfile__0, p = c(), r = c(), s = "")
    ),
    getUnconnectedOutLayers = list(
      list(f = .ropecv_cv_dnn_Net_Net_getUnconnectedOutLayers__0, p = c(), r = c(), s = "")
    ),
    getUnconnectedOutLayersNames = list(
      list(f = .ropecv_cv_dnn_Net_Net_getUnconnectedOutLayersNames__0, p = c(), r = c(), s = "")
    ),
    setInput = list(
      list(f = .ropecv_cv_dnn_Net_Net_setInput__0, p = c(blob = "mat", name = "chr", scalefactor = "dbl", mean = "scalar"), r = c(TRUE, FALSE, FALSE, FALSE), s = "blob, name = '', scalefactor = 1.0, mean = NULL")
    ),
    setInputShape = list(
      list(f = .ropecv_cv_dnn_Net_Net_setInputShape__0, p = c(inputName = "chr", shape = "any"), r = c(TRUE, TRUE), s = "inputName, shape")
    ),
    setInputsNames = list(
      list(f = .ropecv_cv_dnn_Net_Net_setInputsNames__0, p = c(inputBlobNames = "chr"), r = c(TRUE), s = "inputBlobNames")
    ),
    setParam = list(
      list(f = .ropecv_cv_dnn_Net_Net_setParam__0, p = c(layer = "int", numParam = "int", blob = "any"), r = c(TRUE, TRUE, TRUE), s = "layer, numParam, blob"),
      list(f = .ropecv_cv_dnn_Net_Net_setParam__1, p = c(layerName = "chr", numParam = "int", blob = "any"), r = c(TRUE, TRUE, TRUE), s = "layerName, numParam, blob")
    ),
    setPreferableBackend = list(
      list(f = .ropecv_cv_dnn_Net_Net_setPreferableBackend__0, p = c(backendId = "int"), r = c(TRUE), s = "backendId")
    ),
    setPreferableTarget = list(
      list(f = .ropecv_cv_dnn_Net_Net_setPreferableTarget__0, p = c(targetId = "int"), r = c(TRUE), s = "targetId")
    )
  )
)

# cv::dnn::SegmentationModel
.ropecv_reg("cvSegmentationModel",
  new = list(
    list(f = .ropecv_cv_dnn_SegmentationModel_SegmentationModel_new__0, p = c(network = "any"), r = c(TRUE), s = "network"),
    list(f = .ropecv_cv_dnn_SegmentationModel_SegmentationModel_new__1, p = c(model = "chr", config = "chr"), r = c(TRUE, FALSE), s = "model, config = ''")
  ),
  m = list(
    enableWinograd = list(
      list(f = .ropecv_cv_dnn_Model_Model_enableWinograd__0, p = c(useWinograd = "lgl"), r = c(TRUE), s = "useWinograd")
    ),
    predict = list(
      list(f = .ropecv_cv_dnn_Model_Model_predict__0, p = c(frame = "mat", outs = "lst"), r = c(TRUE, FALSE), s = "frame, outs = NULL")
    ),
    segment = list(
      list(f = .ropecv_cv_dnn_SegmentationModel_SegmentationModel_segment__0, p = c(frame = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "frame, dst = NULL")
    ),
    setInputCrop = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputCrop__0, p = c(crop = "lgl"), r = c(TRUE), s = "crop")
    ),
    setInputMean = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputMean__0, p = c(mean = "scalar"), r = c(TRUE), s = "mean")
    ),
    setInputParams = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputParams__0, p = c(scale = "dbl", size = "size", mean = "scalar", swapRB = "lgl", crop = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE), s = "scale = 1.0, size = NULL, mean = NULL, swapRB = FALSE, crop = FALSE")
    ),
    setInputScale = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputScale__0, p = c(scale = "scalar"), r = c(TRUE), s = "scale")
    ),
    setInputSize = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__0, p = c(size = "size"), r = c(TRUE), s = "size"),
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__1, p = c(width = "int", height = "int"), r = c(TRUE, TRUE), s = "width, height")
    ),
    setInputSwapRB = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSwapRB__0, p = c(swapRB = "lgl"), r = c(TRUE), s = "swapRB")
    ),
    setOutputNames = list(
      list(f = .ropecv_cv_dnn_Model_Model_setOutputNames__0, p = c(outNames = "chr"), r = c(TRUE), s = "outNames")
    ),
    setPreferableBackend = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableBackend__0, p = c(backendId = "any"), r = c(TRUE), s = "backendId")
    ),
    setPreferableTarget = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableTarget__0, p = c(targetId = "any"), r = c(TRUE), s = "targetId")
    )
  )
)

# cv::dnn::TextDetectionModel
.ropecv_reg("cvTextDetectionModel",
  new = list(

  ),
  m = list(
    detect = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_TextDetectionModel_detect__0, p = c(frame = "mat"), r = c(TRUE), s = "frame"),
      list(f = .ropecv_cv_dnn_TextDetectionModel_TextDetectionModel_detect__1, p = c(frame = "mat"), r = c(TRUE), s = "frame")
    ),
    detectTextRectangles = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_TextDetectionModel_detectTextRectangles__0, p = c(frame = "mat"), r = c(TRUE), s = "frame"),
      list(f = .ropecv_cv_dnn_TextDetectionModel_TextDetectionModel_detectTextRectangles__1, p = c(frame = "mat"), r = c(TRUE), s = "frame")
    ),
    enableWinograd = list(
      list(f = .ropecv_cv_dnn_Model_Model_enableWinograd__0, p = c(useWinograd = "lgl"), r = c(TRUE), s = "useWinograd")
    ),
    predict = list(
      list(f = .ropecv_cv_dnn_Model_Model_predict__0, p = c(frame = "mat", outs = "lst"), r = c(TRUE, FALSE), s = "frame, outs = NULL")
    ),
    setInputCrop = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputCrop__0, p = c(crop = "lgl"), r = c(TRUE), s = "crop")
    ),
    setInputMean = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputMean__0, p = c(mean = "scalar"), r = c(TRUE), s = "mean")
    ),
    setInputParams = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputParams__0, p = c(scale = "dbl", size = "size", mean = "scalar", swapRB = "lgl", crop = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE), s = "scale = 1.0, size = NULL, mean = NULL, swapRB = FALSE, crop = FALSE")
    ),
    setInputScale = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputScale__0, p = c(scale = "scalar"), r = c(TRUE), s = "scale")
    ),
    setInputSize = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__0, p = c(size = "size"), r = c(TRUE), s = "size"),
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__1, p = c(width = "int", height = "int"), r = c(TRUE, TRUE), s = "width, height")
    ),
    setInputSwapRB = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSwapRB__0, p = c(swapRB = "lgl"), r = c(TRUE), s = "swapRB")
    ),
    setOutputNames = list(
      list(f = .ropecv_cv_dnn_Model_Model_setOutputNames__0, p = c(outNames = "chr"), r = c(TRUE), s = "outNames")
    ),
    setPreferableBackend = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableBackend__0, p = c(backendId = "any"), r = c(TRUE), s = "backendId")
    ),
    setPreferableTarget = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableTarget__0, p = c(targetId = "any"), r = c(TRUE), s = "targetId")
    )
  )
)

# cv::dnn::TextDetectionModel_DB
.ropecv_reg("cvTextDetectionModel_DB",
  new = list(
    list(f = .ropecv_cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_new__0, p = c(network = "any"), r = c(TRUE), s = "network"),
    list(f = .ropecv_cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_new__1, p = c(model = "chr", config = "chr"), r = c(TRUE, FALSE), s = "model, config = ''")
  ),
  m = list(
    detect = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_TextDetectionModel_detect__0, p = c(frame = "mat"), r = c(TRUE), s = "frame"),
      list(f = .ropecv_cv_dnn_TextDetectionModel_TextDetectionModel_detect__1, p = c(frame = "mat"), r = c(TRUE), s = "frame")
    ),
    detectTextRectangles = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_TextDetectionModel_detectTextRectangles__0, p = c(frame = "mat"), r = c(TRUE), s = "frame"),
      list(f = .ropecv_cv_dnn_TextDetectionModel_TextDetectionModel_detectTextRectangles__1, p = c(frame = "mat"), r = c(TRUE), s = "frame")
    ),
    enableWinograd = list(
      list(f = .ropecv_cv_dnn_Model_Model_enableWinograd__0, p = c(useWinograd = "lgl"), r = c(TRUE), s = "useWinograd")
    ),
    getBinaryThreshold = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_getBinaryThreshold__0, p = c(), r = c(), s = "")
    ),
    getMaxCandidates = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_getMaxCandidates__0, p = c(), r = c(), s = "")
    ),
    getPolygonThreshold = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_getPolygonThreshold__0, p = c(), r = c(), s = "")
    ),
    getUnclipRatio = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_getUnclipRatio__0, p = c(), r = c(), s = "")
    ),
    predict = list(
      list(f = .ropecv_cv_dnn_Model_Model_predict__0, p = c(frame = "mat", outs = "lst"), r = c(TRUE, FALSE), s = "frame, outs = NULL")
    ),
    setBinaryThreshold = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_setBinaryThreshold__0, p = c(binaryThreshold = "dbl"), r = c(TRUE), s = "binaryThreshold")
    ),
    setInputCrop = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputCrop__0, p = c(crop = "lgl"), r = c(TRUE), s = "crop")
    ),
    setInputMean = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputMean__0, p = c(mean = "scalar"), r = c(TRUE), s = "mean")
    ),
    setInputParams = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputParams__0, p = c(scale = "dbl", size = "size", mean = "scalar", swapRB = "lgl", crop = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE), s = "scale = 1.0, size = NULL, mean = NULL, swapRB = FALSE, crop = FALSE")
    ),
    setInputScale = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputScale__0, p = c(scale = "scalar"), r = c(TRUE), s = "scale")
    ),
    setInputSize = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__0, p = c(size = "size"), r = c(TRUE), s = "size"),
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__1, p = c(width = "int", height = "int"), r = c(TRUE, TRUE), s = "width, height")
    ),
    setInputSwapRB = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSwapRB__0, p = c(swapRB = "lgl"), r = c(TRUE), s = "swapRB")
    ),
    setMaxCandidates = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_setMaxCandidates__0, p = c(maxCandidates = "int"), r = c(TRUE), s = "maxCandidates")
    ),
    setOutputNames = list(
      list(f = .ropecv_cv_dnn_Model_Model_setOutputNames__0, p = c(outNames = "chr"), r = c(TRUE), s = "outNames")
    ),
    setPolygonThreshold = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_setPolygonThreshold__0, p = c(polygonThreshold = "dbl"), r = c(TRUE), s = "polygonThreshold")
    ),
    setPreferableBackend = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableBackend__0, p = c(backendId = "any"), r = c(TRUE), s = "backendId")
    ),
    setPreferableTarget = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableTarget__0, p = c(targetId = "any"), r = c(TRUE), s = "targetId")
    ),
    setUnclipRatio = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_setUnclipRatio__0, p = c(unclipRatio = "dbl"), r = c(TRUE), s = "unclipRatio")
    )
  )
)

# cv::dnn::TextDetectionModel_EAST
.ropecv_reg("cvTextDetectionModel_EAST",
  new = list(
    list(f = .ropecv_cv_dnn_TextDetectionModel_EAST_TextDetectionModel_EAST_new__0, p = c(network = "any"), r = c(TRUE), s = "network"),
    list(f = .ropecv_cv_dnn_TextDetectionModel_EAST_TextDetectionModel_EAST_new__1, p = c(model = "chr", config = "chr"), r = c(TRUE, FALSE), s = "model, config = ''")
  ),
  m = list(
    detect = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_TextDetectionModel_detect__0, p = c(frame = "mat"), r = c(TRUE), s = "frame"),
      list(f = .ropecv_cv_dnn_TextDetectionModel_TextDetectionModel_detect__1, p = c(frame = "mat"), r = c(TRUE), s = "frame")
    ),
    detectTextRectangles = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_TextDetectionModel_detectTextRectangles__0, p = c(frame = "mat"), r = c(TRUE), s = "frame"),
      list(f = .ropecv_cv_dnn_TextDetectionModel_TextDetectionModel_detectTextRectangles__1, p = c(frame = "mat"), r = c(TRUE), s = "frame")
    ),
    enableWinograd = list(
      list(f = .ropecv_cv_dnn_Model_Model_enableWinograd__0, p = c(useWinograd = "lgl"), r = c(TRUE), s = "useWinograd")
    ),
    getConfidenceThreshold = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_EAST_TextDetectionModel_EAST_getConfidenceThreshold__0, p = c(), r = c(), s = "")
    ),
    getNMSThreshold = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_EAST_TextDetectionModel_EAST_getNMSThreshold__0, p = c(), r = c(), s = "")
    ),
    predict = list(
      list(f = .ropecv_cv_dnn_Model_Model_predict__0, p = c(frame = "mat", outs = "lst"), r = c(TRUE, FALSE), s = "frame, outs = NULL")
    ),
    setConfidenceThreshold = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_EAST_TextDetectionModel_EAST_setConfidenceThreshold__0, p = c(confThreshold = "dbl"), r = c(TRUE), s = "confThreshold")
    ),
    setInputCrop = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputCrop__0, p = c(crop = "lgl"), r = c(TRUE), s = "crop")
    ),
    setInputMean = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputMean__0, p = c(mean = "scalar"), r = c(TRUE), s = "mean")
    ),
    setInputParams = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputParams__0, p = c(scale = "dbl", size = "size", mean = "scalar", swapRB = "lgl", crop = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE), s = "scale = 1.0, size = NULL, mean = NULL, swapRB = FALSE, crop = FALSE")
    ),
    setInputScale = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputScale__0, p = c(scale = "scalar"), r = c(TRUE), s = "scale")
    ),
    setInputSize = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__0, p = c(size = "size"), r = c(TRUE), s = "size"),
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__1, p = c(width = "int", height = "int"), r = c(TRUE, TRUE), s = "width, height")
    ),
    setInputSwapRB = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSwapRB__0, p = c(swapRB = "lgl"), r = c(TRUE), s = "swapRB")
    ),
    setNMSThreshold = list(
      list(f = .ropecv_cv_dnn_TextDetectionModel_EAST_TextDetectionModel_EAST_setNMSThreshold__0, p = c(nmsThreshold = "dbl"), r = c(TRUE), s = "nmsThreshold")
    ),
    setOutputNames = list(
      list(f = .ropecv_cv_dnn_Model_Model_setOutputNames__0, p = c(outNames = "chr"), r = c(TRUE), s = "outNames")
    ),
    setPreferableBackend = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableBackend__0, p = c(backendId = "any"), r = c(TRUE), s = "backendId")
    ),
    setPreferableTarget = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableTarget__0, p = c(targetId = "any"), r = c(TRUE), s = "targetId")
    )
  )
)

# cv::dnn::TextRecognitionModel
.ropecv_reg("cvTextRecognitionModel",
  new = list(
    list(f = .ropecv_cv_dnn_TextRecognitionModel_TextRecognitionModel_new__0, p = c(network = "any"), r = c(TRUE), s = "network"),
    list(f = .ropecv_cv_dnn_TextRecognitionModel_TextRecognitionModel_new__1, p = c(model = "chr", config = "chr"), r = c(TRUE, FALSE), s = "model, config = ''")
  ),
  m = list(
    enableWinograd = list(
      list(f = .ropecv_cv_dnn_Model_Model_enableWinograd__0, p = c(useWinograd = "lgl"), r = c(TRUE), s = "useWinograd")
    ),
    getDecodeType = list(
      list(f = .ropecv_cv_dnn_TextRecognitionModel_TextRecognitionModel_getDecodeType__0, p = c(), r = c(), s = "")
    ),
    getVocabulary = list(
      list(f = .ropecv_cv_dnn_TextRecognitionModel_TextRecognitionModel_getVocabulary__0, p = c(), r = c(), s = "")
    ),
    predict = list(
      list(f = .ropecv_cv_dnn_Model_Model_predict__0, p = c(frame = "mat", outs = "lst"), r = c(TRUE, FALSE), s = "frame, outs = NULL")
    ),
    recognize = list(
      list(f = .ropecv_cv_dnn_TextRecognitionModel_TextRecognitionModel_recognize__0, p = c(frame = "mat"), r = c(TRUE), s = "frame"),
      list(f = .ropecv_cv_dnn_TextRecognitionModel_TextRecognitionModel_recognize__1, p = c(frame = "mat", roiRects = "matlist"), r = c(TRUE, TRUE), s = "frame, roiRects")
    ),
    setDecodeOptsCTCPrefixBeamSearch = list(
      list(f = .ropecv_cv_dnn_TextRecognitionModel_TextRecognitionModel_setDecodeOptsCTCPrefixBeamSearch__0, p = c(beamSize = "int", vocPruneSize = "int"), r = c(TRUE, FALSE), s = "beamSize, vocPruneSize = 0")
    ),
    setDecodeType = list(
      list(f = .ropecv_cv_dnn_TextRecognitionModel_TextRecognitionModel_setDecodeType__0, p = c(decodeType = "chr"), r = c(TRUE), s = "decodeType")
    ),
    setInputCrop = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputCrop__0, p = c(crop = "lgl"), r = c(TRUE), s = "crop")
    ),
    setInputMean = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputMean__0, p = c(mean = "scalar"), r = c(TRUE), s = "mean")
    ),
    setInputParams = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputParams__0, p = c(scale = "dbl", size = "size", mean = "scalar", swapRB = "lgl", crop = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE), s = "scale = 1.0, size = NULL, mean = NULL, swapRB = FALSE, crop = FALSE")
    ),
    setInputScale = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputScale__0, p = c(scale = "scalar"), r = c(TRUE), s = "scale")
    ),
    setInputSize = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__0, p = c(size = "size"), r = c(TRUE), s = "size"),
      list(f = .ropecv_cv_dnn_Model_Model_setInputSize__1, p = c(width = "int", height = "int"), r = c(TRUE, TRUE), s = "width, height")
    ),
    setInputSwapRB = list(
      list(f = .ropecv_cv_dnn_Model_Model_setInputSwapRB__0, p = c(swapRB = "lgl"), r = c(TRUE), s = "swapRB")
    ),
    setOutputNames = list(
      list(f = .ropecv_cv_dnn_Model_Model_setOutputNames__0, p = c(outNames = "chr"), r = c(TRUE), s = "outNames")
    ),
    setPreferableBackend = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableBackend__0, p = c(backendId = "any"), r = c(TRUE), s = "backendId")
    ),
    setPreferableTarget = list(
      list(f = .ropecv_cv_dnn_Model_Model_setPreferableTarget__0, p = c(targetId = "any"), r = c(TRUE), s = "targetId")
    ),
    setVocabulary = list(
      list(f = .ropecv_cv_dnn_TextRecognitionModel_TextRecognitionModel_setVocabulary__0, p = c(vocabulary = "chr"), r = c(TRUE), s = "vocabulary")
    )
  )
)
