#include "Kboard.h"
#include "common.h"
#include "aduc812.h"

#define col_tick 0x01010101
#define magic_numb 0x40404040

unsigned int kb_cols[4] = {0,0,0,0};

const unsigned int col_clean[] =
    {0, 0xFF, 0xFF00, 0xFFFF,
    0xFF0000, 0xFF00FF, 0xFFFF00, 0xFFFFFF,
    0xFF000000, 0xFF0000FF, 0xFF00FF00, 0xFF00FFFF,
    0xFFFF0000, 0xFFFF00FF, 0xFFFFFF00, 0xFFFFFFFF};

volatile unsigned int kb_tick = 0;


void KB_ISR(void) __interrupt(4) {
    unsigned int buff, kb_col_row;
    int col = kb_tick & 3;

    write_max(KB, ~(1 << col));
    kb_col_row = read_max(KB);

     buff = kb_cols[col];
     buff += col_tick;
     buff &=  col_clean[( ~(kb_col_row >> 4) & 15)];

    if(kb_tick>64*4){
        buff &= 0x7f7f7f7f;     //00->00;01->10;10->00;11->10
        buff += magic_numb;
        buff &= 0xbfbfbfbf;
    }
	if(kb_tick > 64*4+4)
		kb_tick = 0;

    kb_cols[col] = buff;
	//WriteLED(kb_cols[0]);
    kb_tick ++;
	TH0 = 247;
	TL0 = 0x00;
}

void init_kb(){
    TMOD &= 0xF0;
	TMOD |=	(T0_M0);

	TH0 = 0x00;
	TL0 = 0x00;

    TR0 = 1;
	ET0 = 1;
	//Enable all
	EA = 1;
	//start Timer0
    SetVector(0x200B, (void *)KB_ISR);
}
