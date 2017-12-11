#include "Kboard.h"
#include "common.h"

void init_kb(){

}

#define row_tick 0x01010101
#define magic_numb 0x40404040

const unsigned int row_clean[] =
    {0, 0xFF, 0xFF00, 0xFFFF,
    0xFF0000, 0xFF00FF, 0xFFFF00, 0xFFFFFF,
    0xFF000000, 0xFF0000FF, 0xFF00FF00, 0xFF00FFFF,
    0xFFFF0000, 0xFFFF00FF, 0xFFFFFF00, 0xFFFFFFFF};

    unsigned int kb_tick = 5;
    unsigned int kb_col_row;

void SIO_ISR(void) __interrupt(4) {
    int row = kb_tick & 3;
    if(row == 0){
        kb_col_row = read_max();
    }
    unsigned int buff = kb_rows[row];
     buff += row_tick;
     buff &=  row_clean[
        ((kb_col_row >> (row + 4)) & 1) *
            (kb_col_row & 15)];

    if(kb_tick>64){
        buff &= 0x7f7f7f7f;     //00->00;01->10;10->00;11->10
        buff += magic_numb;
        buff &= 0xbfbfbfbf;
    }
    kb_rows[row] = buff;
    kb_tick ++;
}
