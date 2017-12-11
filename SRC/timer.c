#include "timer.h"
#include "aduc812.h"
#include "common.h"
#include "led.h"


unsigned long ms_counter ;

void T2_cnt ( void ) __interrupt(5){ /* 0x2B timer 2 external and overflow */
	ms_counter++;
    TF2 = 0;
}

void InitTimer(void ){
	ms_counter = 0 ;
    PT2=1;
	SetVector( 0x202B, ( void *)T2_cnt );
	TH2 = 0xFC;
	TL2 = 0x66;
	RCAP2L = TL2;
	RCAP2H = TH2;
	T2CON = 0x04;
	ET2 = 1;
	EA = 1;

}

unsigned long GetMsCounter (void){
	return ms_counter;
}

unsigned long DTimeMs( unsigned long t0 ){
	return ms_counter - t0;
}

void DelayMs (unsigned long t ){
 	unsigned long target = ms_counter + t;
	while ( target > ms_counter ) {}
}
