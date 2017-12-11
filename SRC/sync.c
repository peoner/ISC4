#include "aduc812.h"
#include "common.h"

/*
Возвращает ненулевое значение, если буфер приема не пуст
*/
unsigned char rsiostat(void) { return RI; }

/*
Отправляет символ по последовательному каналу
*/
void wsio(unsigned char c) {
	SBUF = c;
	TI = 0;
	while (!TI)
		;
}

/*Дожидается приема символа из последовательного канала и возвращает его.*/
unsigned char rsio(void) {
	while (!RI) {
		if (GetDIP() != 128)
			break;
	}
	RI = 0;
	return SBUF;
}
