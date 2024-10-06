.PHONY: all
all: lib/v1/liblib.so lib/v2/liblib.so

lib/v1/liblib.so:
	gcc -I include lib/v1/lib.c -o lib/v1/liblib.so -shared

lib/v2/liblib.so:
	gcc -I include lib/v2/lib.c -o lib/v2/liblib.so -shared
