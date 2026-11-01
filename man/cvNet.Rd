% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvNet}
\alias{cvNet}
\title{This class allows to create and manipulate comprehensive artificial neural networks}
\usage{cvNet(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvNet} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{This class allows to create and manipulate comprehensive artificial neural networks.}
\details{
Neural network is presented as directed acyclic graph (DAG), where vertices are Layer instances, and edges specify relationships between layers inputs and outputs.
Each network layer has unique integer id and unique string name inside its network. LayerId can store either layer name or layer id.
This class supports reference counting of its instances, i. e. copies point to the same instance.
\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
\strong{构造}
\preformatted{
cvNet()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvNet(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{addLayer(name, type, dtype, params = list())}：Adds new layer to the net.
\item \code{addLayerToPrev(name, type, dtype, params = list())}：Adds new layer and connects its first input to the first output of previously added layer.
\item \code{connect(outPin, inpPin)}：Connects output of the first layer to input of the second layer.
\item \code{dump()}：Dump net to String.
\item \code{dumpToFile(path)}：Dump net structure, hyperparameters, backend, target and fusion to dot file.
\item \code{dumpToPbtxt(path)}：Dump net structure, hyperparameters, backend, target and fusion to pbtxt file.
\item \code{empty()}：Returns true if there are no layers in the network.
\item \code{enableFusion(fusion)}：Enables or disables layer fusion in the network.
\item \code{enableWinograd(useWinograd)}：Enables or disables the Winograd compute branch. The Winograd compute branch can speed up 3x3 Convolution at a small loss of accuracy.
\item \code{forward(outputName = '', outputBlobs = NULL)}：Runs forward pass to compute outputs of layers listed in \code{outBlobNames}.
\item \code{forwardAsync(outputName = '')}：Runs forward pass to compute output of layer with name \code{outputName}.
\item \code{getFLOPS(layerId, netInputShapes, netInputTypes)}：Computes FLOP for whole loaded model with specified input shapes.
\item \code{getLayer(layerName)}：Returns pointer to layer with specified id or name which the network use.
\item \code{getLayerId(layer)}：Converts string name of the layer to the integer identifier.
\item \code{getLayerNames()}
\item \code{getLayerShapes(netInputShape, netInputType, layerId)}：Returns input and output shapes for layer with specified id in loaded model; preliminary inferencing isn't necessary.
\item \code{getLayerTypes()}：Returns list of types for layer used in model.
\item \code{getLayersCount(layerType)}：Returns count of layers of specified type.
\item \code{getLayersShapes(netInputShapes, netInputTypes)}：Returns input and output shapes for all layers in loaded model; preliminary inferencing isn't necessary.
\item \code{getMemoryConsumption(layerId, netInputShapes, netInputTypes)}：Computes bytes number which are required to store all weights and intermediate blobs for each layer.
\item \code{getParam(layerName, numParam = 0)}：Returns parameter blob of the layer.
\item \code{getPerfProfile()}：Returns overall time for inference and timings (in ticks) for layers.
\item \code{getUnconnectedOutLayers()}：Returns indexes of layers with unconnected outputs.
\item \code{getUnconnectedOutLayersNames()}：Returns names of layers with unconnected outputs.
\item \code{setInput(blob, name = '', scalefactor = 1.0, mean = NULL)}：Sets the new input value for the network.
\item \code{setInputShape(inputName, shape)}：Specify shape of network input.
\item \code{setInputsNames(inputBlobNames)}：Sets outputs names of the network input pseudo layer.
\item \code{setParam(layerName, numParam, blob)}：Sets the new value for the learned param of the layer.
\item \code{setPreferableBackend(backendId)}：Ask network to use specific computation backend where it supported.
\item \code{setPreferableTarget(targetId)}：Ask network to make computations on specific target device.
}
}
\section{LayerParams 参数}{
这个参数在 R 侧是一个命名 list，键直接写 C++ 的参数名：
\preformatted{obj$addLayer("conv1", "Convolution", CV_32F,
                 list(num_output = 64L, pad = 1L, kernel_size = c(3L, 3L)))}
没有固定字段表——能写哪些键由具体层的类型决定，键名写错要到 OpenCV 建层时才报错。
支持的值：整数 / 实数 / 字符串的标量或向量；另有 \code{blobs}（\code{cvMat} 列表）、\code{name} 和 \code{type}（字符串）三个固定成员。\code{list()} 合法，表示全部用默认值。
}
\keyword{opencv}
