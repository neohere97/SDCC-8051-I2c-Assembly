/***************************************************************************
 * ESD Lab 4
 * Tools: VSCode,make,batchisp,tera term
 * Author: Chinmay Shalawadi
 * Institution: University of Colorado Boulder
 * Mail id: chsh1552@colorado.edu
 * References: lecture slides
 ***************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "buffer.h"
#include "getput.h"
#include "program.h"

//function declarations
void create_initial_buffers();
void buffer_input_loop();
void print_all_buffers();
void print_heap_stats();
void dump_buff_zero_ascii();
void at_clear_all_buffers();
int create_new_buffer();
int delete_buffer();
void dump_buff_zero_hex();
void print_heap_menu();

// Program Metadata struct inits
struct
{
    int total_heap_size;
    int allocated_heap;
    int all_char_count;
    int storage_char_count;
    int total_buffers;
} program_stats;

struct buffer_struct
{
    int buffer_num;
    unsigned char *buffer_start;
    unsigned char *buffer_end;
    int buff_size;
    int num_char;
};

struct buffer_struct buffers_array[25];

// ------------------------------------------------User-Interface-heap---------------------------------------------------
/***********************************************************************************
 * function : Main UI function, handles different commands and printing, comes back here after '@'
 * parameters : none
 * return : none
 ***********************************************************************************/
void user_interface_heap()
{    
    create_initial_buffers();
    print_all_buffers();
    buffer_input_loop();
}

// ------------------------------------------------at-clear-all-buffers--------------------------------------------------
/***********************************************************************************
 * function : Clears all the buffers and begins again
 * parameters : none
 * return : none
 ***********************************************************************************/
void at_clear_all_buffers()
{    
    for (int i = 0; i < program_stats.total_buffers; i++)
    {
        free(buffers_array[i].buffer_start);
        printf("Buffer %d Freed ....\n\r", i);
    }
    printf("Let's begin again..\n\r");
    user_interface_heap();
}
// ------------------------------------------------delete-buffers--------------------------------------------------
/***********************************************************************************
 * function : This function deletes a specific buffer and resets the coutners
 * parameters : none
 * return : 0, but not used anywhere
 ***********************************************************************************/
int delete_buffer()
{ 
    int buff_number;
    unsigned char *buff_to_free;
    int buffer_freed_size;
get_del_num:
    printf("\n\rGive Valid Buffer Number to delete(1-%d) in 3 digits\n\r", (program_stats.total_buffers - 1));
    buff_number = get_number(3);

    if (buff_number > 0 && buff_number < program_stats.total_buffers)
    {
        // storing the buffer pointer to be freed and the size freed
        // this will be used to update stats and free the actual buffer
        buff_to_free = buffers_array[buff_number].buffer_start;
        buffer_freed_size = buffers_array[buff_number].buff_size;
        // overwriting the deleted buffer and moving buffers one index before
        for (int i = 0; i < (program_stats.total_buffers - 1); i++)
        {
            if (i >= buff_number)
            {
                buffers_array[i + 1].buffer_num = i;
                buffers_array[i] = buffers_array[i + 1];
            }
        }
        // updating buffer stats
        program_stats.total_buffers -= 1;
        program_stats.allocated_heap -= buffer_freed_size;
        // freeing the buffer which is deleted
        free(buff_to_free);
        printf("Buffer %d Successfully Deleted.. \n\r", buff_number);
        return 0;
    }
    else
    {
        goto get_del_num;
    }
}
// ------------------------------------------------print-heap-menu-------------------------------------------------
/***********************************************************************************
 * function : This funciton prints the menu whenever called with the list of commands
 * parameters : none
 * return : none
 ***********************************************************************************/
void print_heap_menu()
{    
    printf("\n\n\r^^^^^^^^^^^^^^^^^^^-HEAP-MENU-^^^^^^^^^^^^^^^^^^^^^^^^^^ \n\n\r");
    printf("You can enter characters or use commands from below \n\r");
    printf("'?' -> Show heap status, dump & clear Buffer 0 \n\r");
    printf("'+' -> Add a new Buffer\n\r");
    printf("'-' -> Delete existing Buffer\n\r");
    printf("'=' -> Dump Buffer 0 in hex\n\r");
    printf("'@' -> Free all Heap & begin again\n\n\r");
    printf("'M' -> Go to Main Menu \n\n\r");
}
// ------------------------------------------------create-new-buffer--------------------------------------------------
/***********************************************************************************
 * function : This funciton executes when '+' is sent, creates a new buffer
 *            and updates count
 * parameters : none
 * return : 0, but never used
 ***********************************************************************************/
