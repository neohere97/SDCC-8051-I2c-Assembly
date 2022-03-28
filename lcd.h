/***************************************************************************
 * ESD Lab 4
 * Tools: VSCode,make,batchisp,tera term
 * Author: Chinmay Shalawadi
 * Institution: University of Colorado Boulder
 * Mail id: chsh1552@colorado.edu
 * References: lecture slides
 ***************************************************************************/

#ifndef LCD_

//Functoin of Declarations
void user_interface_lcd();
void init_lcd();
void lcd_clear();
void init_clock();
void update_lcd_clock();
void lcd_putstring(char inp_string[], int cursor_pos) __critical;
void lcd_putch(unsigned char ch);


#endif