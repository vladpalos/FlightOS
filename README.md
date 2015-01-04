FlightOS
========

Description
-----------

A minimal asm kernel that calls a C function and then halts the system.
There are no other things attached besides the pure c function (e.g. no libs).
The main C function prints to the screen a welcome message.
The asm kernel file is compiled into a object file (elf32 format). The program calls the external C function.
The C function is also compiled into a object file.

The two files are then linked accordingly to the link.ld file.

Also there is no bootloader yet. If you want to run the kernel on a physical machine, you can use grub, lilo or other bootloader of your choice.

Prerequisites
-------------

To build you need to install nasm and gcc. 
For dpkg based distribution use:
```
sudo apt-get install -y nasm gcc 
```
If you wish to run it withing a virtual machine, you need to install qemu. 
For dpkg based distribution use:
```
sudo apt-get install -y qemu 
```

Build
-----

To build use the build.sh file:
```
./build.sh
```

Run
---

To run with quem use:
```
qemu-system-i386 -kernel bin/kernel
```

To run it on a physical machine (with grub), you need to create a grub confiugration that points to the correct location of the generated kernel (bin/kernel). 

E.g.: To run it on your local linux machine, copy the bin/kernel file into /boot/kernel-100. (Grub requires you to add a version into your kernel file). The config grub to point to the kernel (grub.cfg).
