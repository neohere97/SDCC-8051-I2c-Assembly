/***************************************************************************
 * ESD Lab 4
 * Tools: VSCode,make,batchisp,tera term
 * Author: Chinmay Shalawadi
 * Institution: University of Colorado Boulder
 * Mail id: chsh1552@colorado.edu
 * References: lecture slides
 ***************************************************************************/

#include <stdlib.h>
#include <stdio.h>
#include "getput.h"
#include "i2c.h"
#include "buffer.h"
#include "program.h"
#include "lcd.h"

void print_eeprom_menu();
void read_random_byte();
void write_random_byte();
void hexdump_eeprom();
void blockfill_eeprom();
void dump_eeprom_buffer(int from);

extern unsigned char i2c_eeprom_reset(void);
struct buffer_struct
{
    int buffer_num;
    unsigned char *buffer_start;
    unsigned char *buffer_end;
    int buff_size;
    int num_char;
};

struct buffer_struct eeprom_buffer;

// ------------------------------------------------eeprom-menu-------------------------------------------------
/***********************************************************************************
 * function :
 * parameters : none
 * return : none
 ***********************************************************************************/
void eeprom_menu()
{
    printf(" \n\r Hello, In EEPROM Demo mode");
    print_eeprom_menu();

    int inp;
wrong_choice_pca:
    printf("Please make a valid choice\n\r");
    inp = getchar();
    if (inp == 0x52)
        read_random_byte();
    else if (inp == 0x57)
        write_random_byte();
    else if (inp == 0x44)
        hexdump_eeprom();
    else if (inp == 0x42)
        blockfill_eeprom();
    else if (inp == 0x45)
        main_menu();
    else if (inp == 0x46)
    {
        i2c_eeprom_reset();
        printf("\n\rI2C Reset has been performed \n\r");
    }
    else
        goto wrong_choice_pca;

exit_choice:
    printf("\n\rPlease 'E' to go to EEPROM Menu \n\r");
    inp = getchar();
    if (inp == 0x45)
        eeprom_menu();
    else
        goto exit_choice;
}

// ------------------------------------------------read-random-byte------------------------------------------------
/***********************************************************************************
 * function :
 * parameters : none
 * return : none
 ***********************************************************************************/
void read_random_byte()
{
    unsigned char block = 0;
    unsigned char address = 0;
    int a;
get_valid_hex:
    printf("\n\r Please give a valid address to read from (0x000 - 0x7FF) \n\r");
    a = get_number_hex(3);

    if (a >= 0 && a <= 2047)
    {
        block = (a & 0xF00) >> 8;
        address = a & 0x0FF;
    }
    else
    {
        goto get_valid_hex;
    }

    printf("Block is is %x \n\r", block);
    printf("Address is 0x%X \n\r", address);
    printf("\n\r The value at the address is -> 0x%X \n\r", i2c_read_random(block, address));
}
// ------------------------------------------------write-random-byte------------------------------------------------
/***********************************************************************************
 * function :
 * parameters : none
 * return : none
 ***********************************************************************************/
void write_random_byte()
{
    unsigned char block = 0;
    unsigned char address = 0;
    int a;
get_valid_hex_address:
    printf("Please give a valid address to write to (0x000 - 0x7FF) \n\r");
    a = get_number_hex(3);

    if (a >= 0 && a <= 2047)
    {
        block = (a & 0xF00) >> 8;
        address = a & 0x0FF;
    }
    else
    {
        goto get_valid_hex_address;
    }

get_valid_hex_value:
    printf("\n\rPlease give a valid data to write (0x00 - 0xFF) \n\r");
    a = get_number_hex(2);

    if (a >= 0)
    {
        i2c_write_random(block, address, (unsigned char)a);
    }
    else
    {
        goto get_valid_hex_value;
    }

    printf("\n\rThe data has been successfully written at the address 0x%X \n\r", a);
}
// ------------------------------------------------hexdump-eeprom-------------------------------------------------
/***********************************************************************************
 * function :
 * parameters : none
 * return : none
 ***********************************************************************************/
