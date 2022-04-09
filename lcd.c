
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
#include "lcd.h"
#include "getput.h"
#include "pca.h"
#include "program.h"

#define LCD_RS (P1_3)
#define LCD_RW (P1_5)
#define LCD_E (P2_7)

void lcd_goto_addr(unsigned char addr);
void lcd_goto_addr_cg(unsigned char addr);
void lcd_goto_xy(unsigned char x, unsigned char y);
void print_custom_character();
void add_new_custom_char();
void lcd_dumpddram();
void draw_yinyang();
unsigned char lcd_getbyte();
unsigned char lcd_compute_xy(unsigned char x, unsigned char y);
void print_lcd_menu() __critical;
void print_string(char str[]) __critical;
void toggle_clock(int delay);
extern unsigned int global_clock;
int cursorpos;
char clkstr[6];

// ------------------------------------------------user-interface-lcd------------------------------------------------------------
/***********************************************************************************
 * function : shows the LCD menu and waits from user input
 * parameters : none
 * return : none
 ***********************************************************************************/
void user_interface_lcd()
{

    lcd_clear();
    lcd_goto_xy(3, 9);
    lcd_putstring("00:00.0", lcd_compute_xy(3, 9));
    lcd_goto_addr(0);
    init_clock();
ui_lcd_menu:
    print_lcd_menu();
    int inp;

    print_string("Please make a valid choice \n\r");
ui_lcd:
    inp = getchar();
    if (inp == 0x53)
        CR = 0;

    else if (inp == 0x52)
        CR = 1;

    else if (inp == 0x5A)
    {
        int temp = cursorpos;
        lcd_putstring("00:00.0", lcd_compute_xy(3, 9));
        global_clock = 0;
        lcd_goto_addr(temp);
    }

    else if (inp == 0x43)
    {
        lcd_clear();
        lcd_goto_addr(lcd_compute_xy(3, 9));
        lcd_putstring("00:00.0", lcd_compute_xy(3, 9));
        lcd_goto_addr(0);
        goto ui_lcd_menu;
    }
    else if (inp == 0x45)
    {
        CR = 0;
        main_menu();
    }
    else if (inp == 0x55)
    {
        CR = 0;
        draw_yinyang();
    }
    else if (inp == 0x49)
    {
        add_new_custom_char();
        goto ui_lcd_menu;
    }
    else if (inp == 0x50)
    {
        print_custom_character();
        goto ui_lcd_menu;
    }
    else if (inp == 0x44)
    {
        lcd_goto_addr(0);
        lcd_dumpddram();
    }
    // Goto address,TODO can be converted to a different function for readability
    else if (inp == 0x47)
    {
        unsigned char addr;
    get_valid_addr:
        print_string("Get valid 16*4 lcd cursor address \n\r");
        addr = get_number_hex(2);
        if ((addr >= 0 && addr <= 0x1F) || (addr >= 0x40 && addr <= 0x5F))
            lcd_goto_addr(addr);
        else
            goto get_valid_addr;

        print_string("\n\rCursor moved successfully %02X \n\r");
        goto ui_lcd_menu;
    }
    // Goto X,Y,TODO can be converted to a different function for readability
    else if (inp == 0x58)
    {
        unsigned char x, y;
    get_valid_x:
        print_string("Give valid X position (0-3) \n\r");
        x = get_number_hex(1);
        if (x > 3)
            goto get_valid_x;

    get_valid_y:
        print_string("Give valid Y position (0-F) \n\r");
        y = get_number_hex(1);

        if (y > 0xF)
            goto get_valid_y;

        lcd_goto_addr(lcd_compute_xy(x, y));
        print_string("\n\rCursor moved successfully \n\r");
        goto ui_lcd_menu;
    }
    // Putstring ,TODO can be converted to a different function for readability
    else if (inp == 0x54)
    {
        int i = 0, temp;
        char arr[65], ch;

        print_string("\n\rInput a string and press enter, max 64 characters \n\r");
    get_more_ch:
        if (i < 64)
        {
            ch = getchar();

            if (ch == 0x8 && i > 0)
                --i;

            else if (ch == 0xD)
            {
                arr[i] = 0;
                lcd_goto_addr(cursorpos);
                lcd_putstring(arr, cursorpos);
                temp = cursorpos;
                lcd_putstring("00:00.0", lcd_compute_xy(3, 9));
                lcd_goto_addr(temp + 1);
                goto ui_lcd_menu;
            }
            else
                arr[i++] = ch;
        }
        else
        {
            arr[i] = 0;
            lcd_goto_addr(cursorpos);
            lcd_putstring(arr, cursorpos);
            temp = cursorpos;
            lcd_putstring("00:00.0", lcd_compute_xy(3, 9));
            lcd_goto_addr(temp + 1);
            goto ui_lcd_menu;
        }

        goto get_more_ch;
    }

    goto ui_lcd;
}
// ------------------------------------------------init-clock-------------------------------------------------------------
/***********************************************************************************
 * function : this function initializies the running clock at the bootom right
 * parameters : none
 * return : none
 ***********************************************************************************/
