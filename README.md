# ROpenCV

R bindings for OpenCV 5. Image matrices are exposed as a zero-copy `cvMat` class, and the
function surface is generated from the OpenCV headers rather than hand-written.

## Installation

### Windows (recommended): prebuilt binary

The Windows binary is **statically linked**. OpenCV does not have to be installed, and no
compiler is needed — the resulting `ROpenCV.dll` imports nothing beyond `R.dll` and the
standard Windows system libraries.

Download `ROpenCV_0.0.1.zip` from the [Releases](../../releases) page, then install it:

```r
install.packages("path/to/ROpenCV_0.0.1.zip", repos = NULL, type = "win.binary")
```

Or let R fetch it directly, without saving the file first:

```r
install.packages(
  "https://github.com/Judy-ZQ/ROpenCV/releases/download/v0.0.1/ROpenCV_0.0.1.zip",
  repos = NULL,
  type  = "win.binary"
)
```

The binary was built with **R 4.6.0 (x86_64)**. It usually loads on other R 4.x releases,
but that is not guaranteed — if it does not, build from source.

### Video I/O needs one extra DLL

Everything except `videoio` is inside `ROpenCV.dll`. OpenCV's FFmpeg backend is a
**separate dynamic library** that is loaded at run time, and it must sit next to
`ROpenCV.dll`:

```
<R library>/ROpenCV/libs/x64/ROpenCV.dll
<R library>/ROpenCV/libs/x64/opencv_videoio_ffmpeg500_64.dll   <- this one
```

The prebuilt zip already contains it. If it is missing, nothing errors out — this is the
nasty part:

* `cv_getBuildInformation()` still reports `FFMPEG: YES (prebuilt binaries)`, because that
  is what the library was *built* with, not what it can *load*;
* `cvVideoCapture("x.avi")$isOpened()` silently returns `FALSE` for **every** file and
  **every** backend (FFmpeg, DirectShow, MJPEG alike);
* calling `$getBackendName()` on such an object raises
  `(-215:Assertion failed) api != 0`, because no backend was ever selected.

Verify with:

```r
cap <- cvVideoCapture("video/vtest.avi")
cap$isOpened()        # TRUE
cap$getBackendName()  # "FFMPEG"
```

Measured on this build: with the DLL present, `vtest.avi` opens through `CAP_ANY` and
decodes 576×768 BGR frames; without it, four different files and four different backends
all fail.

### From source

Building from source requires the OpenCV 5 SDK and a full C++ toolchain:

* **Rtools** matching your R version (`Rtools45` for R 4.5/4.6)
* **OpenCV 5.0.0** prebuilt Windows package, extracted anywhere
* the location of that SDK in the environment variable `ROPENCV_OPENCV_HOME`

```r
Sys.setenv(ROPENCV_OPENCV_HOME = "C:/opencv-5.0.0")
remotes::install_github("Judy-ZQ/ROpenCV")
```

`ROPENCV_OPENCV_HOME` must be the directory that contains
`include/opencv5/opencv2/opencv.hpp` and `lib/x64/`. Forward slashes, backslashes and a
trailing slash are all accepted. The build compiles 281 translation units and statically
links about fifty OpenCV modules, so expect **20–60 minutes** and a ~53 MB `ROpenCV.dll`.

`configure.win` resolves the SDK before anything is compiled and refuses to continue if the
path is wrong, so a missing SDK shows up as this rather than as a stray
`opencv2/opencv.hpp: No such file`:

```
=============== ROpenCV: 没有找到可用的 OpenCV 5 SDK ===============
  环境变量 ROPENCV_OPENCV_HOME 指向的目录不是可用的 OpenCV 5 SDK：C:/definitely/not/here
  ...
```

The legacy variable name `PROBE_OPENCV_HOME` is still honoured if `ROPENCV_OPENCV_HOME` is
unset. When neither is set, `configure.win` falls back to `../external/opencv-5.0.0`, which
only resolves inside the author's own working tree — a fresh clone has to set the variable.

## Platform support

| Platform          | Status                                                    |
|-------------------|-----------------------------------------------------------|
| Windows x86_64    | supported                                                 |
| Linux / macOS     | not yet — `src/` ships only `Makevars.win`, no `Makevars`  |

The library paths in `src/Makevars.win` are MinGW/GNU-ld specific (static `.a` archives,
`-Wl,--start-group`), so a port to Linux/macOS needs its own `configure`/`Makevars` rather
than a recompile.

## Quick start

```r
library(ROpenCV)

img  <- cv_imread("lena.jpg")
gray <- cv_cvtColor(img, COLOR_BGR2GRAY)
plot(gray)
```

## API notes

If you are porting code from an older ROpenCV, these four changes account for most of the
diff:

* **Output parameters are gone.** `cv_cvtColor(img, gray, COLOR_BGR2GRAY)` became
  `gray <- cv_cvtColor(img, COLOR_BGR2GRAY)`.
* **`stdVecOf*` is gone.** Lists, `data.frame`s and `rbind()` matrices took its place;
  `cv_split()` returns a `list`, `cv_merge()` takes one, `$detect()` returns a `data.frame`.
* **`[` is 1-based**, but the `cv_*` drawing functions still use OpenCV's **0-based**
  pixel coordinates.
* **`Scalar(...)` is a numeric vector.** Write `c(0, 0, 0)`.

Two of these fail silently rather than raising an error: `img[0, 0] = 255` writes nothing,
and assigning a short colour vector to a multi-pixel region produces a striped result
instead of a solid fill.

## Repository layout

The repository root *is* the package root, so `remotes::install_github("Judy-ZQ/ROpenCV")`
finds `DESCRIPTION` directly. The OpenCV SDK is deliberately **not** vendored here — it is
158 MB and only needed for source builds.

`src/Makevars.win` is generated, not tracked: `src/Makevars.win.in` is the template and
`configure.win` fills in the resolved SDK path at install time. It is excluded from both the
git history and the built tarball, so a stale absolute path can never be committed or
shipped.

## Releasing a new version

Bump `Version:` in `DESCRIPTION`, then build the Windows binary and attach it to a release:

```bash
R CMD INSTALL --build --no-multiarch --no-test-load ROpenCV
# produces ROpenCV_x.y.z.zip next to the package directory

gh release create vX.Y.Z ROpenCV_x.y.z.zip --title "ROpenCV X.Y.Z" --notes "..."
```

`--no-multiarch` is required: `Makevars.win` links against `lib/x64` only, so a 32-bit
build cannot succeed.

## License

GPL-2
