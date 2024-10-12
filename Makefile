UNAME := $(shell uname -s)
ifeq ($(UNAME), Linux)
    LIB_EXT := so
	CC := gcc
endif
ifeq ($(UNAME), Darwin)
    LIB_EXT := dylib
	CC := clang
endif

.PHONY: all
all: lib/v1/liblib.$(LIB_EXT) lib/v2/liblib.$(LIB_EXT)

.PHONY: clean
clean:
	rm -f lib/v{1,2}/liblib.$(LIB_EXT)

lib/v1/liblib.$(LIB_EXT): lib/v1/lib.c
	$(CC) -I include lib/v1/lib.c -o lib/v1/liblib.$(LIB_EXT) -shared

lib/v2/liblib.$(LIB_EXT): lib/v2/lib.c
	$(CC) -I include lib/v2/lib.c -o lib/v2/liblib.$(LIB_EXT) -shared