void init_clock()
{
    lcd_goto_xy(3, 9);
    lcd_putstring("00:00.0", lcd_compute_xy(3, 9));
    global_clock = 0;
    lcd_goto_xy(0, 0);
    pca_software_timer();
}
// ------------------------------------------------update-lcd-clock------------------------------------------------------------
/***********************************************************************************
 * function : this function is called by the ISR which updates the clock every 70ms
 * parameters : none
 * return : none
 ***********************************************************************************/
void update_lcd_clock()
{
    int temp = cursorpos;

    int millis = ((global_clock / 2) % 10);
    int mins = (global_clock / 1200);
    int secs = ((global_clock / 20) % 600) % 60;

    sprintf(clkstr, "%d", millis);
    lcd_putstring(clkstr, lcd_compute_xy(3, 15));

    sprintf(clkstr, "%02d", mins);
    lcd_putstring(clkstr, lcd_compute_xy(3, 9));

    sprintf(clkstr, "%02d", secs);
    lcd_putstring(clkstr, lcd_compute_xy(3, 12));

    lcd_goto_addr(temp);
}
// ------------------------------------------------lcd-goto-xy------------------------------------------------------------
/***********************************************************************************
 * function : takes x,y grid input and sends cursor to that position
 * parameters : row and column numbers
 * return : none
 ***********************************************************************************/
void lcd_goto_xy(unsigned char x, unsigned char y)
{
    unsigned char address = lcd_compute_xy(x, y);
    if (address != 255)
        lcd_goto_addr(address);
}
// ------------------------------------------------lcd-compute-xy------------------------------------------------------------
/***********************************************************************************
 * function : computes the address of the location after taking row and column values
 * parameters : none
 * return : none
 ***********************************************************************************/
unsigned char lcd_compute_xy(unsigned char x, unsigned char y)
{
    unsigned char ret_val = 255;
    if (x < 4 && y < 16)
    {
        if (x == 0)
        {
            ret_val = (y);
        }
        if (x == 1)
        {
            ret_val = (y + 64);
        }
        if (x == 2)
        {
            ret_val = (y + 16);
        }
        if (x == 3)
        {
            ret_val = (y + 80);
        }
    }
    else
    {
        print_string("Wrong Coordinates sent, x <= 3, y <= 15 \n\r");
    }
    return ret_val;
}
// ------------------------------------------------lcd-goto-addr------------------------------------------------------------
/***********************************************************************************
 * function : This function writes the address to the LCD
 * parameters : the address to go to
 * return : none
 ***********************************************************************************/
void lcd_goto_addr(unsigned char addr)
{
    LCD_RS = 0;
    LCD_RW = 0;
    cursorpos = addr;
    P0 = addr | 0x80;
    toggle_clock(100);
}
// ------------------------------------------------lcd-goto-addr-CG-----------------------------------------------------------
/***********************************************************************************
 * function : This function writes the address to the LCD
 * parameters : the address to go to
 * return : none
 ***********************************************************************************/
void lcd_goto_addr_cg(unsigned char addr)
{
    LCD_RS = 0;
    LCD_RW = 0;
    // cursorpos = addr;
    P0 = addr | 0x40;
    toggle_clock(100);
}
// ------------------------------------------------toggle-clock-------------------------------------------------------------
/***********************************************************************************
 * function : toggles the E pin on the LCD to the load data
 * parameters : delay
 * return : none
 ***********************************************************************************/
void toggle_clock(int delay)
{
    LCD_E = 1;
    for (int k = 0; k < delay; k++)
    {
    }
    LCD_E = 0;
    for (int k = 0; k < delay; k++)
    {
    }
}
// ------------------------------------------------print-lcd-menu------------------------------------------------------------
/***********************************************************************************
 * function : prints the LCD menu, defined as critical so that it does not get interrupted
 * parameters : none
 * return : none
 ***********************************************************************************/
