#include "aduc812.h"
#include "async.h"
#include "sio.h"
#include "sync.h"
#include "common.h"
#include "Kboard.h"

#define No_data 0
#define Is_a_number 1
#define Not_a_Number 2


unsigned char TypeParser(unsigned char vall){
	if(vall == 0)
		return No_data;
	if(vall >= '0' && vall <= '9')
		return Is_a_number;
	return Not_a_Number;
}

void SequenceWriter(){
	unsigned char vall_s = 0;
	while (TypeParser(vall_s) != Is_a_number ) {
		if(GetDIP() == 128)
			return;
        if(rsiostat()){
		      vall_s = rsio();
              WriteLED(vall_s);}
        else
            vall_s = 0;
	}
	while(vall_s <= '9')
		wsio(vall_s++);
	wsio('\n');
}
unsigned int vall = 0;
__bit is_data = 0;
unsigned char c = 0, status = 0;

void Converter(){
	while (1) {
        while (1) {
            if(GetDIP() != 128){
                WriteUART('\n');
                WriteUART('\r');
                return;
            }
            c = ReadUART();

            if( c == '\n' || (status = TypeParser(c)) != No_data){
                if(status == Not_a_Number){
                    PrintString("\n\rNot_a_Number\n\r\0");
                    WriteLED(0xf0);
                    goto reset;
				}
				break;
			}
		}
        WriteUART(c);
        if(c == '\n')
            break;

        is_data = 1;
        vall = vall * 10 + (c - '0');
        if(vall > 255){
            PrintString("\n\rOut_of_range\n\r\0");
            WriteLED(0xF);
            goto reset;
        }
	}
	if( !is_data) {
		PrintString("\n\rNo_data_to_convert\n\r\0");
		WriteLED(0xFF);
		goto reset;
	}
    WriteLED(12);
	c = (vall & 0xf0) >> 4;
    WriteLED(0x41 + (c) - 10);
    WriteLED(0x30 + c);
	if( c > 0)
		if(c > 9)
			WriteUART(0x41 + (c) - 10);
		else
			WriteUART(0x30 + c);

	c = vall & 0xf;
    WriteLED(0x41 + (c) - 10);
    WriteLED(0x30 + c);
	if(c > 9)
			WriteUART(0x41 + (c) - 10);
		else
			WriteUART(0x30 + c);
    //WriteUART('\n');
    //WriteUART('\r');


    reset:
    vall = 0;
    is_data = 0;
    return;
}

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
    init_kb(247, 128+6);

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
