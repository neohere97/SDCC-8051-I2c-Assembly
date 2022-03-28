/***************************************************************************
 * ESD Lab 4
 * Tools: VSCode,make,batchisp,tera term
 * Author: Chinmay Shalawadi
 * Institution: University of Colorado Boulder
 * Mail id: chsh1552@colorado.edu
 * References: lecture slides
 ***************************************************************************/

#ifndef _I2C_ASM_

//function declarations
unsigned char i2c_read_random(unsigned char block, unsigned char address);
void i2c_write_random(unsigned char block, unsigned char address, unsigned char value);

#endif