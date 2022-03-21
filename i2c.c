
/***************************************************************************
 * ESD Lab 4
 * Tools: VSCode,make,batchisp,tera term
 * Author: Chinmay Shalawadi
 * Institution: University of Colorado Boulder
 * Mail id: chsh1552@colorado.edu
 * References: lecture slides
 ***************************************************************************/

#include "i2c.h"

extern void i2c_write_init(unsigned char page_no);
extern void i2c_addr(unsigned char addr);
extern void i2c_write_val(unsigned char write_value);
extern void i2c_read_init(unsigned char page_no);
extern unsigned char i2c_read_val(void);

// ------------------------------------------------i2c-write-random------------------------------------------------
/***********************************************************************************
 * function : -
 * parameters : memory block, word address and value to be written
 * return : none
 ***********************************************************************************/
void i2c_write_random(unsigned char block, unsigned char address, unsigned char value)
{
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
}
// ------------------------------------------------i2c-read-random------------------------------------------------
/***********************************************************************************
 * function : -
 * parameters : memory block and word address
 * return : none
 ***********************************************************************************/
unsigned char i2c_read_random(unsigned char block, unsigned char address)
{
    i2c_write_init(block);
    i2c_addr(address);
    i2c_read_init(block);
    unsigned char a = i2c_read_val();
    return a;
}