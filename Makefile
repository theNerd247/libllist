##############################
#Makefile for libllist 
##############################

SHELL=/bin/sh

CC=gcc

LIBDIR=lib
LIBNAME=libllist
VERSION=0.0.1

IDIR=include
SONAME=$(LIBNAME).so
OUTNAME=$(LIBNAME).so.$(VERSION)
LFLAGS=-I$(IDIR) -lm -shared -fPIC -Wl,-soname,$(SONAME)
CFLAGS=-c -Wall -g #uncomment for debuging with gdb

SRCS=*.c 
SRCDIR=src
SRC:=$(wildcard $(SRCDIR)/$(SRCS))

OBJDIR=obj
OBJ:=$(patsubst $(SRCDIR)/%.c, $(OBJDIR)/%.o, $(SRC))

.PHONY: setup clean

all: setup $(OBJ) 
	$(CC) $(LFLAGS) $(OBJ) -o $(LIBDIR)/$(OUTNAME)

$(OBJDIR)/%.o: $(SRCDIR)/%.c 
	$(CC) $(LFLAGS) $(CFLAGS) $< -o $@

setup: 
	mkdir -p $(OBJDIR)
	mkdir -p $(LIBDIR)

clean: 
	rm -rf $(OBJDIR)
