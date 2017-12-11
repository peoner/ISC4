;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (UNIX)
; This file was generated Wed Nov 15 13:07:46 2017
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _Converter
	.globl _SequenceWriter
	.globl _TypeParser
	.globl _SPR0
	.globl _SPR1
	.globl _CPHA
	.globl _CPOL
	.globl _SPIM
	.globl _SPE
	.globl _WCOL
	.globl _ISPI
	.globl _I2CI
	.globl _I2CTX
	.globl _I2CRS
	.globl _I2CM
	.globl _MDI
	.globl _MCO
	.globl _MDE
	.globl _MDO
	.globl _CS0
	.globl _CS1
	.globl _CS2
	.globl _CS3
	.globl _SCONV
	.globl _CCONV
	.globl _DMA
	.globl _ADCI
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CAP2
	.globl _CNT2
	.globl _TR2
	.globl _XEN
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _TF2
	.globl _WDE
	.globl _WDS
	.globl _WDR2
	.globl _WDR1
	.globl _PRE0
	.globl _PRE1
	.globl _PRE2
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PADC
	.globl _PSI
	.globl _RXD
	.globl _TXD
	.globl _INT0
	.globl _INT1
	.globl _T0
	.globl _T1
	.globl _WR
	.globl _RD
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _EADC
	.globl _EA
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _T2
	.globl _T2EX
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _DACCON
	.globl _DAC1H
	.globl _DAC1L
	.globl _DAC0H
	.globl _DAC0L
	.globl _SPICON
	.globl _SPIDAT
	.globl _ADCCON3
	.globl _ADCGAINH
	.globl _ADCGAINL
	.globl _ADCOFSH
	.globl _ADCOFSL
	.globl _B
	.globl _ADCCON1
	.globl _I2CCON
	.globl _ACC
	.globl _PSMCON
	.globl _ADCDATAH
	.globl _ADCDATAL
	.globl _ADCCON2
	.globl _DMAP
	.globl _DMAH
	.globl _DMAL
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _EADRL
	.globl _WDCON
	.globl _EDATA4
	.globl _EDATA3
	.globl _EDATA2
	.globl _EDATA1
	.globl _ETIM3
	.globl _ETIM2
	.globl _ETIM1
	.globl _ECON
	.globl _IP
	.globl _P3
	.globl _IE2
	.globl _IE
	.globl _P2
	.globl _I2CADD
	.globl _I2CDAT
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPP
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _is_data
	.globl _status
	.globl _c
	.globl _vall
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_DPP	=	0x0084
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_I2CDAT	=	0x009a
_I2CADD	=	0x009b
_P2	=	0x00a0
_IE	=	0x00a8
_IE2	=	0x00a9
_P3	=	0x00b0
_IP	=	0x00b8
_ECON	=	0x00b9
_ETIM1	=	0x00ba
_ETIM2	=	0x00bb
_ETIM3	=	0x00c4
_EDATA1	=	0x00bc
_EDATA2	=	0x00bd
_EDATA3	=	0x00be
_EDATA4	=	0x00bf
_WDCON	=	0x00c0
_EADRL	=	0x00c6
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_DMAL	=	0x00d2
_DMAH	=	0x00d3
_DMAP	=	0x00d4
_ADCCON2	=	0x00d8
_ADCDATAL	=	0x00d9
_ADCDATAH	=	0x00da
_PSMCON	=	0x00df
_ACC	=	0x00e0
_I2CCON	=	0x00e8
_ADCCON1	=	0x00ef
_B	=	0x00f0
_ADCOFSL	=	0x00f1
_ADCOFSH	=	0x00f2
_ADCGAINL	=	0x00f3
_ADCGAINH	=	0x00f4
_ADCCON3	=	0x00f5
_SPIDAT	=	0x00f7
_SPICON	=	0x00f8
_DAC0L	=	0x00f9
_DAC0H	=	0x00fa
_DAC1L	=	0x00fb
_DAC1H	=	0x00fc
_DACCON	=	0x00fd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_T2EX	=	0x0091
_T2	=	0x0090
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_EA	=	0x00af
_EADC	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_RD	=	0x00b7
_WR	=	0x00b6
_T1	=	0x00b5
_T0	=	0x00b4
_INT1	=	0x00b3
_INT0	=	0x00b2
_TXD	=	0x00b1
_RXD	=	0x00b0
_PSI	=	0x00bf
_PADC	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_PRE2	=	0x00c7
_PRE1	=	0x00c6
_PRE0	=	0x00c5
_WDR1	=	0x00c3
_WDR2	=	0x00c2
_WDS	=	0x00c1
_WDE	=	0x00c0
_TF2	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_XEN	=	0x00cb
_TR2	=	0x00ca
_CNT2	=	0x00c9
_CAP2	=	0x00c8
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_ADCI	=	0x00df
_DMA	=	0x00de
_CCONV	=	0x00dd
_SCONV	=	0x00dc
_CS3	=	0x00db
_CS2	=	0x00da
_CS1	=	0x00d9
_CS0	=	0x00d8
_MDO	=	0x00ef
_MDE	=	0x00ee
_MCO	=	0x00ed
_MDI	=	0x00ec
_I2CM	=	0x00eb
_I2CRS	=	0x00ea
_I2CTX	=	0x00e9
_I2CI	=	0x00e8
_ISPI	=	0x00ff
_WCOL	=	0x00fe
_SPE	=	0x00fd
_SPIM	=	0x00fc
_CPOL	=	0x00fb
_CPHA	=	0x00fa
_SPR1	=	0x00f9
_SPR0	=	0x00f8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_vall::
	.ds 2