void print_lcd_menu() __critical
{
    printf("\n\n\r^^^^^^^^^^^^^^^^^^^-LCD-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
    printf("'G' -> Go to Addr \n\r");
    printf("'X' -> Go to X,Y \n\r");
    printf("'C' -> Clear Screen \n\r");
    printf("'T' -> Putstring (64 ch max) \n\r");
    printf("'S' -> Stop Clock \n\r");
    printf("'R' -> Restart Clock \n\r");
    printf("'Z' -> Reset Clock to Zero \n\r");
    printf("'D' -> Dump DDRAM & CGRAM\n\r");
    printf("'I' -> New Custom Character\n\r");
    printf("'P' -> Print Custom Character\n\r");
    printf("'U' -> Logo Print\n\r");
    printf("\n\r'E' -> Goto Main Menu \n\r");
}
// ------------------------------------------------print-string-------------------------------------------------------------
/***********************************************************************************
 * function : A common critical function to print strings to console
 * parameters : string to be printed
 * return : none
 ***********************************************************************************/
void print_string(char str[]) __critical
{
    printf("%s", str);
}
// ------------------------------------------------lcd-clear-------------------------------------------------------------
/***********************************************************************************
 * function : this function clears the LCD
 * parameters : none
 * return : none
 ***********************************************************************************/
void lcd_clear()
{
    P0 = 0x01;
    toggle_clock(100);
}
// ------------------------------------------------init-lcd-------------------------------------------------------------
/***********************************************************************************
 * function : This initializes the LCD and configures all the parameters
 * parameters : none
 * return : none
 ***********************************************************************************/
void init_lcd()
{
    LCD_E = 0;
    LCD_RS = 0;
    LCD_RW = 0;
    P0 = 0x30;
    toggle_clock(100);
    for (int l = 0; l < 700; l++)
    {
    }

    P0 = 0x38;
    toggle_clock(100);

    P0 = 0x0E;
    toggle_clock(100);

    P0 = 0x04;
    toggle_clock(100);

    lcd_clear();
    cursorpos = 0;
}
// ------------------------------------------------lcd-putch-------------------------------------------------------------
/***********************************************************************************
 * function : Puts a character on the LCD
 * parameters : charactrer to be sent
 * return : none
 ***********************************************************************************/
void lcd_putch(unsigned char ch)
{
    LCD_RS = 1;
    LCD_RW = 0;
    P0 = ch;
    toggle_clock(100);
    LCD_RS = 0;
}
// ------------------------------------------------lcd-putstring-------------------------------------------------------------
/***********************************************************************************
 * function : Dumps an entire string onto the lcd
 * parameters : string to be sent and cursor position to start at
 * return : none
 ***********************************************************************************/
void lcd_putstring(char inp_string[], int cursor_pos) __critical
{
    int j = 0, i = cursor_pos;

    while (inp_string[j])
    {
        lcd_goto_addr(i++);
        lcd_putch(inp_string[j++]);

        if (i == 16)
            i = 64;
        if (i == 80)
            i = 16;
        if (i == 32)
            i = 80;
        if (i == 96)
            break;
    }
}
// ------------------------------------------------lcd-dumpddram-------------------------------------------------------------
/***********************************************************************************
 * function : Dumps DDRAM and CGRAM contents
 * parameters : none
 * return : none
 ***********************************************************************************/
void lcd_dumpddram()
{

    unsigned char chars[64];
    int j = 0, i = 0, k = 0;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 32; j++)
        {
            P0 = 0xFF;
            chars[k++] = lcd_getbyte();
        }
        lcd_goto_addr(0x40);
    }
    printf("\n\r^^^^^^^^^^^^^^^^^^^DDRAM-DUMP^^^^^^^^^^^^^^^^^^^^^^^^^^\n\r");
    printf("\n\r0x00: ");
    i = 0;
    for (j = 0; j < 16; j++)
    {
        printf("%02X ", chars[i++]);
    }
    printf("\n\r0x40: ");
    i = 32;
    for (j = 0; j < 16; j++)
    {
        printf("%02X ", chars[i++]);
    }
    printf("\n\r0x10: ");
    i = 16;
    for (j = 0; j < 16; j++)
    {
        printf("%02X ", chars[i++]);
    }

    printf("\n\r0x50: ");
    i = 48;
    for (j = 0; j < 16; j++)
    {
        printf("%02X ", chars[i++]);
    }

    printf("\n\n\r^^^^^^^^^^^^^^^^^^^CGRAM-DUMP^^^^^^^^^^^^^^^^^^^^^^^^^^\n\r");
    printf("\n\r0x00: ");
    i = 0;
    while (i <= 0x3F)
    {

        lcd_goto_addr_cg(i);
        P0 = 0xFF;
        chars[i++] = lcd_getbyte();
    }

    for (i = 0; i < 64; i++)
    {
        printf("%02X ", chars[i]);
        if ((i + 1) % 16 == 0 && i != 63)
        {
            printf("\n\r0x%02X: ", i + 1);
        }
    }
}
// ------------------------------------------------add-new-custom-char-----------------------------------------------------------
/***********************************************************************************
 * function : Adds new custom character based on user input
 * parameters : none
 * return : none
 ***********************************************************************************/
