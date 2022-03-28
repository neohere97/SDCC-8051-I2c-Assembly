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
#include "asm_c.h"
#include "getput.h"
#include "program.h"

extern unsigned char asmtest(unsigned char param1, unsigned char param2, unsigned char param3);

void asm_call(unsigned char sent_from_asm);

// ------------------------------------------------asm-clang-------------------------------------------------
/***********************************************************************************
 * function : Calls the assembly routine which computes param3%param2 * param1
 * parameters : none
 * return : none
 ***********************************************************************************/
void asm_clang()
{
    printf("\n\r Give param 1, 8bit \n\r");
    unsigned char num1 = get_number(3);
    printf("\n\r Give param 2, 8bit \n\r");
    unsigned char num2 = get_number(3);
    printf("\n\r Give param 3, 8bit \n\r");
    unsigned char num3 = get_number(3);

    printf("\n\r RESULT-> param3<Mod>param2 * param1 = %d \n\r", asmtest(num1, num2, num3));
    printf("\n\r Going back to main menu.. \n\r");
    main_menu();
}
// ------------------------------------------------asm-call-------------------------------------------------
/***********************************************************************************
 * function : This function is called by the assembly routine
 * parameters : ascii character sent by the assembly character
 * return : none
 ***********************************************************************************/
void asm_call(unsigned char sent_from_asm)
{
    printf("\n\n\r This function was called from assembly, character sent from there -> %c\n\r", sent_from_asm);
}
// ------------------------------------------------End-------------------------------------------------
