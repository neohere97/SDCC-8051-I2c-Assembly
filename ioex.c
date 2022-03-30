
#include <stdlib.h>
#include <stdio.h>
#include <at89c51ed2.h>
#include <mcs51reg.h>
#include "program.h"
#include "getput.h"
#include "i2c.h"
#include "ioex.h"
#include "lcd.h"

#define BYTE_TO_BINARY_PATTERN "%c%c%c%c%c%c%c%c"
#define BYTE_TO_BINARY(byte)  \
  (byte & 0x80 ? '1' : '0'), \
  (byte & 0x40 ? '1' : '0'), \
  (byte & 0x20 ? '1' : '0'), \
  (byte & 0x10 ? '1' : '0'), \
  (byte & 0x08 ? '1' : '0'), \
  (byte & 0x04 ? '1' : '0'), \
  (byte & 0x02 ? '1' : '0'), \
  (byte & 0x01 ? '1' : '0') 


void write_to_pin();
void write_to_port();
void read_pin();
void update_lcd();
unsigned char read_port();
void print_ioex_menu();
void read_pin_interrupt();
extern void i2c_ioex_read_init();
extern void i2c_ioex_write_init();

// ------------------------------------------------ui-ioexpander-------------------------------------------------
/***********************************************************************************
 * function : Handles the UI of the IO Expander functions
 * parameters : none
 * return : none
 ***********************************************************************************/
void ui_ioexpander()
{        
    printf(" \n\r^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\r");
    printf(" \n\r Hello, In IO Expander Demo mode.");
    printf(" \n\r PIN States are also shown on the LCD");    
    update_lcd();
    print_ioex_menu();

    int inp;
wrong_choice_pca:
    printf("Please make a valid choice\n\r");
    inp = getchar();
    if (inp == 0x50)
        write_to_port();
    else if (inp == 0x57)
        write_to_pin();
    else if (inp == 0x52)
        read_pin();
    else if (inp == 0x54)
        printf("Current Port Value -> %02X \n\r",read_port());
    else if (inp == 0x45)
        main_menu();
    else if (inp == 0x49)
        read_pin_interrupt();

    else
        goto wrong_choice_pca;

exit_choice:
    printf("\n\rPlease 'E' to go to IO/Expander Menu \n\r");
    inp = getchar();
    if (inp == 0x45)
        ui_ioexpander();
    else
        goto exit_choice;
}
// ------------------------------------------------print-ioex-menu------------------------------------------------
/***********************************************************************************
 * function : prints the IO Expander menu
 * parameters : none
 * return : none
 ***********************************************************************************/
void print_ioex_menu()
{
    printf("\n\n\r^^^^^^^^^^^^^^^^^^-IOEX-MENU-^^^^^^^^^^^^^^^^^ \n\n\r");
    printf("'W' -> Write Pin\n\r");
    printf("'R' -> Read Pin\n\r");
    printf("'P' -> Write to port\n\r");
    printf("'T' -> Read from port\n\r");
    printf("'I' -> Read Pin Interrupt\n\r");
    printf("\n\r'E' -> Goto Main Menu \n\r");
}
// ------------------------------------------------write-to-port------------------------------------------------
/***********************************************************************************
 * function : writes a byte to the port
 * parameters : none
 * return : none
 ***********************************************************************************/
void write_to_port()
{

    int a;
get_valid_dat:
    printf("\n\r Please give a valid data to write (0x00 - 0xFF) \n\r");
    a = get_number_hex(2);

    if (a >= 0 && a <= 255)
    {
        i2c_ioex_write_init();
        i2c_write_val(a);
        printf("\n\rSUCCESS! Data Written -> %02X \n\r", a);
    }
    else
    {
        goto get_valid_dat;
    }
     update_lcd();    
}
// ------------------------------------------------write-to-pin-----------------------------------------------
/***********************************************************************************
 * function : Writes to a specific pin without affecting others
 * parameters : none
 * return : none
 ***********************************************************************************/