void add_new_custom_char()
{
    unsigned char char_no, inp, val, arr[8];

get_valid_char_no:
    print_string("Give Valid Custom Character Number (0-7) \n\r");
    char_no = get_number_hex(1);
    if (char_no > 7)
        goto get_valid_char_no;
    print_string("\n\rGive Character in the following format \n\r");
    print_string("Spaces and newline will be added automatically \n\n\r");

    print_string("-----FORMAT-----\n\r");
    print_string("0 1 1 0 1\n\r");
    print_string("1 1 1 1 1\n\r");
    print_string("1 0 1 0 1\n\r");
    print_string("0 0 0 0 0\n\r");
    print_string("1 1 1 0 0\n\r");
    print_string("1 0 0 0 1\n\r");
    print_string("1 0 1 0 1\n\r");
    print_string("----------------\n\n\n\r");

    //Getting custom character data for the characters
    for (int i = 0; i < 8; i++)
    {
        val = 0;
        for (int j = 4; j >= 0; j--)
        {
            inp = get_number_hex(1);
            val += ((inp > 0) ? 1 : 0) << j;
            printf(" ");
        }
        arr[i] = val;
        printf("\n\r");
    }    
    int start_address = 0 + char_no * 8;
    int j = 0;

    for (int l = start_address; l < start_address + 8; l++)
    {
        lcd_goto_addr_cg(l);
        lcd_putch(arr[j++]);
    }
    lcd_goto_xy(1, 1);
    printf("\n\rCustom Character added\n\rIt Can be used with character code -> %02X \n\r", char_no);
}
// ------------------------------------------------print-custom-character------------------------------------------------------------
/***********************************************************************************
 * function : Prints a custom character to the lcd
 * parameters : none
 * return : none
 ***********************************************************************************/
void print_custom_character()
{
    unsigned char char_num;
get_valid_char_num:
    print_string("Give valid custom character number (0-7) \n\r");
    char_num = get_number_hex(1);
    if (char_num > 7)
        goto get_valid_char_num;

    lcd_putch(char_num);

    print_string("Custom Character Printed at current cursor position\n\r");
}
// ------------------------------------------------lcd-getbyte-------------------------------------------------------------
/***********************************************************************************
 * function : Reads a byte from the lcd port
 * parameters : none
 * return : byte which is read
 ***********************************************************************************/
unsigned char lcd_getbyte()
{

    unsigned char data;
    LCD_RS = 1;
    LCD_RW = 1;
    for (int i = 0; i < 150; i++)
    {
    }
    LCD_E = 1;
    for (int i = 0; i < 150; i++)
    {
    }
    //sampling the data from the LCD
    data = P0;
    for (int i = 0; i < 150; i++)
    {
    }
    LCD_E = 0;
    LCD_RS = 0;
    LCD_RW = 0;
    //writing the Port back to default state, to avoid noise
    P0 = 0xFF;
    return data;
}
// ------------------------------------------------draw-yinyang------------------------------------------------------------
/***********************************************************************************
 * function : adds custom characters and draws logo and emoji
 * parameters : none
 * return : none
 ***********************************************************************************/
void draw_yinyang()
{
    // custom character buffer
    char buff[56] = {0x0, 0x3, 0x4, 0x8, 0x8, 0x10, 0x10, 0x10, 0x1f, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x01,
                     0x00, 0x18, 0x0C, 0x0E, 0x0E, 0x0F, 0x1F, 0x1F, 0x10, 0x10, 0x08, 0x0C, 0x04, 0x03, 0x00,
                     0x00, 0x07, 0x09, 0x19, 0x1F, 0x0F, 0x07, 0x1F, 0x00, 0x1F, 0x1F, 0x1E, 0x1E, 0x1C, 0x18,
                     0x00, 0x00, 0x01, 0x1f, 0x0A, 0x11, 0x15, 0x11, 0x0E, 0x00};

    // add custom characters to CG Ram
    for (int i = 0; i < 56; i++)
    {
        lcd_goto_addr_cg(i);
        lcd_putch(buff[i]);
    }
    // Draw Yin Yang
    lcd_goto_xy(1, 1);
    lcd_putch(0);
    lcd_goto_xy(1, 2);
    lcd_putch(1);
    lcd_goto_xy(1, 3);
    lcd_putch(2);
    lcd_goto_xy(2, 1);
    lcd_putch(3);
    lcd_goto_xy(2, 2);
    lcd_putch(4);
    lcd_goto_xy(2, 3);
    lcd_putch(5);

    // Draw Emoji
    lcd_goto_xy(1, 6);
    lcd_putch(0x28);
    lcd_goto_xy(1, 7);
    lcd_putch(6);
    lcd_goto_xy(1, 8);
    lcd_putch(0x5f);
    lcd_goto_xy(1, 9);
    lcd_putch(6);
    lcd_goto_xy(1, 10);
    lcd_putch(0x29);
}
// ------------------------------------------------End-------------------------------------------------------------
