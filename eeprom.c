#include <stdlib.h>
#include <stdio.h>
#include "getput.h"
#include "i2c.h"

void eeprom_menu()
{
    for (int i = 0; i < 256; i++)
    {
        i2c_write_random(0, i, i);
    }

    unsigned char r = getchar();

    for (int k = 0; k < 256; k++)
    {
        unsigned char a = i2c_read_random(0, k);
        printf("loc ->%d val is -> %x \n\r", k, a);
    }

    while (1)
    {
    }
}