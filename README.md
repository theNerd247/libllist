libllist 
========
libllist is a shared library for linked lists. It contains all those necessary
functions needed to create, manipulate, and delete linked lists and their
internals (nodes, data, etc..).  URLs

Github links:
=============

  * http: http://www.github.com/theNerd247/libllist
  * ssh:  git@github.com:theNerd247/libllist.git

Installing
==========
Nothing new here, use the self-help way of installing software (for Linux only
so far). 

__NOTICE:__ Arch Linux users! This software can be found on the AUR download it at:

https://aur.archlinux.org/packages/libllist/

Configuring
-----------
'Keep it simple stupid'. This project will try to remain sane for developers and
so will not (for now) revert to huge build tools such as automake/autoconf cmake
or the like. Please edit the Makefile to suit your compile time needs. If you do
edit the Makefile please commit the change and send a pull request to upstream
repo (git@github.com:theNerd247/libllist.git).

Patches
-------
Patches are found in the patches directory. Patches are optional, however they are
recomended. Make will __NOT__ automatically install the patches, for now they should
be manually installed. For those who are using the Arch Linux AUR PKGBUILD for
building patches are automatically applied. Please note that some patches fix
memory leaks and are not soley optimizations and not installing these could
result in bad things.

Patches are for the current library version. A new version release will have
applied all patches included in the previous version. For example: version 3 has
2 patches (a.patch, b.patch). These will be located in patches/ dir. Then
version 4 is released in which a.patch and b.patch will no longer exist because
they will have been applied.

__NOTE:__ If - for whatever reason - patches remain between versions please
think twice before applying the patches.

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
0.0.3
	* PKGBUILD removed 
	* patch lldestroy.patch removed and NOT applied 
	* llapply prototype changed (iteration loop is now stopable by function argument)
	* functions patched: llapply, lldestroy, llremove
	* removed function: nodedestroy (became obsolete)
	* code should be more memory safe
0.0.2
	* PKGBUILD file added
	* 3 new functions (llapply, llfilter, llmap)! See llist.h for their details
0.0.1
  * repository initialized (Makefile, this REAMDE file, and much much more!)
  * basic llist functions (llnew, lladd, llinsert, llget) created

Todo
====
	* fix lldestroy to use nodedestroy
