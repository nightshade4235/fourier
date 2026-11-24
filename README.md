# Fourier: A not-so-minimalist PATHTRACER in C using OpenGL
### Author: Nightshade4235 / WyrdOfHolm
### Language: The C programming Language
### Graphics Library: OpenGL


## Introduction | An informal note:

So, I got a bit bored and I decided to make a pathtracer.

The problem was that I didnt really know how to make a pathtracer, raytracer, raycaster or anything *light* related...

So I decided the best, most sane thingy to do was, to make one on my own...

yay

So here it is, a pathtracer made using OpenGL in C.

Its my first time using OpenGL, so the UI is "decent"... *cough cough*

This pathtracer works non-polygon graphics, which in other words is that all calculations are based on raw triangles, vertices, and `.obj` files; so for all the people with a bit more understanding of this: **BVHs and a lot of pain**.

## Features:

### Fourier works only on Unix

* **Polygon Mesh Support:** Parses standard `.obj` files to load *complex* 3D geometry instead of being limited to *mathematical primitives.*

* **Material System:** Implements a *versatile BSDF shading model* supporting *diffuse*, *reflective (metal)*, *emissive (light)*, *volumetric (fluids)* and *refractive dielectric caustic (glass)* surfaces.

* **Spatial Optimization (BVH):** Utilizes a *Bounding Volume Hierarchy (BVH)* acceleration structure to make ray-triangle intersection tests *fast* and *scalable.*

* **OpenGL Framebuffer:** Renders *real-time output* by mapping raw pixel buffers directly to an *OpenGL display window.*

* **Pure C Implementation:** Written entirely from scratch in *C* with manual memory management and *zero heavy external engines.*

* **Fast vs Fat Rendering Processes:** Users are given the choice to choose between a *fast rendering method* in which rendering happens *progressively* or a *fat rendering method* where rendering happens *before the framebuffer ever updates.*

> **⚠️ Performance Warning:** Running path tracing with progressive accumulation and complex mesh geometry requires a capable GPU and CPU. *Max settings may melt lower-end hardware (like an i3 with a GT 710) — proceed with caution!*

## Prerequisites:

* A C99-compatible compiler (`gcc` or `clang`) and `make`
  (on Arch: `base-devel`; on Debian/Ubuntu: `build-essential`)

* **GLFW3** — windowing and input handling. Install via your package manager:
  - Arch: `sudo pacman -S glfw-x11`
  - Debian/Ubuntu: `sudo apt install libglfw3-dev`

* **Mesa / OpenGL drivers** — `mesa` package and `libGL` development headers,
  if not already present on your system

* **GLAD** — OpenGL function loader. Bundled directly in `Libraries/`,
  no separate install needed.

* **X11 or Wayland windowing system** (standard on any desktop Linux install)

> Note: Fourier currently targets Linux (including WSL2 with WSLg on Windows).
> If you're on WSL2 with an older/unsupported GPU, you may need to force
> software rendering: `export LIBGL_ALWAYS_SOFTWARE=1`

## Preface:

**Fourier** is built from the ground up to explore *low-level computer graphics*, *custom memory management*, and *spatial structures* in *pure C.*

## Build & Run (Linux):

Clone using:

```
git clone https://github.com/nightshade4235/fourier
```

or download directly..

Build (for Unix) using:

```bash
cd fourier

make

./fourier
```


## Controls / Usage:

* W, A, S, D:- forward, left, backward, right respectively

* Use Mouse to rotate on the axes

* E:- lock and unlock the camera

* R:- bring popup meu

* C:- change camera modes

* X:- exit prompt

* Q:- screenshot of the scene

* V:- idle mode (rotates around the y-axis)

* shift + mouse scroll:- zoom in & zoom out

* F:- lock context

currently a work in progress


# Cloning the repository

please clone using the following command as to not copy large unnecessary file history

``` git clone --depth 1 https://github.com/nightshade4235/fourier ```
