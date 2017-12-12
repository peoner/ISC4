#include "common.h"
#include "aduc812.h"


void SetVector(unsigned char __xdata * Addres, void * Vector) {
	unsigned char __xdata * TmpVector;
	TmpVector = Addres;
	*(TmpVector++) = 0x02;
	*(TmpVector++) = (unsigned char)((unsigned short)Vector >> 8);
	*(TmpVector) = (unsigned char)(Vector);
}

void WriteLED(unsigned char value) { write_max(7, value); }

unsigned char GetDIP() {
	unsigned char val = read_max(2);
	return ~val;
}


#define MAXBASE 0x8
void write_max( unsigned char __xdata *regnum, unsigned char val )
{
unsigned char oldDPP = DPP;

    DPP     = MAXBASE;
    *regnum = val;
    DPP     = oldDPP;
}

unsigned char read_max( unsigned char __xdata *regnum )
{
unsigned char oldDPP=DPP;
unsigned char val;

    DPP = MAXBASE;
    val = *regnum;
    DPP = oldDPP;

    return val;
}
