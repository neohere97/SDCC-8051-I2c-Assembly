

#include <stdlib.h>
#include <stdio.h>
#include "asm_c.h"
#include "getput.h"
#include "program.h"

extern unsigned char asmtest(unsigned char param1, unsigned char param2, unsigned char param3);

void asm_call(unsigned char sent_from_asm);

// ------------------------------------------------at-clear-all-buffers--------------------------------------------------
/***********************************************************************************
 * function : Clears all the buffers and begins again
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


void asm_call(unsigned char sent_from_asm)
{
    printf("\n\n\r This function was called from assembly, character sent from there -> %c\n\r", sent_from_asm);
}