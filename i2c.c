
/***************************************************************************
 * ESD Lab 4
 * Tools: VSCode,make,batchisp,tera term
 * Author: Chinmay Shalawadi
 * Institution: University of Colorado Boulder
 * Mail id: chsh1552@colorado.edu
 * References: lecture slides
 ***************************************************************************/

#include "i2c.h"
#include <at89c51ed2.h>
#include <mcs51reg.h>

extern void i2c_write_init(unsigned char page_no);
extern void i2c_addr(unsigned char addr);
extern void i2c_write_val(unsigned char write_value);
extern void i2c_read_init(unsigned char page_no);
extern unsigned char i2c_read_val(void);
void i2c_activity(unsigned char a);
// ------------------------------------------------i2c-write-random------------------------------------------------
/***********************************************************************************
 * function : -
 * parameters : memory block, word address and value to be written
 * return : none
 ***********************************************************************************/
void i2c_write_random(unsigned char block, unsigned char address, unsigned char value)
{
    i2c_activity(2);
    i2c_write_init(block);
    i2c_addr(address);
    i2c_write_val(value);
    //6ms delay after write, so that eeprom finishes write cycle
    for (int k = 0; k < 90; k++)
    {
        for (int l = 0; l < 10; l++)
        {
        }
    }
    i2c_activity(1);
}
// ------------------------------------------------i2c-read-random------------------------------------------------
/***********************************************************************************
 * function : -
 * parameters : memory block and word address
 * return : none
 ***********************************************************************************/
unsigned char i2c_read_random(unsigned char block, unsigned char address)
{
    i2c_activity(2);
    i2c_write_init(block);
    i2c_addr(address);
    i2c_read_init(block);
    unsigned char a = i2c_read_val();
    i2c_activity(1);
    return a;
}
// ------------------------------------------------i2c-activity-------------------------------------------------
/***********************************************************************************
 * function : -
 * parameters : memory block and word address
 * return : none
 ***********************************************************************************/
void i2c_activity(unsigned char a){
    P1 = a;

    P3_2 = 0;
    P3_2 = 1;
    P3_2 = 0;
}