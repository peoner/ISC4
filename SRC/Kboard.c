#include "Kboard.h"
#include "common.h"
#include "aduc812.h"
#include "async.h"

#define col_tick 0x01010101
#define magic_numb 0x60606060

unsigned long kb_cols[4] = {0,0,0,0};

const unsigned long col_clean[] =
    {0, 0xFF, 0xFF00, 0xFFFF,
    0xFF0000, 0xFF00FF, 0xFFFF00, 0xFFFFFF,
    0xFF000000, 0xFF0000FF, 0xFF00FF00, 0xFF00FFFF,
    0xFFFF0000, 0xFFFF00FF, 0xFFFFFF00, 0xFFFFFFFF};

char *table[] = {"147*", "2580", "369#", "ABCD"};

unsigned int kb_tick = 0;

volatile struct FIFOb KB_FIFO;

char hold_delay, rep_fr;
unsigned char kb_col_row;
volatile unsigned char collis;
volatile unsigned char collis_old;


void KB_ISR(void) __interrupt(4) {
    unsigned long buff;
    unsigned int i, b;

    write_max(KB, ~(1 << (char)(kb_tick & 3)));
    kb_col_row = read_max(KB);

     buff = kb_cols[kb_tick & 3];
     buff += col_tick;
     buff &=  col_clean[( ~(kb_col_row >> 4) & 15)];

    if(kb_tick>32*4){
        buff &= 0x7f7f7f7f;     //00->00;01->10;10->00;11->10
        buff += magic_numb;
        buff &= 0x9f9f9f9f;
    }
	if(kb_tick > 32*4+3)
		kb_tick = 0;

    kb_cols[kb_tick & 3] = buff;

    if((kb_tick & 3) == 0){
        collis_old = collis;
        collis = 0;
    }
	for(i = 0; i < 4; i++){
        b = ((buff >> (i * 8)) & 255);
        if(b != 0){
            collis += 1;
        }
        if(collis < 3 && collis_old < 3)
            if( b == 5 || ( ( (b & 0xC0) != 0) && ( (b & 0x1F) == 0xA))){
                //singl push
                PushFIFO(&KB_FIFO, table[kb_tick & 3][i]);
            }
    }

    //WriteLED(kb_cols[kb_tick & 3]);
    kb_tick ++;
	TH0 =  hold_delay;
	TL0 = 0x00;
}

char ReadKB(){
    return PopFIFO(&KB_FIFO);
}

void init_kb(unsigned char delay, unsigned char freq){

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