int create_new_buffer()
{    
    int buff_size;
    struct buffer_struct buff;
    if (program_stats.allocated_heap == program_stats.total_heap_size)
        goto no_heap_left;

get_new_buff:
    printf("\n\rGive Valid Buffer Size(030-300):");
    buff_size = get_number(3);
    if (buff_size >= 30 && buff_size <= 300)
    {
        buff.buffer_start = malloc(buff_size);
        if (buff.buffer_start == NULL)
        {
            printf("Failed, give smaller buffer\n\r");
        }
        else
        {
            printf("\n\n\r####SUCCESS, BUFFER Created####\n\n\r");
            // initializing all the buffer stats and metadata
            program_stats.allocated_heap += buff_size;
            buff.buff_size = buff_size;
            buff.buffer_num = program_stats.total_buffers;
            buff.buffer_end = buff.buffer_start + buff_size;
            buff.num_char = 0;
            // adding the buffer to the arry of buffers
            buffers_array[program_stats.total_buffers] = buff;
            program_stats.total_buffers += 1;
        }
        return 0;
    }
    else
    {
        goto get_new_buff;
    }
no_heap_left:
    printf("No Heap Memory Left, Delete some buffers...\n\r");
    return 0;
}
// ------------------------------------------------create-initial-buffers--------------------------------------------------
/***********************************************************************************
 * function : This function executes and creates the first two buffers and initializes
 *            the stat tracker
 * parameters : none
 * return : none
 ***********************************************************************************/
void create_initial_buffers()
{    
    int buff_size;

get_buff:
    printf("\n\rGive Valid Initial Buffer Size(0048-4800):");
    buff_size = get_number(4);
    struct buffer_struct buff, buff1;

    // accepting only valid initial buffer sizes
    if (buff_size >= 48 && buff_size <= 4800)
    {
        buff.buffer_start = malloc(buff_size);
        buff1.buffer_start = malloc(buff_size);
        // If malloc fails, going back to the user for lower buffer size
        if (buff.buffer_start == NULL || buff1.buffer_start == NULL)
        {
            printf("\n\r####FAIL, Please give a smaller buffer size####\n\n\r");

            if (buff.buffer_start != NULL)
                free(buff.buffer_start);
            if (buff1.buffer_start != NULL)
                free(buff1.buffer_start);

            goto get_buff;
        }
        else
        {
            // Initializing the initial two buffes and heap stats
            printf("\n\n\r####SUCCESS, INITIAL BUFFERS Created####\n\n\r");
            program_stats.allocated_heap = 2 * buff_size;
            program_stats.total_heap_size = 4996;
            program_stats.total_buffers = 2;

            buff.buff_size = buff_size;
            buff1.buff_size = buff_size;
            buff.buffer_num = 0;
            buff1.buffer_num = 1;
            buff1.buffer_end = buff1.buffer_start + buff_size;
            buff.buffer_end = buff.buffer_start + buff_size;
            buff.num_char = 0;
            buff1.num_char = 0;

            buffers_array[0] = buff;
            buffers_array[1] = buff1;
        }
    }
    else
        goto get_buff;
}
// ------------------------------------------------enter-chars--------------------------------------------------
/***********************************************************************************
 * function : This function is the main loop where it waits for different commands
 *            and calls respective functions for execution
 * parameters : none
 * return : none
 ***********************************************************************************/
