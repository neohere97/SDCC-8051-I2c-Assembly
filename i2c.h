#ifndef _I2C_ASM_

unsigned char i2c_read_random(unsigned char block, unsigned char address);
void i2c_write_random(unsigned char block, unsigned char address, unsigned char value);

#endif