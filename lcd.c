#include <at89c51ed2.h>
#include <mcs51reg.h>
#include <stdlib.h>
#include <stdio.h>
#include "lcd.h"
#include "getput.h"

void init_lcd();
void lcd_goto_addr(unsigned char addr);
// void lcd_busy_wait();
void lcd_goto_xy(unsigned char x, unsigned char y);
unsigned char lcd_compute_xy(unsigned char x, unsigned char y);
void lcd_putch(unsigned char ch);
void lcd_putstring(char inp_string[], int cursor_pos);
void lcd_clear();
void toggle_clock(int delay);
void user_interface_lcd()
{
    init_lcd();
    char str[] = "ThisshouldworkIwilladdextrashitsothatlengthisgreaterthan20apparentlyitisnot";
    lcd_putstring(str, 9);
    lcd_clear();
    lcd_goto_xy(3,8);
    lcd_putstring("Time:",lcd_compute_xy(3,8));
    while (1)
    {
    }
}

void lcd_goto_xy(unsigned char x, unsigned char y)
{
   unsigned char address = lcd_compute_xy(x,y);
   if(address != 255)
   lcd_goto_addr(address);
}

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
            ret_val = (y+64);
        }
        if (x == 2)
        {
            ret_val = (y+16);
        }
        if (x == 3)
        {
            ret_val = (y+80);
        }
    }
    else
    {
        printf("Wrong Coordinates sent, x <= 3, y <= 15 \n\r");        
    }
    return ret_val;
}

void lcd_goto_addr(unsigned char addr)
{
    P0 = addr | 0x80;
    toggle_clock(100);
}

void toggle_clock(int delay)
{
    P2_7 = 1;
    for (int k = 0; k < delay; k++)
    {
    }
    P2_7 = 0;
}

void lcd_clear()
{
    P0 = 0x01;
    toggle_clock(100);
}

void init_lcd()
{
    P2_7 = 0;
    P1_3 = 0;
    P1_5 = 0;
    P0 = 0x30;
    toggle_clock(100);
    for (int l = 0; l < 700; l++)
    {
    }

    P0 = 0x38;
    toggle_clock(100);

    P0 = 0x0F;
    toggle_clock(100);

    P0 = 0x04;
    toggle_clock(100);

    lcd_clear();
}

void lcd_putch(unsigned char ch)
{
    P1_3 = 1;
    P0 = ch;
    toggle_clock(100);
    P1_3 = 0;
}

void lcd_putstring(char inp_string[], int cursor_pos)
{
    printf("%s \n\r", inp_string);
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