#include "Kboard.h"
#include "common.h"
#include "aduc812.h"
#include "async.h"

#define col_tick 0x01010101
#define magic_numb 0x40404040

unsigned int kb_cols[4] = {0,0,0,0};

const unsigned int col_clean[] =
    {0, 0xFF, 0xFF00, 0xFFFF,
    0xFF0000, 0xFF00FF, 0xFFFF00, 0xFFFFFF,
    0xFF000000, 0xFF0000FF, 0xFF00FF00, 0xFF00FFFF,
    0xFFFF0000, 0xFFFF00FF, 0xFFFFFF00, 0xFFFFFFFF};

char table[][] = {"*741", "0852", "#963", "DCBA"};

volatile unsigned int kb_tick = 0;

struct FIFOb KB_FIFO;

char hold_delay, rep_fr;


void KB_ISR(void) __interrupt(5) {
    unsigned int buff, kb_col_row, i, b;
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
	for(i = 0; i < 4; i++){
        b = ((buff >> i * 8) & 255);
        if( b == 5 || b == rep_fr)
            //singl push
            PushFIFO(&KB_FIFO, table[col][i]);
    }
    kb_tick ++;
	TH0 =  hold_delay;
	TL0 = 0x00;
}

char ReadKB(){
    return PopFIFO(&KB_FIFO);
}

void init_kb(char delay, char freq){

    TMOD &= 0xF0;
	TMOD |=	(T0_M0);

    hold_delay = delay;
    rep_fr = freq;

	TH0 = delay;
	TL0 = 0x00;

    TR0 = 1;
	ET0 = 1;
	//Enable all
	EA = 1;
	//start Timer0
    KB_FIFO.RP = KB_FIFO.WP = 0;

    SetVector(0x200B, (void *)KB_ISR);
}
