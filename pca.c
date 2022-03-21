#include <at89c51ed2.h>
#include <mcs51reg.h>
#include <stdlib.h>
#include <stdio.h>
#include "pca.h"
#include "getput.h"
#include "program.h"

void pca_pdown();
void pca_idle();
void pca_watchdog();
void pca_pwm();
void pca_high_speed();
void pca_software_timer();
void pca_falling_edge();
void print_pca_menu();
void hardware_watchdog();
void fclk_lowest();
volatile int watchdog_flag = 0;
// ------------------------------------------------User-Interface-PCA---------------------------------------------------
/***********************************************************************************
 * function : Main UI function, handles different commands and printing, comes back here after '@'
 * parameters : none
 * return : none
 ***********************************************************************************/
void user_interface_PCA()
{
    printf("Hello, In PCA Demo mode \n\r");
    print_pca_menu();

    int inp;
wrong_choice_pca:
    printf("Please make a valid choice \n\r");
    inp = getchar();
    if (inp == 0x46)
        pca_falling_edge();
    else if (inp == 0x53)
        pca_software_timer();
    else if (inp == 0x48)
        pca_high_speed();
    else if (inp == 0x50)
        pca_pwm();
    else if (inp == 0x57)
        pca_watchdog();
    else if (inp == 0x49)
        pca_idle();
    else if (inp == 0x44)
        pca_pdown();
    else if (inp == 0x4C)
        fclk_lowest();
    else if (inp == 0x55)
        hardware_watchdog();
    else
        goto wrong_choice_pca;

exit_choice:
    printf("Please 'E' to exit or Reset \n\r");
    inp = getchar();
    if (inp == 0x45)
        user_interface_PCA();
    else
        goto exit_choice;
}

// ------------------------------------------------pca-software-timer------------------------------------------------
/***********************************************************************************
 * function : pca software timer
 * parameters : none
 * return : none
 ***********************************************************************************/
void pca_falling_edge()
{
    printf("Setting P1.3 as falling edge detector, enabling PCA interrupt \n\r");
    CCAPM0 = 0x21;
    CR = 1;
}
// ------------------------------------------------pca-software-timer------------------------------------------------
/***********************************************************************************
 * function : pca software timer
 * parameters : none
 * return : none
 ***********************************************************************************/
void pca_software_timer()
{
    printf("Entering Software Timer Mode \n\r");
    CCAP3L = 255;
    CCAP3H = 255;
    CCAPM3 = 0x49;
    CR = 1;
    int rec;
get_f:
    rec = getchar();

    if (rec == 0x53)
        CCAPM3 = 0;
    else
        goto get_f;
}
// ------------------------------------------------at-clear-all-buffers--------------------------------------------------
/***********************************************************************************
 * function : Clears all the buffers and begins again
 * parameters : none
 * return : none
 ***********************************************************************************/
void pca_high_speed()
{

    printf("Entering High Speed Toggle Mode, P1.5 \n\r");
    CCAP2L = 255;
    CCAP2H = 2;
    CCAPM2 = 0x4D;
    CMOD = CPS0;
    CR = 1;
}
// ------------------------------------------------at-clear-all-buffers--------------------------------------------------
/***********************************************************************************
 * function : Clears all the buffers and begins again
 * parameters : none
 * return : none
 ***********************************************************************************/
void pca_pwm()
{
    printf("Entering PWM Mode, 25 percent Duty Cycle P1.6\n\r");
    CCAP3L = 192;
    CCAP3H = 192;
    CCAPM3 = 0x42;
    CMOD = CPS0;
    CR = 1;
}
// ------------------------------------------------at-clear-all-buffers--------------------------------------------------
/***********************************************************************************
 * function : Clears all the buffers and begins again
 * parameters : none
 * return : none
 ***********************************************************************************/
void pca_watchdog()
{
    CCAP1L = 255;
    CCAP1H = 128;
    CCAPM1 = 0x49;
    watchdog_flag = 1;
    printf("Enabling Watchdog Timer..\n\r");
    CCAP4L = 255;
    CCAP4H = 255;
    CMOD = WDTE;
    CCAPM4 = 0x48;
    CR = 1;
    int rec;
    printf("Currently Watchdog is being serviced\n\rPress 'S' to stop and generate a reset \n\r");

get_e:
    rec = getchar();

    if (rec == 0x53)
        CCAPM1 = 0;
    else
        goto get_e;
}
// ------------------------------------------------at-clear-all-buffers--------------------------------------------------
/***********************************************************************************
 * function : Clears all the buffers and begins again
 * parameters : none
 * return : none
 ***********************************************************************************/
void hardware_watchdog()
{
    CCAP2L = 255;
    CCAP2H = 255;
    CCAPM2 = 0x49;
    printf("Enabling Hardware Watchdog Timer..\n\r");
    WDTPRG = 0x7;
    CR = 1;
    int rec;
    printf("Currently Hardware Watchdog is being serviced\n\rPress 'S' to stop watchdog service and generate a reset in ~1s \n\r");

get_e:
    rec = getchar();

    if (rec == 0x53)
        CCAPM2 = 0;
    else
        goto get_e;
}
// ------------------------------------------------at-clear-all-buffers--------------------------------------------------
/***********************************************************************************
 * function : Clears all the buffers and begins again
 * parameters : none
 * return : none
 ***********************************************************************************/
void pca_idle()
{
    pca_pwm();
    printf("Entering Idle, Will Exit on external interrupt 0\n\r");
    EX0 = 1;
    PCON = IDL;
    printf("Woke up from Idle/Power down, going to main menu \n\r");
    main_menu();
}
// ------------------------------------------------at-clear-all-buffers--------------------------------------------------
/***********************************************************************************
 * function : Clears all the buffers and begins again
 * parameters : none
 * return : none
 ***********************************************************************************/
void pca_pdown()
{
    pca_pwm();
    printf("Entering power down, Will Exit on external interrupt 0\n\r");
    EX0 = 1;
    PCON = PD;
    printf("Woke up from Idle/Power down, going to main menu \n\r");
    main_menu();

}
// ------------------------------------------------at-clear-all-buffers--------------------------------------------------
/***********************************************************************************
 * function : Clears all the buffers and begins again
 * parameters : none
 * return : none
 ***********************************************************************************/
void fclk_lowest()
{
    printf("Changing Clock prescalar to go to lowest frequency in X2 Mode..\n\r");
    printf("This UART Session will stop working...\n\r");
    EX0 = 1;
    CKRL = 0;
    main_menu();
}
// ------------------------------------------------print-heap-menu-------------------------------------------------
/***********************************************************************************
 * function : This funciton prints the menu whenever called with the list of commands
 * parameters : none
 * return : none
 ***********************************************************************************/
void print_pca_menu()
{    
    printf("\n\n\r^^^^^^^^^^^^^^^^^^^-PCA-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
    printf("'F' -> Falling Edge Capture Mode\n\r");
    printf("'S' -> Software Timer Mode\n\r");
    printf("'H' -> High Speed Output Mode\n\r");
    printf("'P' -> PWM Mode \n\r");
    printf("'W' -> Watchdog Timer Mode\n\r");
    printf("'I' -> Idle Mode with PWM\n\r");
    printf("'L' -> Change Prescalar to lowest frequency\n\r");
    printf("'U' -> Hardware Watchdog Timer\n\r");
    printf("'D' -> Power Down Mode\n\n\r");
}