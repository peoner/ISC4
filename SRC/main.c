#include "aduc812.h"
#include "async.h"
#include "sio.h"
#include "sync.h"
#include "common.h"
#include "Kboard.h"


void bzz(void){
unsigned char i;
char * ERR = "\nThis Error\n";

	WriteLED(0xF4);

    for(; *ERR != 0; ERR++)
    {
        WriteUART(*ERR);
    }

}

void main(void) {
    char symb =0;
    char buff[3], i;
    int sum =0;
	//init_sio(S1200);
    init_sio(S9600);
    init_kb(248, 128+6);

	while (1) {
        if(GetDIP() == 1){
        sum = 0;
            symb = ReadKB();
            if(symb != 0){
                WriteUART(symb);
                WriteLED(symb);
            }
        }else{
            symb = ReadKB();
            if(symb != 0){
                if( (symb >= '0' && symb <= '9')){
                    sum *= 10;
                    sum += (symb - '0');

                    WriteUART(symb);
                    if(sum > 255){
                        bzz();
                        sum =0;
                    }
                }
                else{
                    if(symb == '*'){
                        WriteUART('*');
                        i = 3;
                        while (sum > 0) {
                            if(sum % 16 < 10){
                                buff[--i] = ((sum % 16) + '0');
                            }else{
                                buff[--i] = ((sum % 16) - 10 + 'A');
                            }
                            sum /= 16;
                        }
                        while (i < 3) {
                            WriteUART(buff[i++]);
                        }
                        WriteUART('\n');
                        sum = 0;
                    }else{
                        WriteUART(symb);
                        bzz();
                        sum = 0;
                    }
                }
                WriteLED(symb);
            }
        }

	}
}
