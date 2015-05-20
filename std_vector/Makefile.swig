TOP        = ../..
SWIG      = swig
CXXSRCS    = 
TARGET     = example
INTERFACE  = example.i
LIBS       = -lm
SWIG      = swig

all::
	$(MAKE) -f $(TOP)/Makefile CXXSRCS='$(CXXSRCS)' SWIG='$(SWIG)' \
	SWIGOPT='$(SWIGOPT)' TARGET='$(TARGET)' INTERFACE='$(INTERFACE)' ruby_cpp

static::
	$(MAKE) -f $(TOP)/Makefile CXXSRCS='$(CXXSRCS)' SWIG='$(SWIG)' \
	SWIGOPT='$(SWIGOPT)' TARGET='myruby' INTERFACE='$(INTERFACE)' ruby_cpp_static

clean::
	$(MAKE) -f $(TOP)/Makefile ruby_clean

check: all
