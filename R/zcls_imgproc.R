# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::CLAHE
.ropecv_reg("cvCLAHE",
  new = list(

  ),
  m = list(
    apply = list(
      list(f = .ropecv_cv_CLAHE_CLAHE_apply__0, p = c(src = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "src, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    collectGarbage = list(
      list(f = .ropecv_cv_CLAHE_CLAHE_collectGarbage__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getClipLimit = list(
      list(f = .ropecv_cv_CLAHE_CLAHE_getClipLimit__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getTilesGridSize = list(
      list(f = .ropecv_cv_CLAHE_CLAHE_getTilesGridSize__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setClipLimit = list(
      list(f = .ropecv_cv_CLAHE_CLAHE_setClipLimit__0, p = c(clipLimit = "dbl"), r = c(TRUE), s = "clipLimit")
    ),
    setTilesGridSize = list(
      list(f = .ropecv_cv_CLAHE_CLAHE_setTilesGridSize__0, p = c(tileGridSize = "size"), r = c(TRUE), s = "tileGridSize")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::FontFace
.ropecv_reg("cvFontFace",
  new = list(
    list(f = .ropecv_cv_FontFace_FontFace_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_FontFace_FontFace_new__1, p = c(fontPathOrName = "chr"), r = c(TRUE), s = "fontPathOrName")
  ),
  m = list(
    getInstance = list(
      list(f = .ropecv_cv_FontFace_FontFace_getInstance__0, p = c(), r = c(), s = "")
    ),
    getName = list(
      list(f = .ropecv_cv_FontFace_FontFace_getName__0, p = c(), r = c(), s = "")
    ),
    set = list(
      list(f = .ropecv_cv_FontFace_FontFace_set__0, p = c(fontPathOrName = "chr"), r = c(TRUE), s = "fontPathOrName")
    ),
    setInstance = list(
      list(f = .ropecv_cv_FontFace_FontFace_setInstance__0, p = c(params = "int"), r = c(TRUE), s = "params")
    )
  )
)

# cv::GeneralizedHough
.ropecv_reg("cvGeneralizedHough",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_detect__0, p = c(image = "mat", positions = "mat", votes = "mat"), r = c(TRUE, FALSE, FALSE), s = "image, positions = NULL, votes = NULL"),
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_detect__1, p = c(edges = "mat", dx = "mat", dy = "mat", positions = "mat", votes = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE), s = "edges, dx, dy, positions = NULL, votes = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getCannyHighThresh = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_getCannyHighThresh__0, p = c(), r = c(), s = "")
    ),
    getCannyLowThresh = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_getCannyLowThresh__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDp = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_getDp__0, p = c(), r = c(), s = "")
    ),
    getMaxBufferSize = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_getMaxBufferSize__0, p = c(), r = c(), s = "")
    ),
    getMinDist = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_getMinDist__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setCannyHighThresh = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setCannyHighThresh__0, p = c(cannyHighThresh = "int"), r = c(TRUE), s = "cannyHighThresh")
    ),
    setCannyLowThresh = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setCannyLowThresh__0, p = c(cannyLowThresh = "int"), r = c(TRUE), s = "cannyLowThresh")
    ),
    setDp = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setDp__0, p = c(dp = "dbl"), r = c(TRUE), s = "dp")
    ),
    setMaxBufferSize = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setMaxBufferSize__0, p = c(maxBufferSize = "int"), r = c(TRUE), s = "maxBufferSize")
    ),
    setMinDist = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setMinDist__0, p = c(minDist = "dbl"), r = c(TRUE), s = "minDist")
    ),
    setTemplate = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setTemplate__0, p = c(templ = "mat", templCenter = "pt"), r = c(TRUE, FALSE), s = "templ, templCenter = c(-1, -1)"),
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setTemplate__1, p = c(edges = "mat", dx = "mat", dy = "mat", templCenter = "pt"), r = c(TRUE, TRUE, TRUE, FALSE), s = "edges, dx, dy, templCenter = c(-1, -1)")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::GeneralizedHoughBallard
.ropecv_reg("cvGeneralizedHoughBallard",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_detect__0, p = c(image = "mat", positions = "mat", votes = "mat"), r = c(TRUE, FALSE, FALSE), s = "image, positions = NULL, votes = NULL"),
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_detect__1, p = c(edges = "mat", dx = "mat", dy = "mat", positions = "mat", votes = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE), s = "edges, dx, dy, positions = NULL, votes = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getCannyHighThresh = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_getCannyHighThresh__0, p = c(), r = c(), s = "")
    ),
    getCannyLowThresh = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_getCannyLowThresh__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDp = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_getDp__0, p = c(), r = c(), s = "")
    ),
    getLevels = list(
      list(f = .ropecv_cv_GeneralizedHoughBallard_GeneralizedHoughBallard_getLevels__0, p = c(), r = c(), s = "")
    ),
    getMaxBufferSize = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_getMaxBufferSize__0, p = c(), r = c(), s = "")
    ),
    getMinDist = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_getMinDist__0, p = c(), r = c(), s = "")
    ),
    getVotesThreshold = list(
      list(f = .ropecv_cv_GeneralizedHoughBallard_GeneralizedHoughBallard_getVotesThreshold__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setCannyHighThresh = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setCannyHighThresh__0, p = c(cannyHighThresh = "int"), r = c(TRUE), s = "cannyHighThresh")
    ),
    setCannyLowThresh = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setCannyLowThresh__0, p = c(cannyLowThresh = "int"), r = c(TRUE), s = "cannyLowThresh")
    ),
    setDp = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setDp__0, p = c(dp = "dbl"), r = c(TRUE), s = "dp")
    ),
    setLevels = list(
      list(f = .ropecv_cv_GeneralizedHoughBallard_GeneralizedHoughBallard_setLevels__0, p = c(levels = "int"), r = c(TRUE), s = "levels")
    ),
    setMaxBufferSize = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setMaxBufferSize__0, p = c(maxBufferSize = "int"), r = c(TRUE), s = "maxBufferSize")
    ),
    setMinDist = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setMinDist__0, p = c(minDist = "dbl"), r = c(TRUE), s = "minDist")
    ),
    setTemplate = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setTemplate__0, p = c(templ = "mat", templCenter = "pt"), r = c(TRUE, FALSE), s = "templ, templCenter = c(-1, -1)"),
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setTemplate__1, p = c(edges = "mat", dx = "mat", dy = "mat", templCenter = "pt"), r = c(TRUE, TRUE, TRUE, FALSE), s = "edges, dx, dy, templCenter = c(-1, -1)")
    ),
    setVotesThreshold = list(
      list(f = .ropecv_cv_GeneralizedHoughBallard_GeneralizedHoughBallard_setVotesThreshold__0, p = c(votesThreshold = "int"), r = c(TRUE), s = "votesThreshold")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::GeneralizedHoughGuil
.ropecv_reg("cvGeneralizedHoughGuil",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_detect__0, p = c(image = "mat", positions = "mat", votes = "mat"), r = c(TRUE, FALSE, FALSE), s = "image, positions = NULL, votes = NULL"),
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_detect__1, p = c(edges = "mat", dx = "mat", dy = "mat", positions = "mat", votes = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE), s = "edges, dx, dy, positions = NULL, votes = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getAngleEpsilon = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getAngleEpsilon__0, p = c(), r = c(), s = "")
    ),
    getAngleStep = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getAngleStep__0, p = c(), r = c(), s = "")
    ),
    getAngleThresh = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getAngleThresh__0, p = c(), r = c(), s = "")
    ),
    getCannyHighThresh = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_getCannyHighThresh__0, p = c(), r = c(), s = "")
    ),
    getCannyLowThresh = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_getCannyLowThresh__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDp = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_getDp__0, p = c(), r = c(), s = "")
    ),
    getLevels = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getLevels__0, p = c(), r = c(), s = "")
    ),
    getMaxAngle = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getMaxAngle__0, p = c(), r = c(), s = "")
    ),
    getMaxBufferSize = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_getMaxBufferSize__0, p = c(), r = c(), s = "")
    ),
    getMaxScale = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getMaxScale__0, p = c(), r = c(), s = "")
    ),
    getMinAngle = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getMinAngle__0, p = c(), r = c(), s = "")
    ),
    getMinDist = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_getMinDist__0, p = c(), r = c(), s = "")
    ),
    getMinScale = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getMinScale__0, p = c(), r = c(), s = "")
    ),
    getPosThresh = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getPosThresh__0, p = c(), r = c(), s = "")
    ),
    getScaleStep = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getScaleStep__0, p = c(), r = c(), s = "")
    ),
    getScaleThresh = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getScaleThresh__0, p = c(), r = c(), s = "")
    ),
    getXi = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_getXi__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setAngleEpsilon = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setAngleEpsilon__0, p = c(angleEpsilon = "dbl"), r = c(TRUE), s = "angleEpsilon")
    ),
    setAngleStep = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setAngleStep__0, p = c(angleStep = "dbl"), r = c(TRUE), s = "angleStep")
    ),
    setAngleThresh = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setAngleThresh__0, p = c(angleThresh = "int"), r = c(TRUE), s = "angleThresh")
    ),
    setCannyHighThresh = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setCannyHighThresh__0, p = c(cannyHighThresh = "int"), r = c(TRUE), s = "cannyHighThresh")
    ),
    setCannyLowThresh = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setCannyLowThresh__0, p = c(cannyLowThresh = "int"), r = c(TRUE), s = "cannyLowThresh")
    ),
    setDp = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setDp__0, p = c(dp = "dbl"), r = c(TRUE), s = "dp")
    ),
    setLevels = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setLevels__0, p = c(levels = "int"), r = c(TRUE), s = "levels")
    ),
    setMaxAngle = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setMaxAngle__0, p = c(maxAngle = "dbl"), r = c(TRUE), s = "maxAngle")
    ),
    setMaxBufferSize = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setMaxBufferSize__0, p = c(maxBufferSize = "int"), r = c(TRUE), s = "maxBufferSize")
    ),
    setMaxScale = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setMaxScale__0, p = c(maxScale = "dbl"), r = c(TRUE), s = "maxScale")
    ),
    setMinAngle = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setMinAngle__0, p = c(minAngle = "dbl"), r = c(TRUE), s = "minAngle")
    ),
    setMinDist = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setMinDist__0, p = c(minDist = "dbl"), r = c(TRUE), s = "minDist")
    ),
    setMinScale = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setMinScale__0, p = c(minScale = "dbl"), r = c(TRUE), s = "minScale")
    ),
    setPosThresh = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setPosThresh__0, p = c(posThresh = "int"), r = c(TRUE), s = "posThresh")
    ),
    setScaleStep = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setScaleStep__0, p = c(scaleStep = "dbl"), r = c(TRUE), s = "scaleStep")
    ),
    setScaleThresh = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setScaleThresh__0, p = c(scaleThresh = "int"), r = c(TRUE), s = "scaleThresh")
    ),
    setTemplate = list(
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setTemplate__0, p = c(templ = "mat", templCenter = "pt"), r = c(TRUE, FALSE), s = "templ, templCenter = c(-1, -1)"),
      list(f = .ropecv_cv_GeneralizedHough_GeneralizedHough_setTemplate__1, p = c(edges = "mat", dx = "mat", dy = "mat", templCenter = "pt"), r = c(TRUE, TRUE, TRUE, FALSE), s = "edges, dx, dy, templCenter = c(-1, -1)")
    ),
    setXi = list(
      list(f = .ropecv_cv_GeneralizedHoughGuil_GeneralizedHoughGuil_setXi__0, p = c(xi = "dbl"), r = c(TRUE), s = "xi")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::LineSegmentDetector
.ropecv_reg("cvLineSegmentDetector",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compareSegments = list(
      list(f = .ropecv_cv_LineSegmentDetector_LineSegmentDetector_compareSegments__0, p = c(size = "size", lines1 = "mat", lines2 = "mat", image = "mat"), r = c(TRUE, TRUE, TRUE, FALSE), s = "size, lines1, lines2, image = NULL")
    ),
    detect = list(
      list(f = .ropecv_cv_LineSegmentDetector_LineSegmentDetector_detect__0, p = c(image = "mat", lines = "mat", width = "mat", prec = "mat", nfa = "mat"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE), s = "image, lines = NULL, width = NULL, prec = NULL, nfa = NULL")
    ),
    drawSegments = list(
      list(f = .ropecv_cv_LineSegmentDetector_LineSegmentDetector_drawSegments__0, p = c(image = "mat", lines = "mat"), r = c(FALSE, TRUE), s = "image = NULL, lines")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
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

# cv::Subdiv2D
.ropecv_reg("cvSubdiv2D",
  new = list(
    list(f = .ropecv_cv_Subdiv2D_Subdiv2D_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_Subdiv2D_Subdiv2D_new__1, p = c(rect = "rect"), r = c(TRUE), s = "rect")
  ),
  m = list(
    edgeDst = list(
      list(f = .ropecv_cv_Subdiv2D_Subdiv2D_edgeDst__0, p = c(edge = "int"), r = c(TRUE), s = "edge")
    ),
    edgeOrg = list(
      list(f = .ropecv_cv_Subdiv2D_Subdiv2D_edgeOrg__0, p = c(edge = "int"), r = c(TRUE), s = "edge")
    ),
    findNearest = list(
      list(f = .ropecv_cv_Subdiv2D_Subdiv2D_findNearest__0, p = c(pt = "pt"), r = c(TRUE), s = "pt")
    ),
    getEdge = list(
      list(f = .ropecv_cv_Subdiv2D_Subdiv2D_getEdge__0, p = c(edge = "int", nextEdgeType = "int"), r = c(TRUE, TRUE), s = "edge, nextEdgeType")
    ),
    getEdgeList = list(
      list(f = .ropecv_cv_Subdiv2D_Subdiv2D_getEdgeList__0, p = c(), r = c(), s = "")
    ),
    getLeadingEdgeList = list(
      list(f = .ropecv_cv_Subdiv2D_Subdiv2D_getLeadingEdgeList__0, p = c(), r = c(), s = "")
    ),
    getTriangleList = list(
      list(f = .ropecv_cv_Subdiv2D_Subdiv2D_getTriangleList__0, p = c(), r = c(), s = "")
    ),
    getVertex = list(
      list(f = .ropecv_cv_Subdiv2D_Subdiv2D_getVertex__0, p = c(vertex = "int"), r = c(TRUE), s = "vertex")
    ),
    getVoronoiFacetList = list(
      list(f = .ropecv_cv_Subdiv2D_Subdiv2D_getVoronoiFacetList__0, p = c(idx = "int"), r = c(TRUE), s = "idx")
    ),
    initDelaunay = list(
      list(f = .ropecv_cv_Subdiv2D_Subdiv2D_initDelaunay__0, p = c(rect = "rect"), r = c(TRUE), s = "rect")
    ),
    insert = list(
      list(f = .ropecv_cv_Subdiv2D_Subdiv2D_insert__0, p = c(pt = "pt"), r = c(TRUE), s = "pt"),
      list(f = .ropecv_cv_Subdiv2D_Subdiv2D_insert__1, p = c(ptvec = "lst"), r = c(TRUE), s = "ptvec")
    ),
    locate = list(
      list(f = .ropecv_cv_Subdiv2D_Subdiv2D_locate__0, p = c(pt = "pt"), r = c(TRUE), s = "pt")
    ),
    nextEdge = list(
      list(f = .ropecv_cv_Subdiv2D_Subdiv2D_nextEdge__0, p = c(edge = "int"), r = c(TRUE), s = "edge")
    ),
    rotateEdge = list(
      list(f = .ropecv_cv_Subdiv2D_Subdiv2D_rotateEdge__0, p = c(edge = "int", rotate = "int"), r = c(TRUE, TRUE), s = "edge, rotate")
    ),
    symEdge = list(
      list(f = .ropecv_cv_Subdiv2D_Subdiv2D_symEdge__0, p = c(edge = "int"), r = c(TRUE), s = "edge")
    )
  )
)
