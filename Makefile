##############################
#Makefile for libllist 
##############################

SHELL=/bin/sh

CC=gcc

LIBNAME=libllist
LIBDIR=lib
VERSION=0.0.2

PKGNAME=$(LIBNAME)-$(VERSION)
PKGLIST=Makefile lib/ README.md gpl-3.0.txt

DESTDIR=
PREFIX=$(DESTDIR)/usr
INSTALLDIR=$(PREFIX)/lib
HEADERINSTALL=$(PREFIX)/include

IDIR=lib
SONAME=$(LIBNAME).so
OUTNAME=$(LIBNAME).so.$(VERSION)
LFLAGS=-I$(IDIR) -lm -shared -fPIC -Wl,-soname,$(SONAME)
CFLAGS=-c -Wall -g #uncomment for debuging with gdb

SRCS=*.c 
SRCDIR=lib
SRC:=$(wildcard $(SRCDIR)/$(SRCS))

OBJDIR=obj
OBJ:=$(patsubst $(SRCDIR)/%.c, $(OBJDIR)/%.o, $(SRC))

.PHONY: setup clean install pkg

all: setup $(OBJ) 
	$(CC) $(LFLAGS) $(OBJ) -o $(LIBDIR)/$(OUTNAME)

reinstall: uninstall install clean 

install: all clean
	install $(IDIR)/*.h -t $(HEADERINSTALL)
	install $(LIBDIR)/$(OUTNAME) -t $(INSTALLDIR)
	ldconfig -n $(INSTALLDIR) 

uninstall: 
	rm -Ii $(INSTALLDIR)/$(SONAME).*

$(OBJDIR)/%.o: $(SRCDIR)/%.c 
	$(CC) $(LFLAGS) $(CFLAGS) $< -o $@

setup: 
	mkdir -p $(OBJDIR)
	mkdir -p $(LIBDIR)

clean: 
	rm -rf $(OBJDIR)

pkg:
	mkdir -p $(PKGNAME)
	cp -r $(PKGLIST) $(PKGNAME)
	tar -uvhf $(PKGNAME).tar $(PKGNAME)
	gzip $(PKGNAME).tar
	md5sum $(PKGNAME).tar.gz > md5.txt
	rm -r $(PKGNAME)
