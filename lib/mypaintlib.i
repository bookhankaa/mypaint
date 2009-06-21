%module mypaintlib
%{
#include "mypaintlib.hpp"
%}

typedef struct { int x, y, w, h; } Rect;

%include "../brushlib/surface.hpp"
%include "../brushlib/brush.hpp"
%include "../brushlib/mapping.hpp"
%include "tiledsurface.hpp"
%include "pixops.hpp"
%include "colorring.hpp"
%include "colorchanger.hpp"

//from "gdkpixbuf2numpy.hpp"
PyObject * gdkpixbuf_numeric2numpy(PyObject * gdk_pixbuf_pixels_array);

%init %{
import_array();
%}

