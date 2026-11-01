# 类方法注册表（必须排在所有 cvcls_*.R 之前被 source）
#
# 为什么用全局表而不是把方法挂在对象上：
#   对象是 EXTPTRSXP，构造路径有两条——cv<类名>(...) 直接 new，和 cv_createXxx()
#   这类工厂函数。工厂在 cv_*.R 里、由另一套生成器产出，不知道方法表。
#   把方法表按类名集中放在这里，两条路径产出的对象都能用 $ 取方法。
#
# 表结构：.ropecv_cls$cvCLAHE = list(new = <构造签名>, m = list(<方法名> = <签名>))
# 签名行的格式与 dispatch.R 里 .ropecv_pick 要求的完全一致。

.ropecv_cls <- new.env(parent = emptyenv())

.ropecv_reg <- function(cls, new = list(), m = list()) {
  assign(cls, list(new = new, m = m), envir = .ropecv_cls)
  invisible(NULL)
}

# 直接构造。ctor 签名里第一个形参是 self 的那种（成员方法）不在这里出现。
.ropecv_new <- function(fname, cls, args) {
  e <- .ropecv_cls[[cls]]
  if (is.null(e) || !length(e$new)) {
    stop(sprintf(paste0("%s cannot be constructed directly: it is an abstract ",
                        "interface or factory-created only.\n",
                        "  Available factories: %s"),
                 cls, .ropecv_factories(cls)), call. = FALSE)
  }
  .ropecv_pick(fname, e$new, args)
}

# 提示用：猜一下哪些 cv_create* 会产出这个类。猜不到就返回提示语。
.ropecv_factories <- function(cls) {
  bare <- sub("^cv", "", cls)
  cand <- ls(envir = topenv(environment()), pattern = "^cv_create", all.names = TRUE)
  cand <- grep(bare, cand, value = TRUE)
  if (length(cand)) paste(cand, collapse = ", ") else "(none; see the OpenCV docs)"
}
