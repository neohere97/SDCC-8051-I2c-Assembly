#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>


// These are the core buffer definitions, since the buffer is of fixed size
// CB_SIZE has been statically defined to be 128 in commons.h
uint8_t cb_buffer[128];
uint8_t read_index = 0;
uint8_t write_index = 0;
uint8_t end_index = 128;

// -------------------------------------------------------CB-FIFO-ENQUEUE-----------------------------------------------------------------------
size_t cbfifo_enqueue(void *buf, size_t nbyte)
{
    // checking if the input buffer data is null
    if (buf == NULL)
        return -1;
    // type casting the data to uint8_t to make it compatible and generic
    uint8_t *data = buf;
    int i;
    // only when write index is behind end index, data is enqueued
    for (i = 0; i < nbyte && write_index < end_index; i++)
    {
        cb_buffer[write_index++] = *data++;
    }
    // type casting the number of bytes written
    return (size_t)i;
}
// -------------------------------------------------------CB-FIFO-DEQUEUE-----------------------------------------------------------------------
size_t cbfifo_dequeue(void *buf, size_t nbyte)
{
    // null buffer pointer check
    if (buf == NULL)
        return -1;

    uint8_t *data = buf;

    int i;

    for (i = 0; i < nbyte; i++)
    {
        // When read_index equals write index all the elements have been dequeued
        if (read_index == write_index)
        {
            goto next_step;
        }
        // writing the data back into the write buffer from the cb buffer
        *data++ = cb_buffer[i];
        // incrementing the read buffer to account for dequeued elements
        read_index++;
    }
    // In this step the buffer is reset such that remaining elements are brought back to the
    // beginning of the buffer. Alternate algorithm to doing the wrapped subtraction.
next_step:
    if (write_index > read_index)
    {
        size_t temp_write_index = write_index;
        for (int j = 0; j < temp_write_index - read_index; j++)
        {
            cb_buffer[j] = cb_buffer[j + read_index];
        }
        // resetting the write index to the new buffer which has been reset
        write_index = write_index - read_index;
    }
    // In case of write_index being same as the read index, all the elements have been dequeued and both point at the first location
    else if (write_index == read_index)
    {
        write_index = 0;
    }
    // resetting read index to 0 everytime since remaining elements are brought back to starting from the first location
    read_index = 0;

    return (size_t)i;
}
// -------------------------------------------------------CB-FIFO-LENGTH---------------------------------------------------------------------
size_t cbfifo_length()
{
    // because of the dequeue reset function everytime the length of the buffer will be same as the write index
    return (size_t)write_index;
}
// -------------------------------------------------------CB-FIFO-CAPACITY-----------------------------------------------------------------------
size_t cbfifo_capacity()
{
    // buffer size has been statically allocated to be 128 bytes in commons.h
    return (size_t)128;
}
// -----------------------------------------------------------END-----------------------------------------------------------------------