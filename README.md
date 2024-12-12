# c64-dev

A Commodore 64 development playground using ca65 assembler 

## Install cc65

```shell
sudo apt install gcc
sudo apt install make
git clone https://github.com/cc65/cc65.git
cd cc65
make
sudo make avail
```

## Install Vice 3.8

Head over to https://vice-emu.sourceforge.io/ and download the source distribution of [vice-3.8.tar.gz](https://sourceforge.net/projects/vice-emu/files/releases/vice-3.8.tar.gz/download). Next extract the tarball, change into the directory, install dependencies, build and install vice:

```bash
tar -xvzf vice-3.8.tar.gz 
cd vice-3.8/
sudo apt install build-essential flex byacc dos2unix xa65 libglib2.0-dev libsdl2-dev libsdl2-image-dev libcurl4-openssl-dev
./configure 
make
sudo make install
```

Congratulations! You just compiled Vice 3.8 from source and are now ready to run vice by typing:

```bash
x64sc
```

## Running the Program

Mount the `disk.d64` image into disk drive 8 of vice and load the program with `LOAD"hello",8` or `LOAD"hello",8,1` and run it with `RUN` or `SYS 2061` or use
the short cut:

```
x64sc -pal -autostart disk.d64  
```

You can also copy the content of the disk image onto a real disk or use a sd2iec device to test the program on real hardware.

## Disassemble

```
da65 file.prg --start-addr 0x801
```

## References

* https://cc65.github.io/doc/c64.html
* https://nurpax.github.io/posts/2019-08-18-dirty-tricks-6502-programmers-use.html
* https://skilldrick.github.io/easy6502/
