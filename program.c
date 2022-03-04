// ESDS22, chinmay shalawadi
// Code Referenced from https://www.instructables.com/8051-Programming-Using-Small-Device-C-Compiler-SDC/

#include <at89c51ed2.h>
#include <mcs51reg.h>
#include <stdlib.h>
#include <stdio.h>


__sfr __at(0x8e) _AUXR;

void delay(void);
int putchar(int c);
void blink_transmit();
int getchar(void);
void transmit_buffer(unsigned char *c, int len);
int get_num_helper(int times);
int get_number();

void main(void)
{
    int rec = get_number();
    unsigned char *p = malloc(rec);
    
    if(p == NULL){
        printf("MALLOC FAILED\n\r");
    }else{
        *(p+rec) = 0x43;
        putchar(*(p+rec));
        putchar(0xD);
        putchar(0xA);
    }
   

    free(p);    
}

void transmit_buffer(unsigned char *c, int len)
{

    for (int i = 0; i < len; i++)
    {
        putchar(*(c + i));
    }

    blink_transmit();
}

void blink_transmit()
{
    int letter_A = 0x41;
    while (1)
    {
        P1 = 0xff; // Turn ON all LED's connected to Port1
        putchar(letter_A++);
        putchar(0x20);
        delay();
        P1 = 0x00; // Turn OFF all LED's connected to Port1
        putchar(letter_A++);
        putchar(0x20);
        delay();
        if (letter_A >= 0x5A)
        {
            letter_A = 0x41;
            putchar(0xD);
            putchar(0xA);
        }
    }
}

int get_number()
{
    int rec;
    int i = 0;
    int num = 0;   
    for (i = 4; i > 0; i--)
    {
        rec = getchar();
        if (rec <= 0x39 && rec >= 0x30)
        {
            num += ((rec - 0x30) * get_num_helper(i-1));
         } 
        else
        {
            printf("ERR,Enter only Number\n\r");
            return -1;
        }
    }
    return num;
}

int get_num_helper(int times)
{
    int num=1;
    for (int i = 0; i < times; i++)
    {
        num = num * 10;
    }
    if (times == 0)
        return 1;
    else
        return num;
}

void delay(void)
{
    int i, j;
    for (i = 0; i < 0xcc; i++)
        for (j = 0; j < 0xff; j++)
            ;
}

int putchar(int c)
{
    while ((SCON & 0x02) == 0)
        ;
    TI = 0;
    SBUF = c;
    return 0;
}

int getchar()
{
    while (RI == 0)
        ;
    RI = 0;
    putchar(SBUF);
    return SBUF;
}

_sdcc_external_startup()
{
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

    return 0;
}