void write_to_pin()
{

    unsigned char pin, val, pinmask;
    unsigned char port_val;
get_valid_pin:
    printf("\n\r Please give a valid pin number to write to (0 - 7) \n\r");
    pin = get_number_hex(1);

    if (pin > 7)
        goto get_valid_pin;

    pinmask = 1 << pin;

get_valid_pinval:
    printf("\n\r Please give a valid state for the pin (0 or 1) \n\r");
    val = get_number_hex(1);

    if (val > 1)
        goto get_valid_pinval;

    port_val = read_port();
   
    if (val)
    {
        i2c_ioex_write_init();
        i2c_write_val(port_val | pinmask);
    }
    else
    {
        i2c_ioex_write_init();
        i2c_write_val(port_val & (~pinmask));
    }
    update_lcd();    
    printf("\n\rSUCCESS!! \n\r");
}
// ------------------------------------------------read-port-------------------------------------------------
/***********************************************************************************
 * function : Reads a port and returns its state
 * parameters : none
 * return : none
 ***********************************************************************************/
unsigned char read_port()
{
    i2c_ioex_read_init();   
    
    unsigned char da[8],val;
    
    val = i2c_read_val();
    
    sprintf(da,"State "BYTE_TO_BINARY_PATTERN, BYTE_TO_BINARY(val));
    lcd_putstring(da,64);

    return val;
}
// ------------------------------------------------read-pin-------------------------------------------------
/***********************************************************************************
 * function : Reads a pin and returns it's state
 * parameters : none
 * return : none
 ***********************************************************************************/
void read_pin()
{
    unsigned char pin, pinmask, portval, pinval;
get_valid_pin:
    printf("\n\r Please give a valid pin number to read from (0 - 7) \n\r");
    pin = get_number_hex(1);

    if (pin > 7)
        goto get_valid_pin;

    pinmask = 1 << pin;
    portval = read_port();
    pinval = portval & pinmask;
    printf("--------------------------------\n\r");
    if (pinval)
        printf("Pin %d is HIGH\n\r", pin);
    else
        printf("Pin %d is LOW\n\r", pin);
    printf("--------------------------------\n\r");
    update_lcd();
}
// ------------------------------------------------read-pin-interrupt-------------------------------------------------
/***********************************************************************************
 * function : Sets up a pin to read rising edge or falling edge interrupt
 * parameters : none
 * return : none
 ***********************************************************************************/
void read_pin_interrupt(){
    
    unsigned char pin, val, pinmask;  
get_valid_pin:
    printf("\n\r Please give a valid pin number to set up the interrupt (0 - 7) \n\r");
    pin = get_number_hex(1);

    if (pin > 7)
        goto get_valid_pin;

    pinmask = 1 << pin;

get_valid_pinval:
    printf("\n\r Select Rising Edge or Falling Edge\n\r");
    printf("\n\rFalling Edge -> 0 | Rising Edge -> 1 \n\r");

    val = get_number_hex(1);

    if (val > 1)
        goto get_valid_pinval;

       
    if (val)
    {
        i2c_ioex_write_init();
        i2c_write_val(~pinmask);        
    }
    else
    {
        i2c_ioex_write_init();
        i2c_write_val(pinmask);        
    }    

    update_lcd();
    
     if (val)
    {
        i2c_ioex_write_init();
        i2c_write_val(~pinmask);        
    }
    else
    {
        i2c_ioex_write_init();
        i2c_write_val(pinmask);        
    } 
    EX1 = 1;
    printf("\n\rInterrupt has been enabled \n\r");
    
}
// ------------------------------------------------update-lcd------------------------------------------------
/***********************************************************************************
 * function : updates LCD with latest pin states
 * parameters : none
 * return : none
 ***********************************************************************************/
void update_lcd(){
    unsigned char da[8];
    sprintf(da,"State "BYTE_TO_BINARY_PATTERN, BYTE_TO_BINARY(read_port()));
    lcd_putstring(da,64);
}
// ------------------------------------------------End-------------------------------------------------
