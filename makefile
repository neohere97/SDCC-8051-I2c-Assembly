default:
	sdcc --std-c99 --model-large --code-size 0x7FFF --xram-loc 0x400 --xram-size 0x7FFF --out-fmt-ihx -c program.c
	sdcc --model-large -c _heap.c 
	sdcc --model-large -c i2c.c
	sdcc --model-large -c buffer.c
	sdcc --model-large -c pca.c
	sdcc --model-large -c getput.c
	sdcc --model-large -c eeprom.c
	sdcc --model-large -c asm_c.c
	sdcc --model-large -c lcd.c
	sdcc --model-large -c ioex.c
	sdcc --model-large -c spi.c
	sdas8051 -o -l asa.asm
	sdas8051 -o -l i2c_routines.asm
	sdcc --model-large program.rel i2c_routines.rel spi.rel i2c.rel asa.rel getput.rel buffer.rel ioex.rel pca.rel eeprom.rel lcd.rel asm_c.rel _heap.rel 
	packihx program.ihx >program.hex
	batchisp -device at89c51rc2 -hardware RS232 -port COM4 -baudrate 115200 -operation erase f memory flash blankcheck loadbuffer ./program.hex program verify start reset 1
	del /S *.lst *.rst *.sym *.map *.mem *.rel
	del _heap.asm asm_c.asm buffer.asm eeprom.asm getput.asm spi.asm i2c.asm pca.asm program.asm program.hex program.ihx program.lk lcd.asm ioex.asm
	plink.exe -serial COM4 -sercfg 115200,8,n,1,N 