_c::
	.ds 1
_status::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_is_data::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_SIO_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	SRC/main.c:34: unsigned int vall = 0;
	clr	a
	mov	_vall,a
	mov	(_vall + 1),a
;	SRC/main.c:36: unsigned char c = 0, status = 0;
	mov	_c,#0x00
;	SRC/main.c:36: void Converter(){
	mov	_status,#0x00
;	SRC/main.c:35: __bit is_data = 0;
	clr	_is_data
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'TypeParser'
;------------------------------------------------------------
;vall                      Allocated to registers r2 
;------------------------------------------------------------
;	SRC/main.c:11: unsigned char TypeParser(unsigned char vall){
;	-----------------------------------------
;	 function TypeParser
;	-----------------------------------------
_TypeParser:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	SRC/main.c:12: if(vall == 0)
	mov	a,dpl
	mov	r2,a
;	SRC/main.c:13: return No_data;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	SRC/main.c:14: if(vall >= '0' && vall <= '9')
	cjne	r2,#0x30,00112$
00112$:
	jc	00104$
	mov	a,r2
	add	a,#0xff - 0x39
	jc	00104$
;	SRC/main.c:15: return Is_a_number;
	mov	dpl,#0x01
;	SRC/main.c:16: return Not_a_Number;
	ret
00104$:
	mov	dpl,#0x02
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SequenceWriter'
;------------------------------------------------------------
;vall_s                    Allocated to registers r2 
;------------------------------------------------------------
;	SRC/main.c:19: void SequenceWriter(){
;	-----------------------------------------
;	 function SequenceWriter
;	-----------------------------------------
_SequenceWriter:
;	SRC/main.c:20: unsigned char vall_s = 0;
	mov	r2,#0x00
;	SRC/main.c:21: while (TypeParser(vall_s) != Is_a_number ) {
00106$:
	mov	dpl,r2
	push	ar2
	lcall	_TypeParser
	mov	r3,dpl
	pop	ar2
	cjne	r3,#0x01,00121$
	sjmp	00119$
00121$:
;	SRC/main.c:22: if(GetDIP() == 128)
	lcall	_GetDIP
	mov	r3,dpl
	cjne	r3,#0x80,00102$
;	SRC/main.c:23: return;
	ret
00102$:
;	SRC/main.c:24: if(rsiostat()){
	lcall	_rsiostat
	mov	a,dpl
	jz	00104$
;	SRC/main.c:25: vall_s = rsio();
	lcall	_rsio
	mov	r3,dpl
	mov	ar2,r3
;	SRC/main.c:26: WriteLED(vall_s);}
	mov	dpl,r2
	push	ar2
	lcall	_WriteLED
	pop	ar2
	sjmp	00106$
00104$:
;	SRC/main.c:28: vall_s = 0;
	mov	r2,#0x00
;	SRC/main.c:30: while(vall_s <= '9')
	sjmp	00106$
00119$:
00109$:
	mov	a,r2
	add	a,#0xff - 0x39
	jc	00111$
;	SRC/main.c:31: wsio(vall_s++);
	mov	ar3,r2
	inc	r2
	mov	dpl,r3
	push	ar2
	lcall	_wsio
	pop	ar2
	sjmp	00109$
00111$:
;	SRC/main.c:32: wsio('\n');
	mov	dpl,#0x0A
	ljmp	_wsio
;------------------------------------------------------------
;Allocation info for local variables in function 'Converter'
;------------------------------------------------------------
;------------------------------------------------------------
;	SRC/main.c:37: void Converter(){
;	-----------------------------------------
;	 function Converter
;	-----------------------------------------
_Converter:
;	SRC/main.c:39: while (1) {
00109$:
;	SRC/main.c:40: if(GetDIP() != 128){
	lcall	_GetDIP
	mov	r2,dpl
	cjne	r2,#0x80,00141$
	sjmp	00102$
00141$:
;	SRC/main.c:41: WriteUART('\n');
	mov	dpl,#0x0A
	lcall	_WriteUART
;	SRC/main.c:42: WriteUART('\r');
	mov	dpl,#0x0D
;	SRC/main.c:43: return;
	ljmp	_WriteUART
00102$:
;	SRC/main.c:45: c = ReadUART();
	lcall	_ReadUART
	mov	_c,dpl
;	SRC/main.c:47: if( c == '\n' || (status = TypeParser(c)) != No_data){
	mov	a,#0x0A
	cjne	a,_c,00142$
	sjmp	00105$
00142$:
	mov	dpl,_c
	lcall	_TypeParser
	mov	a,dpl
	mov	r2,a
	mov	_status,a
	jz	00109$
00105$:
;	SRC/main.c:48: if(status == Not_a_Number){
	mov	a,#0x02
	cjne	a,_status,00110$
;	SRC/main.c:49: PrintString("\n\rNot_a_Number\n\r\0");
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_PrintString
;	SRC/main.c:50: WriteLED(0xf0);
	mov	dpl,#0xF0
	lcall	_WriteLED
;	SRC/main.c:51: goto reset;
	ljmp	00128$
;	SRC/main.c:53: break;
00110$:
;	SRC/main.c:56: WriteUART(c);
	mov	dpl,_c
	lcall	_WriteUART
;	SRC/main.c:57: if(c == '\n')
	mov	a,#0x0A
	cjne	a,_c,00146$
	sjmp	00117$
00146$:
;	SRC/main.c:60: is_data = 1;
	setb	_is_data
;	SRC/main.c:61: vall = vall * 10 + (c - '0');
	push	_vall
	push	(_vall + 1)
	mov	dptr,#0x000A
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	r4,_c
	mov	r5,#0x00
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r4
	add	a,r2
	mov	_vall,a
	mov	a,r5
	addc	a,r3
	mov	(_vall + 1),a
;	SRC/main.c:62: if(vall > 255){
	clr	c
	mov	a,#0xFF
	subb	a,_vall
	clr	a
	subb	a,(_vall + 1)
	jc	00147$
	ljmp	00109$
00147$:
;	SRC/main.c:63: PrintString("\n\rOut_of_range\n\r\0");
	mov	dptr,#__str_1
	mov	b,#0x80
	lcall	_PrintString
;	SRC/main.c:64: WriteLED(0xF);
	mov	dpl,#0x0F
	lcall	_WriteLED
;	SRC/main.c:65: goto reset;
	ljmp	00128$
00117$:
;	SRC/main.c:68: if( !is_data) {
	jb	_is_data,00119$
;	SRC/main.c:69: PrintString("\n\rNo_data_to_convert\n\r\0");
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_PrintString
;	SRC/main.c:70: WriteLED(0xFF);
	mov	dpl,#0xFF
	lcall	_WriteLED
;	SRC/main.c:71: goto reset;
	ljmp	00128$
00119$:
;	SRC/main.c:73: WriteLED(12);
	mov	dpl,#0x0C
	lcall	_WriteLED
;	SRC/main.c:74: c = (vall & 0xf0) >> 4;
	mov	a,#0xF0
	anl	a,_vall
	mov	r2,a
	clr	a
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	_c,r2
;	SRC/main.c:75: WriteLED(0x41 + (c) - 10);
	mov	a,#0x37
	add	a,_c
	mov	dpl,a
	lcall	_WriteLED
;	SRC/main.c:76: WriteLED(0x30 + c);
	mov	a,#0x30
	add	a,_c
	mov	dpl,a
	lcall	_WriteLED
;	SRC/main.c:77: if( c > 0)
	mov	a,_c
	jz	00124$
;	SRC/main.c:78: if(c > 9)
	mov	a,_c
	add	a,#0xff - 0x09
	jnc	00121$
;	SRC/main.c:79: WriteUART(0x41 + (c) - 10);
	mov	a,#0x37
	add	a,_c
	mov	dpl,a
	lcall	_WriteUART
	sjmp	00124$
00121$:
;	SRC/main.c:81: WriteUART(0x30 + c);
	mov	a,#0x30
	add	a,_c
	mov	dpl,a
	lcall	_WriteUART
00124$:
;	SRC/main.c:83: c = vall & 0xf;
	mov	a,#0x0F
	anl	a,_vall
	mov	r2,a
	mov	_c,r2
;	SRC/main.c:84: WriteLED(0x41 + (c) - 10);
	mov	a,#0x37
	add	a,_c
	mov	dpl,a
	lcall	_WriteLED
;	SRC/main.c:85: WriteLED(0x30 + c);
	mov	a,#0x30
	add	a,_c
	mov	dpl,a
	lcall	_WriteLED
;	SRC/main.c:86: if(c > 9)
	mov	a,_c
	add	a,#0xff - 0x09
	jnc	00126$
;	SRC/main.c:87: WriteUART(0x41 + (c) - 10);
	mov	a,#0x37
	add	a,_c
	mov	dpl,a
	lcall	_WriteUART
	sjmp	00128$
00126$:
;	SRC/main.c:89: WriteUART(0x30 + c);
	mov	a,#0x30
	add	a,_c
	mov	dpl,a
	lcall	_WriteUART
;	SRC/main.c:94: reset:
00128$:
;	SRC/main.c:95: vall = 0;
	clr	a
	mov	_vall,a
	mov	(_vall + 1),a
;	SRC/main.c:96: is_data = 0;
	clr	_is_data
;	SRC/main.c:97: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	SRC/main.c:100: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	SRC/main.c:102: init_sio(S1200);
	mov	dpl,#0xE8
	lcall	_init_sio
;	SRC/main.c:104: while (1) {
00111$:
;	SRC/main.c:105: if (GetDIP() != 128) {
	lcall	_GetDIP
	mov	r2,dpl
	cjne	r2,#0x80,00121$
	sjmp	00108$
00121$:
;	SRC/main.c:106: ES = 0;
	clr	_ES
;	SRC/main.c:107: EA = 0;
	clr	_EA
;	SRC/main.c:108: while (GetDIP() != 128) {
00101$:
	lcall	_GetDIP
	mov	r2,dpl
	cjne	r2,#0x80,00122$
	sjmp	00111$
00122$:
;	SRC/main.c:109: SequenceWriter();
	lcall	_SequenceWriter
	sjmp	00101$
00108$:
;	SRC/main.c:112: ES = 1;
	setb	_ES
;	SRC/main.c:113: EA = 1;
	setb	_EA
;	SRC/main.c:114: while (GetDIP() == 128) {
00104$:
	lcall	_GetDIP
	mov	r2,dpl
	cjne	r2,#0x80,00106$
;	SRC/main.c:115: Converter();
	lcall	_Converter
	sjmp	00104$
00106$:
;	SRC/main.c:117: WriteLED(0);
	mov	dpl,#0x00
	lcall	_WriteLED
	sjmp	00111$
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.db 0x0A
	.db 0x0D
	.ascii "Not_a_Number"
	.db 0x0A
	.db 0x0D
	.db 0x00
	.db 0x00
__str_1:
	.db 0x0A
	.db 0x0D
	.ascii "Out_of_range"
	.db 0x0A
	.db 0x0D
	.db 0x00
	.db 0x00
__str_2:
	.db 0x0A
	.db 0x0D
	.ascii "No_data_to_convert"
	.db 0x0A
	.db 0x0D
	.db 0x00
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
