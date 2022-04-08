#include <at89c51ed2.h>
#include <mcs51reg.h>
#include <stdlib.h>
#include <stdio.h>
#include "spi.h"

void busywait_SPI();
void write_SPI(unsigned char byte);
unsigned char read_SPI();

void init_SPI()
{
    SPCON = 0x52;
}

void write_SPI(unsigned char byte)
{
    SPDAT = byte;
}

unsigned char read_SPI()
{
    return SPDAT;
}

void busywait_SPI()
{
    while(!(SPSTA & (0x80)));
}

int sample_ADC()
{
    P3_4 = 0;
    write_SPI(0x64);
    busywait_SPI();
    int SPI_output = 0;
    SPI_output = ((read_SPI()&(0x3))<<8);
    write_SPI(0xFF);
    busywait_SPI();
    SPI_output |= read_SPI();
    P3_4 = 1;
    return SPI_output;
}            

