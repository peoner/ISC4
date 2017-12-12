#include "Kboard.h"
#include "common.h"
#include "aduc812.h"

#define row_tick 0x01010101
#define magic_numb 0x40404040

unsigned int kb_rows[4] = {0,0,0,0};

const unsigned int row_clean[] =
    {0, 0xFF, 0xFF00, 0xFFFF,
    0xFF0000, 0xFF00FF, 0xFFFF00, 0xFFFFFF,
    0xFF000000, 0xFF0000FF, 0xFF00FF00, 0xFF00FFFF,
    0xFFFF0000, 0xFFFF00FF, 0xFFFFFF00, 0xFFFFFFFF};

    unsigned int kb_tick = 5;
    unsigned int kb_col_row = 0;

void KB_ISR(void) __interrupt(4) {
        int row = kb_tick & 3;
    unsigned int buff;
write_max(KB, 0x01);
    if(row == 0){
        kb_col_row = read_max(KB);
    }
WriteLED(kb_col_row);
     buff = kb_rows[row];
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

void init_kb(){
    TMOD &= 0xF0;
	TMOD |=	(T0_M1);

	TH0 = 0x50;
	TL0 = 0x50;

    TR0 = 1;
	ET0 = 1;
	//Enable all
	EA = 1;
	//start Timer0
    SetVector(0x200B, (void *)KB_ISR);
}
