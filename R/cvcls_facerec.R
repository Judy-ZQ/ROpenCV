# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getEigenValues__0 <- function(self) .Call(`_ROpenCV_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getEigenValues__0`, self)
.ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getEigenVectors__0 <- function(self) .Call(`_ROpenCV_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getEigenVectors__0`, self)
.ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getLabels__0 <- function(self) .Call(`_ROpenCV_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getLabels__0`, self)
.ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getMean__0 <- function(self) .Call(`_ROpenCV_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getMean__0`, self)
.ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getNumComponents__0 <- function(self) .Call(`_ROpenCV_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getNumComponents__0`, self)
.ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getProjections__0 <- function(self) .Call(`_ROpenCV_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getProjections__0`, self)
.ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getThreshold__0 <- function(self) .Call(`_ROpenCV_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_getThreshold__0`, self)
.ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_setNumComponents__0 <- function(self, val) .Call(`_ROpenCV_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_setNumComponents__0`, self, val)
.ropecv_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_setThreshold__0 <- function(self, val) .Call(`_ROpenCV_cv_face_BasicFaceRecognizer_BasicFaceRecognizer_setThreshold__0`, self, val)
.ropecv_cv_face_EigenFaceRecognizer_EigenFaceRecognizer_create__0 <- function(num_components = 0, threshold = Inf) .Call(`_ROpenCV_cv_face_EigenFaceRecognizer_EigenFaceRecognizer_create__0`, num_components, threshold)
.ropecv_cv_face_FisherFaceRecognizer_FisherFaceRecognizer_create__0 <- function(num_components = 0, threshold = Inf) .Call(`_ROpenCV_cv_face_FisherFaceRecognizer_FisherFaceRecognizer_create__0`, num_components, threshold)
.ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_create__0 <- function(radius = 1, neighbors = 8, grid_x = 8, grid_y = 8, threshold = Inf) .Call(`_ROpenCV_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_create__0`, radius, neighbors, grid_x, grid_y, threshold)
.ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getGridX__0 <- function(self) .Call(`_ROpenCV_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getGridX__0`, self)
.ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getGridY__0 <- function(self) .Call(`_ROpenCV_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getGridY__0`, self)
.ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getHistograms__0 <- function(self) .Call(`_ROpenCV_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getHistograms__0`, self)
.ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getLabels__0 <- function(self) .Call(`_ROpenCV_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getLabels__0`, self)
.ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getNeighbors__0 <- function(self) .Call(`_ROpenCV_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getNeighbors__0`, self)
.ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getRadius__0 <- function(self) .Call(`_ROpenCV_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getRadius__0`, self)
.ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getThreshold__0 <- function(self) .Call(`_ROpenCV_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_getThreshold__0`, self)
.ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setGridX__0 <- function(self, val) .Call(`_ROpenCV_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setGridX__0`, self, val)
.ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setGridY__0 <- function(self, val) .Call(`_ROpenCV_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setGridY__0`, self, val)
.ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setNeighbors__0 <- function(self, val) .Call(`_ROpenCV_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setNeighbors__0`, self, val)
.ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setRadius__0 <- function(self, val) .Call(`_ROpenCV_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setRadius__0`, self, val)
.ropecv_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setThreshold__0 <- function(self, val) .Call(`_ROpenCV_cv_face_LBPHFaceRecognizer_LBPHFaceRecognizer_setThreshold__0`, self, val)

cvBasicFaceRecognizer <- function(...) .ropecv_new("cvBasicFaceRecognizer", "cvBasicFaceRecognizer", list(...))

cvEigenFaceRecognizer <- function(...) .ropecv_new("cvEigenFaceRecognizer", "cvEigenFaceRecognizer", list(...))

cvFisherFaceRecognizer <- function(...) .ropecv_new("cvFisherFaceRecognizer", "cvFisherFaceRecognizer", list(...))

cvLBPHFaceRecognizer <- function(...) .ropecv_new("cvLBPHFaceRecognizer", "cvLBPHFaceRecognizer", list(...))
