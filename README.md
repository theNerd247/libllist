libllist 
========
libllist is a shared library for linked lists. It contains all those necessary
functions needed to create, manipulate, and delete linked lists and their
internals (nodes, data, etc..). 

URLs
====
Github links:

  * http: http://www.github.com/theNerd247/libllist
  * ssh:  git@github.com:theNerd247/libllist.git

Installing
==========
Nothing new here, use the self-help way of installing software (for Linux only
so far). 

__NOTICE:__ Arch Linux users! A PKGBUILD file has been included. download it at:

https://github.com/theNerd247/libllist/raw/PKGBUILD

Then use the awesome makepkg tools to build and install! 

Configuring
-----------
'Keep it simple stupid'. This project will try to remain sane for developers and
so will not (for now) revert to huge build tools such as automake/autoconf cmake
or the like. Please edit the Makefile to suit your compile time needs. If you do
edit the Makefile please commit the change and send a pull request to upstream
repo (git@github.com:theNerd247/libllist.git)

Building
--------
Simply follow these steps (btw '$' delimits a command prompt as seen on a
shell): 

    $make
      ...
    $make check [optional and so far isn't implemented]
    $sudo make install
      ...

This will install libllist.so.x.y.z to /usr/lib/ by default (as well as create a
symbolic link to libllist.so.x.y.z called libllist.so. To change this please
edit the Makefile and then run: 

    $sudo make reinstall

Documentation 
=============
Documentation for all the functions, macros, structures, and typedefs are found
in the header files of the source code itself. This is a temporary fix and will
soon be replaced by a nice, neat man page.

Help And Bugs
=============
Programmers aren't perfect, bugs do occur - as well as user errors not to
mention. If you need extra help please use these options numbered in priority
level (1 being the highest) 

  1. Open an issue on the github project (see the top of this document for url)
  2. Send an email describing your issue - in as much detail as possible please
		 - to noah.harvey247@gmail.com
  3. If none of the help try and figure the solution on your own or post your
		 question on a developers forum (Stack Overflow is one suggestion).

Changelog
=========
0.0.2
	* PKGBUILD file added
	* 3 new functions (llapply, llfilter, llmap)! See llist.h for their details
0.0.1
  * repository initialized (Makefile, this REAMDE file, and much much more!)
  * basic llist functions (llnew, lladd, llinsert, llget) created
