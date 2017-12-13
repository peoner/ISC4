#include "aduc812.h"

//#define FIFOSize 16

//void SIO_ISR( void ) __interrupt ( 8 );

#define FIFOSize 16

struct FIFOb{
	unsigned char buf[FIFOSize];
	char RP;
	char WP;
};

//struct FIFOb wFIFO, rFIFO;
//__bit TRANSFER_NOW;				//Флаг для разрешения проблемы начальной передачи


void init_sio( unsigned char speed );

__bit PushFIFO(struct FIFOb* a, unsigned char c);

unsigned char PopFIFO(struct FIFOb* a);

__bit WriteUART(unsigned char c);

void PrintString(const unsigned char* str);

unsigned char ReadUART(void);
