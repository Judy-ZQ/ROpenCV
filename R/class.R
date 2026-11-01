# cv 对象的 R 侧表现（手写，不生成）
#
# 对象是 EXTPTRSXP，C++ 侧 class 属性为 c("cv<类名>", "cvObject")。
# 方法通过 $ 取用：obj$apply(img)。不提供 S3 泛型方法链，理由见 ADR-001 第十一节。
#
# $ 返回的闭包在调用时把接收者注入 C++ 入口的第一个形参（self）。

# 把签名表里的每个入口包一层，固定住接收者。
.ropecv_bind <- function(sigs, self) {
  lapply(sigs, function(s) {
    s$f <- local({
      f <- s$f
      function(...) f(self, ...)
    })
    s
  })
}

`$.cvObject` <- function(x, name) {
  cls <- class(x)[1]
  e <- .ropecv_cls[[cls]]
  sig <- if (is.null(e)) NULL else e$m[[name]]
  if (is.null(sig)) {
    avail <- if (is.null(e)) character(0) else names(e$m)
    stop(sprintf("%s has no method %s.\n  Available methods: %s", cls, name,
                 if (length(avail)) paste(avail, collapse = ", ") else "(none)"),
         call. = FALSE)
  }
  sig <- .ropecv_bind(sig, x)
  function(...) {
    r <- .ropecv_pick(name, sig, list(...))
    # void 方法返回 NULL：把接收者还回去，方便链式写。
    if (is.null(r)) invisible(x) else r
  }
}

# FileNode 的下标。
#
# 其余 cv 对象都不提供 [[，因为它们的「下标」语义各不相同（Mat 是像素，
# FileNode 是子节点）。FileNode 这一处必须提供：读配置文件的唯一手段就是
# 「按名字取子节点」，缺了它 cvFileStorage 只能读出第一个顶层键。
#
# 返回值可能是 NULL——键不存在时 OpenCV 给的是 none 节点，这里翻成 NULL。
`[[.cvFileNode` <- function(x, i, ...) {
  probe_filenode_get(x, i)
}

names.cvObject <- function(x) {
  e <- .ropecv_cls[[class(x)[1]]]
  if (is.null(e)) character(0) else names(e$m)
}

print.cvObject <- function(x, ...) {
  cls <- class(x)[1]
  ms <- names.cvObject(x)
  cat(sprintf("<%s> OpenCV object\n", cls))
  if (length(ms)) {
    cat("  methods: ", paste(ms, collapse = ", "), "\n", sep = "")
  } else {
    cat("  methods: (none bound)\n")
  }
  invisible(x)
}

is_cvObject <- function(x) inherits(x, "cvObject")
