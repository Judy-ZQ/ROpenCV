# 手写 C++ 入口的 R 壳子。
#
# 生成器产出的 cv_*.R 已经自带壳子；这里只补 probe.cpp / cv_types.cpp 里
# 手写的那几个。之所以不依赖 RcppExports.R：那个文件里的壳子不带参数默认值
# （Rcpp 不会把 C++ 的 R_NilValue 翻成 R 的 NULL），会和 cv_*.R 里的同名函数
# 冲突，所以构建时直接删掉，只留它产出的 RcppExports.cpp（注册表）。

cv_type_constants <- function() {
  .Call(`_ROpenCV_cv_type_constants`)
}

cv_enums <- function() {
  .Call(`_ROpenCV_cv_enums`)
}

probe_mat_new <- function(rows, cols, type, value) {
  .Call(`_ROpenCV_probe_mat_new`, rows, cols, type, value)
}

# Mat(x)：把 R 的矩阵 / 三维数组 / raw 向量深拷贝进一个 cv::Mat
probe_mat_from <- function(x) {
  .Call(`_ROpenCV_probe_mat_from`, x)
}

probe_info <- function(m) {
  .Call(`_ROpenCV_probe_info`, m)
}

probe_sum <- function(src) {
  .Call(`_ROpenCV_probe_sum`, src)
}

probe_to_r <- function(m) {
  .Call(`_ROpenCV_probe_to_r`, m)
}

# 原地写：idx 是按列优先展开的 1-based 线性下标
probe_mat_assign <- function(m, idx, value) {
  invisible(.Call(`_ROpenCV_probe_mat_assign`, m, idx, value))
}

probe_mat_extract <- function(m, idx) {
  .Call(`_ROpenCV_probe_mat_extract`, m, idx)
}

# ROI：返回共享像素缓冲的子矩阵头，不拷贝
probe_mat_roi <- function(m, x, y, w, h) {
  .Call(`_ROpenCV_probe_mat_roi`, m, x, y, w, h)
}

# FileNode 下标：字符按名字找（map），整数按位置找（sequence，1 基）
probe_filenode_get <- function(node, key) {
  .Call(`_ROpenCV_probe_filenode_get`, node, key)
}
