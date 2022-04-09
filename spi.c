/***************************************************************************
 * ESD Lab 4
 * Tools: VSCode,make,batchisp,tera term
 * Author: Chinmay Shalawadi
 * Institution: University of Colorado Boulder
 * Mail id: chsh1552@colorado.edu
 * References: Guruprashanth Krishnakumar's Code
 ***************************************************************************/
#include <at89c51ed2.h>
#include <mcs51reg.h>
#include <stdlib.h>
#include <stdio.h>
#include "spi.h"

void busywait_SPI();
void write_SPI(unsigned char byte);
unsigned char read_SPI();

// ------------------------------------------------init-SPI-----------------------------------------------------------
/***********************************************************************************
 * function : Initializes SPI by writing to SPCON
 * parameters : none
 * return : none
 ***********************************************************************************/
void init_SPI()
{
    SPCON = 0x52;
}
// ------------------------------------------------write-SPI-----------------------------------------------------------
/***********************************************************************************
 * function : Writes Data to SPI buffer
 * parameters : byte to be written  
 * return : none
 ***********************************************************************************/
void write_SPI(unsigned char byte)
{
    SPDAT = byte;
}
// ------------------------------------------------read-SPI-----------------------------------------------------------
/***********************************************************************************
 * function : reaturns the data read from the SPI bus
 * parameters : none
 * return : data value read from SPI
 ***********************************************************************************/
unsigned char read_SPI()
{
    return SPDAT;
}
// ------------------------------------------------busywait-SPI-----------------------------------------------------------
/***********************************************************************************
 * function : wait's for SPI busy wait flag to be set again
 * parameters : none
 * return : none
 ***********************************************************************************/
void busywait_SPI()
{
    while(!(SPSTA & (0x80)));
}
// ------------------------------------------------sample-ADC-----------------------------------------------------------
/***********************************************************************************
 * function : takes x,y grid input and sends cursor to that position
 * parameters : none
 * return : sampled ADC value
 ***********************************************************************************/
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
// ------------------------------------------------End------------------------------------------------------------
