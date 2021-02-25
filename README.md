# AltairDuino-Disks
Disk images and scripts for AltairDuino

Preparation
-----------

I'm using Ubuntu 20.04 as my workstation.  If you use a different OS,
you may need to do different things.

First, make a new directory for your work.  I use /opt/cpm, but it's
up to you.  Next, at least for Ubuntu, install the build packages 
(build-essential, make, etc).  The cpmtools package is broken in 64
bit Ubuntu 20.04.  Use the source in this repo, and make a default 
build.  Binaries will be in /usr/local.  Add the diskdefs.add text 
to the end of /usr/local/share/diskdefs to define the AD hard disk.
The format will be "AltairDuino-cpm22".  You'll need this for cpmls,
cpmcp, etc.

The scripts here are pretty simple, but save me a few keystrokes. ;)

The emulator and cpmtools source, as well as the diskdefs addition
are in the util directory.


Basic Process
-------------

 1. Create working dir for files
 2. Copy cpm2, cpm2.dsk, and source disk to working dir
 3. Edit cpm2 to attach new disk
 4. Run "altairz80 cpm2" from working to access disk
 5. Use W to copy files to linux
 6. Remove cpm2. cpm2.dsk, and source disk from working dir
 7. Copy ad-hdsk-sparse.dsk to new disk file (ex. HDSK0F.DSK)
 8. From working dir, run "../cp-to-hdsk.sh HDSKxx.DSK"
 9. Copy new HDSKxx.DSK to sd-card
10. Run "fromdos HDSKDIR.TXT" to set unix line endings
11. Edit HDSKDIR.TXT to add description
12. Run "todos HDSKDIR.TXT" to set proper line endings
13. Finished - Put the sd-card in Altair-Duino and enjoy

The sample directory contains an example of what you would have
after step 8.


Disks
-----

The "original" directory contains the disks from Chris Davis' repo as
of Feb 22 2021.

The "extra" directory contains new disks as I create them.


CP/M System
-----------

The cpm2 and cpm2.dsk files in cpm-system are from the AltairZ80 project,
and are used with the emulator to run a host OS for new disks.
