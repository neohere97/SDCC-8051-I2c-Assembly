default:
	sdcc --std-c99 --model-large --code-size 0x7FFF --xram-loc 0x400 --xram-size 0x7FFF --out-fmt-ihx -c program.c
	sdcc --model-large -c _heap.c 
	sdas8051 -o -l asa.asm
	sdcc --model-large program.rel asa.rel _heap.rel 
	packihx program.ihx >program.hex
	batchisp -device at89c51rc2 -hardware RS232 -port COM4 -baudrate 115200 -operation erase f memory flash blankcheck loadbuffer ./program.hex program verify start reset 1
	plink.exe -serial COM4 -sercfg 115200,8,n,1,N 
