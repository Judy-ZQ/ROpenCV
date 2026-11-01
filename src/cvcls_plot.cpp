// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/plot.hpp>

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_create__0(SEXP data) {
  try {
    ropecv::InArg _i0(data);
    cv::Ptr<cv::plot::Plot2d> _rv = cv::plot::Plot2d::create(_i0.ia());
    return ropecv::wrap_obj(_rv, "cvPlot2d");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_create__1(SEXP dataX, SEXP dataY) {
  try {
    ropecv::InArg _i0(dataX);
    ropecv::InArg _i1(dataY);
    cv::Ptr<cv::plot::Plot2d> _rv = cv::plot::Plot2d::create(_i0.ia(), _i1.ia());
    return ropecv::wrap_obj(_rv, "cvPlot2d");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_render__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->render(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("render: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("render: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setGridLinesNumber__0(SEXP ropecv_self_, int gridLinesNumber) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setGridLinesNumber(gridLinesNumber);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setGridLinesNumber: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setGridLinesNumber: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setInvertOrientation__0(SEXP ropecv_self_, bool invertOrientation) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setInvertOrientation(invertOrientation);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInvertOrientation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInvertOrientation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setMaxX__0(SEXP ropecv_self_, double plotMaxX) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setMaxX(plotMaxX);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxX: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxX: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setMaxY__0(SEXP ropecv_self_, double plotMaxY) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setMaxY(plotMaxY);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxY: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxY: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setMinX__0(SEXP ropecv_self_, double plotMinX) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setMinX(plotMinX);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinX: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinX: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setMinY__0(SEXP ropecv_self_, double plotMinY) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setMinY(plotMinY);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinY: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinY: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setNeedPlotLine__0(SEXP ropecv_self_, bool needPlotLine) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setNeedPlotLine(needPlotLine);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNeedPlotLine: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNeedPlotLine: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setPlotAxisColor__0(SEXP ropecv_self_, SEXP plotAxisColor) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setPlotAxisColor(ropecv::as_scalar(plotAxisColor));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPlotAxisColor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPlotAxisColor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setPlotBackgroundColor__0(SEXP ropecv_self_, SEXP plotBackgroundColor) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setPlotBackgroundColor(ropecv::as_scalar(plotBackgroundColor));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPlotBackgroundColor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPlotBackgroundColor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setPlotGridColor__0(SEXP ropecv_self_, SEXP plotGridColor) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setPlotGridColor(ropecv::as_scalar(plotGridColor));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPlotGridColor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPlotGridColor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setPlotLineColor__0(SEXP ropecv_self_, SEXP plotLineColor) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setPlotLineColor(ropecv::as_scalar(plotLineColor));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPlotLineColor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPlotLineColor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setPlotLineWidth__0(SEXP ropecv_self_, int plotLineWidth) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setPlotLineWidth(plotLineWidth);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPlotLineWidth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPlotLineWidth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setPlotSize__0(SEXP ropecv_self_, int plotSizeWidth, int plotSizeHeight) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setPlotSize(plotSizeWidth, plotSizeHeight);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPlotSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPlotSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setPlotTextColor__0(SEXP ropecv_self_, SEXP plotTextColor) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setPlotTextColor(ropecv::as_scalar(plotTextColor));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPlotTextColor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPlotTextColor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setPointIdxToPrint__0(SEXP ropecv_self_, int pointIdx) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setPointIdxToPrint(pointIdx);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPointIdxToPrint: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPointIdxToPrint: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setShowGrid__0(SEXP ropecv_self_, bool needShowGrid) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setShowGrid(needShowGrid);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setShowGrid: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setShowGrid: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_plot_Plot2d_Plot2d_setShowText__0(SEXP ropecv_self_, bool needShowText) {
  try {
    ropecv::obj_as<cv::plot::Plot2d>(ropecv_self_)->setShowText(needShowText);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setShowText: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setShowText: %s", e.what());
  }
}
