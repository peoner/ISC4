#include "aduc812.h"
#include "common.h"
#include "async.h"




struct FIFOb wFIFO, rFIFO;
__bit TRANSFER_NOW; //Флаг для разрешения проблемы начальной передачи

/*Инициализирует последовательный канал на заданной скорости. Использует таймер 1
Вход:       char speed - скорость. Задается константами, описанными в
                заголовочном файле sio.h*/
void init_sio(unsigned char speed) {
	TH1 = speed;
	TMOD |= 0x20; 	//Таймер 1 будет работать в режиме autoreload
	TCON |= 0x40;

	SCON = 0x50;  	//Настройки последовательного канала: Режим 1(8 бит данных,
	             	//асинхронный, переменная скорость)
	ES = 0;
	wFIFO.RP = wFIFO.WP = rFIFO.RP = rFIFO.WP = 0;
	TRANSFER_NOW = 0;
	SetVector(0x2023, (void *)SIO_ISR);
}

//Функция записи элемента в буфер
__bit PushFIFO(struct FIFOb *a, unsigned char c) {
	if (!((a->RP == 0 && a->WP == FIFOSize - 1) ||
	      ((a->RP - a->WP) == 1))) 	{
		a->buf[a->WP] = c;
		if (++(a->WP) > FIFOSize - 1)
			a->WP = 0; //проверка выхода указателя за границы буфера
		return 1;
	} else
		return 0;
}

//Функция извлечения элемента из буфера
unsigned char PopFIFO(struct FIFOb *a) {
	unsigned char c;
	if (a->WP == a->RP)
		return 0;      //если буфер пуст, возвращаем 0
	c = a->buf[a->RP]; //извлекаем элемент с индексом RP
	if (++(a->RP) > FIFOSize - 1)
		a->RP = 0; //проверка выхода указателя за границы буфера
	return c;
}

//Обработчик прерывания от последовательного канала
void SIO_ISR(void) __interrupt(4) {
	unsigned char c;
	if (TI) {
		c = PopFIFO(&wFIFO);
		if (c) { //если буфер непуст
            TRANSFER_NOW = 1;   //происходит передача
			SBUF = c;
		}
        else
			TRANSFER_NOW = 0; //завершаем цикл передачи - больше нечего передавать
        TI = 0;
	}
	if (RI) {
		PushFIFO(&rFIFO, SBUF);
		RI = 0;
	}
}

// вывод символа в последовательный канал
//запись значения в очередь
__bit WriteUART(unsigned char c) {
	ES = 0;        //отключаем прерывание от UART
	if (PushFIFO(&wFIFO, c)) {//успешное добавление в очередь
        ES = 1;
		if (!TRANSFER_NOW)
			TI = 1;  //если цикл передачи не начат, искусственно вызываем
			         //прерывание установкой флага
		return 1;
	} else {
		ES = 1;
		return 0; //если буфер полон
	}
}
// вывод ASCIIZ строки в последовательный канал
void PrintString(const unsigned char *str) {
	while (*str != 0) {
		WriteUART(*(str++));
	}
}

// считывание символа из последовательного канала
// возвращает значение из очереди
unsigned char ReadUART(void) {
	unsigned char c;
	ES = 0;
	c = PopFIFO(&rFIFO);
	ES = 1;
	return c;
}
