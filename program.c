
/***************************************************************************
 * ESD Lab 4
 * Tools: VSCode,make,batchisp,tera term
 * Author: Chinmay Shalawadi
 * Institution: University of Colorado Boulder
 * Mail id: chsh1552@colorado.edu
 * References: lecture slides
 ***************************************************************************/

#include <at89c51ed2.h>
#include <mcs51reg.h>
#include <stdlib.h>
#include <stdio.h>
#include "pca.h"
#include "getput.h"
#include "buffer.h"
#include "program.h"
#include "asm_c.h"
#include "eeprom.h"
#include "lcd.h"
#include "ioex.h"

// Virtual debug port location
#define DEBUGPORT(x) dataout(x);

// SFR Declaration to initialize xram
__sfr __at(0x8e) _AUXR;
__xdata unsigned char __at(0x8000) DEBUG_LOC;

// function declarations

void dataout(unsigned char data);

void i2c_testasm();

unsigned char global_var_test = 2;

extern volatile int watchdog_flag;

unsigned int global_clock = 0;
extern int cursorpos;
// ------------------------------------------------Main--------------------------------------------------------------
/***********************************************************************************
 * function : Main function where user interface is called, program never comes back to main
 * parameters : none
 * return : none
 ***********************************************************************************/
void main(void)
{
    printf("\n\n\r^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
    printf("HELLO! Started in X2 Mode \n\r");
    DEBUGPORT(0x01);
    P1_1 = 0;
    init_lcd();
    lcd_putstring("Hello", 0);
    main_menu();
}

void main_menu()
{
    DEBUGPORT(0x02);
    printf("\n\n\r^^^^^^^^^^^^^^^^^^^-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
    printf("'H' -> Heap Demo Mode \n\r");
    printf("'P' -> PCA Demo Mode \n\r");
    printf("'A' -> Assembly C Mix \n\r");
    printf("'E' -> EEPROM Mode \n\r");
    printf("'L' -> LCD Demo Mode \n\r");
    printf("'I' -> I/O Expander Demo Mode \n\r");

    int inp;
wrong_choice:
    printf("Please make a valid choice \n\r");
    inp = getchar();
    if (inp == 0x48)
    {
        lcd_putstring("Heap DEMO", 0);
        user_interface_heap();
    }
    else if (inp == 0x50)
    {
        lcd_putstring("PCA DEMO", 0);
        user_interface_PCA();
    }
    else if (inp == 0x41)
        asm_clang();
    else if (inp == 0x45)
    {
        lcd_putstring("EEPROM DEMO", 0);
        eeprom_menu();
    }
    else if (inp == 0x4C)
        user_interface_lcd();
    else if (inp == 0x49){
        lcd_putstring("Pins  76543210", 0);
        ui_ioexpander();       
    }
    else
        goto wrong_choice;
}

// ------------------------------------------------pca-interrupt-------------------------------------------------
/***********************************************************************************
 * function : PCA Interupt handler
 * parameters : none
 * return : none
 ***********************************************************************************/
void pca_interrupt() __interrupt(6) __using(1)
{
    if (CCF0)
    {
        printf("Captured Value CCPL -> %d CCPH -> %d \n\r", CCAP0L, CCAP0H);

        CCF0 = 0;
    }
    if (CCF1)
    {
        CCF1 = 0;
        CH = 0;
        CL = 0;
    }
    if (CCF2)
    {
        CCF2 = 0;
        CH = 0;
        CL = 0;
        WDTRST = 0x01E;
        WDTRST = 0x0E1;
    }
    if (CCF3)
    {
        CCF3 = 0;
        CH = 0;
        CL = 0;
        global_clock += 1;
        update_lcd_clock();
        // printf("Timer Interrupt\n\r");
    }
}
// ------------------------------------------------pca-interrupt-------------------------------------------------
/***********************************************************************************
 * function : PCA Interupt handler
 * parameters : none
 * return : none
 ***********************************************************************************/
void ioex_interrupt() __interrupt(2) __using(1)
{
   printf("Interrupt from IO Expander \n\r");
}
// ------------------------------------------------idle-interrupt--------------------------------------------------
/***********************************************************************************
 * function : INT0 interrupt handler
 * parameters : none
 * return : none
 ***********************************************************************************/
void idle_interrupt() __interrupt(0) __using(1)
{
    EX0 = 0;
    PCON = 0x80;
    CR = 0;
    CKRL = 255;
    CCAPM0 = 0;
    CCAPM1 = 0;
    CCAPM2 = 0;
    CCAPM3 = 0;
    CCAPM4 = 0;
    printf("Going to main menu.. \n\r");
    main_menu();
}

// ------------------------------------------------dataout--------------------------------------------------
/***********************************************************************************
 * function : dumps debug data at debug location
 * parameters : none
 * return : none
 ***********************************************************************************/
void dataout(unsigned char data)
{
    DEBUG_LOC = data;
}

// ------------------------------------------------sdcc-external-startup------------------------------------------------
/***********************************************************************************
 * function : This function executes by default when the program starts
 * parameters : none
 * return : none
 ***********************************************************************************/
_sdcc_external_startup()
{
    CKCON0 |= 0x21;

    _AUXR = 0xC;
    // Init UART Hardware
    SCON = 0x42;
    // Fast UART
    PCON = 0x80;
    // Set baud rate to 57600
    TH1 = 255;
    TL1 = 255;
    // 16-bit timer
    TMOD = 0x20;
    // Enable receive
    REN = 1;
    // Enable timer
    TR1 = 1;
    // Enable All Interrupts
    EA = 1;
    // Enable PCA Interrupt
    EC = 1;
    return 0;
}
// ------------------------------------------------END--------------------------------------------------
