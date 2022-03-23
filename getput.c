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
#include "getput.h"
#include <stdlib.h>
#include <stdio.h>

  int get_num_helper(int times);
  int get_num_helper_hex(int times);
// ------------------------------------------------get-number-------------------------------------------------
/***********************************************************************************
 * function : Gets input from user and converts to decimal number
 * parameters : none
 * return : none
 ***********************************************************************************/
int get_number(int total_chars)
{
    int rec;
    int num = 0;
    for (int i = total_chars; i > 0; i--)
    {
        rec = getchar();
        // Accept only numbers
        if (rec <= 0x39 && rec >= 0x30)
        {
            num += ((rec - 0x30) * get_num_helper(i - 1));
        }
        else
        {
            printf("ERR,Numbers ONLY!\n\r");
            return -1;
        }
    }
    return num;
}
// ------------------------------------------------get-num-helper--------------------------------------------------
/***********************************************************************************
 * function : helper function to multiply 10^x
 * parameters : none
 * return : none
 ***********************************************************************************/
int get_num_helper(int times)
{
    int num = 1;
    // This function is used to avoid using pow(), for 10^x multiplications
    for (int i = 0; i < times; i++)
    {
        num = num * 10;
    }
    if (times == 0)
        return 1;
    else
        return num;
}

// ------------------------------------------------get-number-------------------------------------------------
/***********************************************************************************
 * function : Gets input from user and converts to decimal number
 * parameters : none
 * return : none
 ***********************************************************************************/
int get_number_hex(int total_chars)
{
    int rec;
    int num = 0;
    for (int i = total_chars; i > 0; i--)
    {
        rec = getchar();
        if (rec <= 0x66 && rec >= 0x61)
            rec -= 0x20;
        // Accept only numbers & A-F
        if ((rec <= 0x39 && rec >= 0x30))
        {
            num += ((rec - 0x30) * get_num_helper_hex(i - 1));
        }
        else if (rec <= 0x46 && rec >= 0x41){
            num += ((rec - 0x37) * get_num_helper_hex(i - 1));
        }
        else
        {
            printf("ERR, Hex Numbers ONLY!\n\r");
            return -1;
        }
    }
    return num;
}
// ------------------------------------------------get-num-helper--------------------------------------------------
/***********************************************************************************
 * function : helper function to multiply 10^x
 * parameters : none
 * return : none
 ***********************************************************************************/
int get_num_helper_hex(int times)
{
    int num = 1;
    // This function is used to avoid using pow(), for 10^x multiplications
    for (int i = 0; i < times; i++)
    {
        num = num * 16;
    }
    if (times == 0)
        return 1;
    else
        return num;
}

// ------------------------------------------------putchar--------------------------------------------------

/***********************************************************************************
 * function : As the name suggests this function dumps characters into uart
 * parameters : none
 * return : none
 ***********************************************************************************/
int putchar(int c)
{
    while ((SCON & 0x02) == 0)
        ;
    TI = 0;
    SBUF = c;
    return 0;
}
// ------------------------------------------------getchar--------------------------------------------------
/***********************************************************************************
 * function : This function gets characters from user
 * parameters : none
 * return : none
 ***********************************************************************************/
int getchar()
{
    while (RI == 0)
        ;
    RI = 0;
    // command characters are not printed to keep the UI neat
    if (SBUF != 0x3F && SBUF != 0x3D && SBUF != 0x40 && SBUF != 0x2B && SBUF != 0x2D)
        putchar(SBUF);
    return SBUF;
}