void hexdump_eeprom()
{

    int a, b;
get_valid_from_address:
    printf("Please give a valid starting address (0x000 - 0x7FF) \n\r");
    a = get_number_hex(3);

    if (a < 0 || a > 2047)
    {
        goto get_valid_from_address;
    }

get_valid_to_address:
    printf("Please give a valid ending address (0x%X - 0x7FF) \n\r", a);
    b = get_number_hex(3);

    if (b < a || b > 2047)
    {
        goto get_valid_to_address;
    }

    eeprom_buffer.buffer_start = malloc((b - a) + 5);

    eeprom_buffer.buff_size = (b - a) + 5;
    eeprom_buffer.buffer_num = 0;
    eeprom_buffer.buffer_end = eeprom_buffer.buffer_start + (b - a) + 5;
    eeprom_buffer.num_char = 0;

    printf("Reading EEPROM...\n\r");
    unsigned char data;
    for (int l = a; l <= b; l++)
    {

        data = i2c_read_random((l & 0xF00) >> 8, (l & 0x0FF));
        *(eeprom_buffer.buffer_start + eeprom_buffer.num_char) = data;
        eeprom_buffer.num_char += 1;
    }

    dump_eeprom_buffer(a);
    free(eeprom_buffer.buffer_start);
}
// ------------------------------------------------blockfill-eeprom-------------------------------------------------
/***********************************************************************************
 * function :
 * parameters : none
 * return : none
 ***********************************************************************************/
void blockfill_eeprom()
{

    int a, b, c;
get_blockfill_from_address:
    printf("Please give a valid starting address (0x000 - 0x7FF) \n\r");
    a = get_number_hex(3);

    if (a < 0 || a > 2047)
    {
        goto get_blockfill_from_address;
    }

get_blockfill_to_address:
    printf("Please give a valid ending address (0x%X - 0x7FF) \n\r", a);
    b = get_number_hex(3);

    if (b < a || b > 2047)
    {
        goto get_blockfill_to_address;
    }

get_blockfill_value:
    printf("\n\rPlease give a valid data for blockfill (0x00 - 0xFF) \n\r");
    c = get_number_hex(2);

    printf("Writing EEPROM...\n\r");
    for (int l = a; l <= b; l++)
    {
        i2c_write_random((l & 0xF00) >> 8, (l & 0x0FF), (unsigned char)c);
    }

    printf("\n\rBlockfill finished...\n\r");
}
// ------------------------------------------------print-eeprom-menu------------------------------------------------
/***********************************************************************************
 * function :
 * parameters : none
 * return : none
 ***********************************************************************************/
void print_eeprom_menu()
{
    printf("\n\n\r^^^^^^^^^^^^^^^^^^^-EEPROM-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
    printf("'R' -> Read Random Byte\n\r");
    printf("'W' -> Write Random Byte\n\r");
    printf("'D' -> Hexdump + LCD Dump\n\r");
    printf("'B' -> Block Fill\n\r");
    printf("'F' -> Reset EEPROM \n\r");
    printf("\n\r'E' -> Goto Main Menu \n\r");
}
// ------------------------------------------------dump-eeprom-buffer------------------------------------------------
/***********************************************************************************
 * function :
 * parameters : none
 * return : none
 ***********************************************************************************/
void dump_eeprom_buffer(int from)
{

    printf("\n\r-------------------------HEXDUMP--------------------------------");
    printf("\n\r ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F \n\r");
    int j = 16;
    // Print 16 of them per line
    for (int i = 0; i < eeprom_buffer.num_char; i++)
    {
        if (j == 16)
        {
            printf("\n\r0x%03X: ", (from + i));
        }
        printf("%02X ", *(eeprom_buffer.buffer_start + i));
        j--;
        if (j == 0)
            j = 16;
    }
    lcd_putstring(eeprom_buffer.buffer_start,0);
    printf("\n\n\r");
}
// ------------------------------------------------end--------------------------------------------------
