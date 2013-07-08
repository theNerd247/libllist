##############################
#Makefile for libllist 
##############################

SHELL=/bin/sh

CC=gcc

LIBNAME=libllist
LIBDIR=lib

INSTALL=/usr/lib
VERSION=0.0.1

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

.PHONY: setup clean install

all: setup $(OBJ) 
	$(CC) $(LFLAGS) $(OBJ) -o $(LIBDIR)/$(OUTNAME)

reinstall: remove install

install: all
	install $(LIBDIR)/$(OUTNAME) -t $(INSTALL)
	ldconfig -n $(INSTALL) 

remove: 
	rm -Ii $(INSTALL)/$(OUTNAME)

$(OBJDIR)/%.o: $(SRCDIR)/%.c 
	$(CC) $(LFLAGS) $(CFLAGS) $< -o $@

setup: 
	mkdir -p $(OBJDIR)
	mkdir -p $(LIBDIR)

clean: 
	rm -rf $(OBJDIR)
