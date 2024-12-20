all: disk.d64

run: disk.d64
	x64sc -pal -autostart disk.d64

disk.d64: file.prg
	c1541 -format "disk,00" d64 disk.d64
	c1541 -attach disk.d64 -write file.prg hello,p

file.prg: file.o
	ld65 --lib c64.lib -o file.prg -C c64-asm.cfg file.o

file.o: source.asm
	ca65 source.asm -o file.o -t c64

clean:
	rm -f *.o
	rm -f *.prg
	rm -f *.d64