void buffer_input_loop()
{
    print_heap_menu();
    int rec;
    while (1)
    {
        rec = getchar();
        if (rec > 0x60 && rec < 0x7B)
        {
            // if lower characters and buffer 0 has space then adding to the buffer
            // Stats also updated
            if (buffers_array[0].num_char < buffers_array[0].buff_size)
            {
                *(buffers_array[0].buffer_start + buffers_array[0].num_char) = rec;
                buffers_array[0].num_char += 1;
            }
            program_stats.all_char_count += 1;
            program_stats.storage_char_count += 1;
        }
        else if (rec == 0x3F)
        {
            //? case, printing stats, buffer content and resetting count
            print_heap_stats();
            print_all_buffers();
            dump_buff_zero_ascii();
            program_stats.all_char_count = 0;
            program_stats.storage_char_count = 0;
            print_heap_menu();
        }
        else if (rec == 0x3D)
        {
            //= case, hexdump
            dump_buff_zero_hex();
            print_heap_menu();
        }
        else if (rec == 0x40)
        {
            // @ case, clearing all buffers
            at_clear_all_buffers();
            print_heap_menu();
        }
        else if (rec == 0x2B)
        {
            //+ case, create new buffer
            create_new_buffer();
            print_heap_menu();
        }
        else if (rec == 0x2D)
        {
            //- case, delete a specific buffer
            delete_buffer();
            print_heap_menu();
        }
        else if (rec == 0x4D)
        {
            main_menu();
        }
        else
        {
            program_stats.all_char_count += 1;
        }
    }
}

// ------------------------------------------------dump-buff0-ascii--------------------------------------------------
/***********************************************************************************
 * function : This function dumps the content of buffer0 in ascii
 * parameters : none
 * return : none
 ***********************************************************************************/
void dump_buff_zero_ascii()
{    
    int j = 64;
    if (buffers_array[0].num_char > 0)
    {
        printf("\n\n\r***********Buffer-0-Contents*********** \n\r");
        for (int i = 0; i < buffers_array[0].num_char; i++)
        {
            if (j == 64)
            {
                printf("\n\r");
            }
            putchar(*(buffers_array[0].buffer_start + i));
            j--;
            if (j == 0)
                j = 64;
        }
        buffers_array[0].num_char = 0;
        printf("\n\n\r");
    }
    else
    {
        printf("Buffer0 is Empty....\n\r");
    }
}
// ------------------------------------------------dump-buff0-hex--------------------------------------------------
/***********************************************************************************
 * function : This function dumps buffer 0 contents in hex, formatted to 16 bytes per line
 * parameters : none
 * return : none
 ***********************************************************************************/
void dump_buff_zero_hex()
{    
    if (buffers_array[0].num_char > 0)
    {
        printf("\n\r-------------------------HEXDUMP--------------------------------");
        printf("\n\r    ADDR: +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F \n\r");
        int j = 16;
        // Print 16 of them per line
        for (int i = 0; i < buffers_array[0].num_char; i++)
        {
            if (j == 16)
            {
                printf("\n\r%p: ", (buffers_array[0].buffer_start + i));
            }
            printf("%x ", *(buffers_array[0].buffer_start + i));
            j--;
            if (j == 0)
                j = 16;
        }
        printf("\n\n\r");
    }
    else
    {
        printf("Buffer is empty...\n\r");
    }
}
// ------------------------------------------------print-heap-stats------------------------------------------------
/***********************************************************************************
 * function : This function prints heap sats when ? is sent
 * parameters : none
 * return : none
 ***********************************************************************************/
void print_heap_stats()
{    
    printf("\n\r****************HEAP*STATS*************\n\r");
    printf("Total Heap Size: %d \n\r", program_stats.total_heap_size);
    printf("Allocated Heap Size: %d \n\r", program_stats.allocated_heap);
    printf("All Chars: %d \n\r", program_stats.all_char_count);
    printf("Storage Chars: %d \n\r", program_stats.storage_char_count);
    printf("Total Buffers: %d \n\r", program_stats.total_buffers);
}
// ------------------------------------------------print-all-buffers------------------------------------------------
/***********************************************************************************
 * function : This function prints individual buffer stats when ? is sent
 * parameters : none
 * return : none
 ***********************************************************************************/
void print_all_buffers()
{    
    for (int i = 0; i < program_stats.total_buffers; i++)
    {
        printf("****************BUFFER*%d***************\n\r", i);
        printf("Buffer#: %d \n\r", buffers_array[i].buffer_num);
        printf("BufferStart: %p \n\r", buffers_array[i].buffer_start);
        printf("BufferEnd: %p \n\r", buffers_array[i].buffer_end);
        printf("BufferSize: %d \n\r", buffers_array[i].buff_size);
        printf("TotalUsed: %d \n\r", buffers_array[i].num_char);
    }
    printf("***************************************\n\r");
}

// ------------------------------------------------End-------------------------------------------------
