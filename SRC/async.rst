                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (UNIX)
                              4 ; This file was generated Wed Nov 15 13:16:37 2017
                              5 ;--------------------------------------------------------
                              6 	.module async
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _ReadUART
                             13 	.globl _PrintString
                             14 	.globl _WriteUART
                             15 	.globl _PopFIFO
                             16 	.globl _PushFIFO
                             17 	.globl _init_sio
                             18 	.globl _SPR0
                             19 	.globl _SPR1
                             20 	.globl _CPHA
                             21 	.globl _CPOL
                             22 	.globl _SPIM
                             23 	.globl _SPE
                             24 	.globl _WCOL
                             25 	.globl _ISPI
                             26 	.globl _I2CI
                             27 	.globl _I2CTX
                             28 	.globl _I2CRS
                             29 	.globl _I2CM
                             30 	.globl _MDI
                             31 	.globl _MCO
                             32 	.globl _MDE
                             33 	.globl _MDO
                             34 	.globl _CS0
                             35 	.globl _CS1
                             36 	.globl _CS2
                             37 	.globl _CS3
                             38 	.globl _SCONV
                             39 	.globl _CCONV
                             40 	.globl _DMA
                             41 	.globl _ADCI
                             42 	.globl _P
                             43 	.globl _F1
                             44 	.globl _OV
                             45 	.globl _RS0
                             46 	.globl _RS1
                             47 	.globl _F0
                             48 	.globl _AC
                             49 	.globl _CY
                             50 	.globl _CAP2
                             51 	.globl _CNT2
                             52 	.globl _TR2
                             53 	.globl _XEN
                             54 	.globl _TCLK
                             55 	.globl _RCLK
                             56 	.globl _EXF2
                             57 	.globl _TF2
                             58 	.globl _WDE
                             59 	.globl _WDS
                             60 	.globl _WDR2
                             61 	.globl _WDR1
                             62 	.globl _PRE0
                             63 	.globl _PRE1
                             64 	.globl _PRE2
                             65 	.globl _PX0
                             66 	.globl _PT0
                             67 	.globl _PX1
                             68 	.globl _PT1
                             69 	.globl _PS
                             70 	.globl _PT2
                             71 	.globl _PADC
                             72 	.globl _PSI
                             73 	.globl _RXD
                             74 	.globl _TXD
                             75 	.globl _INT0
                             76 	.globl _INT1
                             77 	.globl _T0
                             78 	.globl _T1
                             79 	.globl _WR
                             80 	.globl _RD
                             81 	.globl _EX0
                             82 	.globl _ET0
                             83 	.globl _EX1
                             84 	.globl _ET1
                             85 	.globl _ES
                             86 	.globl _ET2
                             87 	.globl _EADC
                             88 	.globl _EA
                             89 	.globl _RI
                             90 	.globl _TI
                             91 	.globl _RB8
                             92 	.globl _TB8
                             93 	.globl _REN
                             94 	.globl _SM2
                             95 	.globl _SM1
                             96 	.globl _SM0
                             97 	.globl _T2
                             98 	.globl _T2EX
                             99 	.globl _IT0
                            100 	.globl _IE0
                            101 	.globl _IT1
                            102 	.globl _IE1
                            103 	.globl _TR0
                            104 	.globl _TF0
                            105 	.globl _TR1
                            106 	.globl _TF1
                            107 	.globl _DACCON
                            108 	.globl _DAC1H
                            109 	.globl _DAC1L
                            110 	.globl _DAC0H
                            111 	.globl _DAC0L
                            112 	.globl _SPICON
                            113 	.globl _SPIDAT
                            114 	.globl _ADCCON3
                            115 	.globl _ADCGAINH
                            116 	.globl _ADCGAINL
                            117 	.globl _ADCOFSH
                            118 	.globl _ADCOFSL
                            119 	.globl _B
                            120 	.globl _ADCCON1
                            121 	.globl _I2CCON
                            122 	.globl _ACC
                            123 	.globl _PSMCON
                            124 	.globl _ADCDATAH
                            125 	.globl _ADCDATAL
                            126 	.globl _ADCCON2
                            127 	.globl _DMAP
                            128 	.globl _DMAH
                            129 	.globl _DMAL
                            130 	.globl _PSW
                            131 	.globl _TH2
                            132 	.globl _TL2
                            133 	.globl _RCAP2H
                            134 	.globl _RCAP2L
                            135 	.globl _T2CON
                            136 	.globl _EADRL
                            137 	.globl _WDCON
                            138 	.globl _EDATA4
                            139 	.globl _EDATA3
                            140 	.globl _EDATA2
                            141 	.globl _EDATA1
                            142 	.globl _ETIM3
                            143 	.globl _ETIM2
                            144 	.globl _ETIM1
                            145 	.globl _ECON
                            146 	.globl _IP
                            147 	.globl _P3
                            148 	.globl _IE2
                            149 	.globl _IE
                            150 	.globl _P2
                            151 	.globl _I2CADD
                            152 	.globl _I2CDAT
                            153 	.globl _SBUF
                            154 	.globl _SCON
                            155 	.globl _P1
                            156 	.globl _TH1
                            157 	.globl _TH0
                            158 	.globl _TL1
                            159 	.globl _TL0
                            160 	.globl _TMOD
                            161 	.globl _TCON
                            162 	.globl _PCON
                            163 	.globl _DPP
                            164 	.globl _DPH
                            165 	.globl _DPL
                            166 	.globl _SP
                            167 	.globl _P0
                            168 	.globl _TRANSFER_NOW
                            169 	.globl _rFIFO
                            170 	.globl _wFIFO
                            171 	.globl _SIO_ISR
                            172 ;--------------------------------------------------------
                            173 ; special function registers
                            174 ;--------------------------------------------------------
                            175 	.area RSEG    (DATA)
                    0080    176 _P0	=	0x0080
                    0081    177 _SP	=	0x0081
                    0082    178 _DPL	=	0x0082
                    0083    179 _DPH	=	0x0083
                    0084    180 _DPP	=	0x0084
                    0087    181 _PCON	=	0x0087
                    0088    182 _TCON	=	0x0088
                    0089    183 _TMOD	=	0x0089
                    008A    184 _TL0	=	0x008a
                    008B    185 _TL1	=	0x008b
                    008C    186 _TH0	=	0x008c
                    008D    187 _TH1	=	0x008d
                    0090    188 _P1	=	0x0090
                    0098    189 _SCON	=	0x0098
                    0099    190 _SBUF	=	0x0099
                    009A    191 _I2CDAT	=	0x009a
                    009B    192 _I2CADD	=	0x009b
                    00A0    193 _P2	=	0x00a0
                    00A8    194 _IE	=	0x00a8
                    00A9    195 _IE2	=	0x00a9
                    00B0    196 _P3	=	0x00b0
                    00B8    197 _IP	=	0x00b8
                    00B9    198 _ECON	=	0x00b9
                    00BA    199 _ETIM1	=	0x00ba
                    00BB    200 _ETIM2	=	0x00bb
                    00C4    201 _ETIM3	=	0x00c4
                    00BC    202 _EDATA1	=	0x00bc
                    00BD    203 _EDATA2	=	0x00bd
                    00BE    204 _EDATA3	=	0x00be
                    00BF    205 _EDATA4	=	0x00bf
                    00C0    206 _WDCON	=	0x00c0
                    00C6    207 _EADRL	=	0x00c6
                    00C8    208 _T2CON	=	0x00c8
                    00CA    209 _RCAP2L	=	0x00ca
                    00CB    210 _RCAP2H	=	0x00cb
                    00CC    211 _TL2	=	0x00cc
                    00CD    212 _TH2	=	0x00cd
                    00D0    213 _PSW	=	0x00d0
                    00D2    214 _DMAL	=	0x00d2
                    00D3    215 _DMAH	=	0x00d3
                    00D4    216 _DMAP	=	0x00d4
                    00D8    217 _ADCCON2	=	0x00d8
                    00D9    218 _ADCDATAL	=	0x00d9
                    00DA    219 _ADCDATAH	=	0x00da
                    00DF    220 _PSMCON	=	0x00df
                    00E0    221 _ACC	=	0x00e0
                    00E8    222 _I2CCON	=	0x00e8
                    00EF    223 _ADCCON1	=	0x00ef
                    00F0    224 _B	=	0x00f0
                    00F1    225 _ADCOFSL	=	0x00f1
                    00F2    226 _ADCOFSH	=	0x00f2
                    00F3    227 _ADCGAINL	=	0x00f3
                    00F4    228 _ADCGAINH	=	0x00f4
                    00F5    229 _ADCCON3	=	0x00f5
                    00F7    230 _SPIDAT	=	0x00f7
                    00F8    231 _SPICON	=	0x00f8
                    00F9    232 _DAC0L	=	0x00f9
                    00FA    233 _DAC0H	=	0x00fa
                    00FB    234 _DAC1L	=	0x00fb
                    00FC    235 _DAC1H	=	0x00fc
                    00FD    236 _DACCON	=	0x00fd
                            237 ;--------------------------------------------------------
                            238 ; special function bits
                            239 ;--------------------------------------------------------
                            240 	.area RSEG    (DATA)
                    008F    241 _TF1	=	0x008f
                    008E    242 _TR1	=	0x008e
                    008D    243 _TF0	=	0x008d
                    008C    244 _TR0	=	0x008c
                    008B    245 _IE1	=	0x008b
                    008A    246 _IT1	=	0x008a
                    0089    247 _IE0	=	0x0089
                    0088    248 _IT0	=	0x0088
                    0091    249 _T2EX	=	0x0091
                    0090    250 _T2	=	0x0090
                    009F    251 _SM0	=	0x009f
                    009E    252 _SM1	=	0x009e
                    009D    253 _SM2	=	0x009d
                    009C    254 _REN	=	0x009c
                    009B    255 _TB8	=	0x009b
                    009A    256 _RB8	=	0x009a
                    0099    257 _TI	=	0x0099
                    0098    258 _RI	=	0x0098
                    00AF    259 _EA	=	0x00af
                    00AE    260 _EADC	=	0x00ae
                    00AD    261 _ET2	=	0x00ad
                    00AC    262 _ES	=	0x00ac
                    00AB    263 _ET1	=	0x00ab
                    00AA    264 _EX1	=	0x00aa
                    00A9    265 _ET0	=	0x00a9
                    00A8    266 _EX0	=	0x00a8
                    00B7    267 _RD	=	0x00b7
                    00B6    268 _WR	=	0x00b6
                    00B5    269 _T1	=	0x00b5
                    00B4    270 _T0	=	0x00b4
                    00B3    271 _INT1	=	0x00b3
                    00B2    272 _INT0	=	0x00b2
                    00B1    273 _TXD	=	0x00b1
                    00B0    274 _RXD	=	0x00b0
                    00BF    275 _PSI	=	0x00bf
                    00BE    276 _PADC	=	0x00be
                    00BD    277 _PT2	=	0x00bd
                    00BC    278 _PS	=	0x00bc
                    00BB    279 _PT1	=	0x00bb
                    00BA    280 _PX1	=	0x00ba
                    00B9    281 _PT0	=	0x00b9
                    00B8    282 _PX0	=	0x00b8
                    00C7    283 _PRE2	=	0x00c7
                    00C6    284 _PRE1	=	0x00c6
                    00C5    285 _PRE0	=	0x00c5
                    00C3    286 _WDR1	=	0x00c3
                    00C2    287 _WDR2	=	0x00c2
                    00C1    288 _WDS	=	0x00c1
                    00C0    289 _WDE	=	0x00c0
                    00CF    290 _TF2	=	0x00cf
                    00CE    291 _EXF2	=	0x00ce
                    00CD    292 _RCLK	=	0x00cd
                    00CC    293 _TCLK	=	0x00cc
                    00CB    294 _XEN	=	0x00cb
                    00CA    295 _TR2	=	0x00ca
                    00C9    296 _CNT2	=	0x00c9
                    00C8    297 _CAP2	=	0x00c8
                    00D7    298 _CY	=	0x00d7
                    00D6    299 _AC	=	0x00d6
                    00D5    300 _F0	=	0x00d5
                    00D4    301 _RS1	=	0x00d4
                    00D3    302 _RS0	=	0x00d3
                    00D2    303 _OV	=	0x00d2
                    00D1    304 _F1	=	0x00d1
                    00D0    305 _P	=	0x00d0
                    00DF    306 _ADCI	=	0x00df
                    00DE    307 _DMA	=	0x00de
                    00DD    308 _CCONV	=	0x00dd
                    00DC    309 _SCONV	=	0x00dc
                    00DB    310 _CS3	=	0x00db
                    00DA    311 _CS2	=	0x00da
                    00D9    312 _CS1	=	0x00d9
                    00D8    313 _CS0	=	0x00d8
                    00EF    314 _MDO	=	0x00ef
                    00EE    315 _MDE	=	0x00ee
                    00ED    316 _MCO	=	0x00ed
                    00EC    317 _MDI	=	0x00ec
                    00EB    318 _I2CM	=	0x00eb
                    00EA    319 _I2CRS	=	0x00ea
                    00E9    320 _I2CTX	=	0x00e9
                    00E8    321 _I2CI	=	0x00e8
                    00FF    322 _ISPI	=	0x00ff
                    00FE    323 _WCOL	=	0x00fe
                    00FD    324 _SPE	=	0x00fd
                    00FC    325 _SPIM	=	0x00fc
                    00FB    326 _CPOL	=	0x00fb
                    00FA    327 _CPHA	=	0x00fa
                    00F9    328 _SPR1	=	0x00f9
                    00F8    329 _SPR0	=	0x00f8
                            330 ;--------------------------------------------------------
                            331 ; overlayable register banks
                            332 ;--------------------------------------------------------
                            333 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     334 	.ds 8
                            335 ;--------------------------------------------------------
                            336 ; overlayable bit register bank
                            337 ;--------------------------------------------------------
                            338 	.area BIT_BANK	(REL,OVR,DATA)
   0021                     339 bits:
   0021                     340 	.ds 1
                    8000    341 	b0 = bits[0]
                    8100    342 	b1 = bits[1]
                    8200    343 	b2 = bits[2]
                    8300    344 	b3 = bits[3]
                    8400    345 	b4 = bits[4]
                    8500    346 	b5 = bits[5]
                    8600    347 	b6 = bits[6]
                    8700    348 	b7 = bits[7]
                            349 ;--------------------------------------------------------
                            350 ; internal ram data
                            351 ;--------------------------------------------------------
                            352 	.area DSEG    (DATA)
   0022                     353 _wFIFO::
   0022                     354 	.ds 18
   0034                     355 _rFIFO::
   0034                     356 	.ds 18
                            357 ;--------------------------------------------------------
                            358 ; overlayable items in internal ram 
                            359 ;--------------------------------------------------------
                            360 	.area OSEG    (OVR,DATA)
                            361 ;--------------------------------------------------------
                            362 ; indirectly addressable internal ram data
                            363 ;--------------------------------------------------------
                            364 	.area ISEG    (DATA)
                            365 ;--------------------------------------------------------
                            366 ; absolute internal ram data
                            367 ;--------------------------------------------------------
                            368 	.area IABS    (ABS,DATA)
                            369 	.area IABS    (ABS,DATA)
                            370 ;--------------------------------------------------------
                            371 ; bit data
                            372 ;--------------------------------------------------------
                            373 	.area BSEG    (BIT)
   0000                     374 _TRANSFER_NOW::
   0000                     375 	.ds 1
                            376 ;--------------------------------------------------------
                            377 ; paged external ram data
                            378 ;--------------------------------------------------------
                            379 	.area PSEG    (PAG,XDATA)
                            380 ;--------------------------------------------------------
                            381 ; external ram data
                            382 ;--------------------------------------------------------
                            383 	.area XSEG    (XDATA)
                            384 ;--------------------------------------------------------
                            385 ; absolute external ram data
                            386 ;--------------------------------------------------------
                            387 	.area XABS    (ABS,XDATA)
                            388 ;--------------------------------------------------------
                            389 ; external initialized ram data
                            390 ;--------------------------------------------------------
                            391 	.area XISEG   (XDATA)
                            392 	.area HOME    (CODE)
                            393 	.area GSINIT0 (CODE)
                            394 	.area GSINIT1 (CODE)
                            395 	.area GSINIT2 (CODE)
                            396 	.area GSINIT3 (CODE)
                            397 	.area GSINIT4 (CODE)
                            398 	.area GSINIT5 (CODE)
                            399 	.area GSINIT  (CODE)
                            400 	.area GSFINAL (CODE)
                            401 	.area CSEG    (CODE)
                            402 ;--------------------------------------------------------
                            403 ; global & static initialisations
                            404 ;--------------------------------------------------------
                            405 	.area HOME    (CODE)
                            406 	.area GSINIT  (CODE)
                            407 	.area GSFINAL (CODE)
                            408 	.area GSINIT  (CODE)
                            409 ;--------------------------------------------------------
                            410 ; Home
                            411 ;--------------------------------------------------------
                            412 	.area HOME    (CODE)
                            413 	.area HOME    (CODE)
                            414 ;--------------------------------------------------------
                            415 ; code
                            416 ;--------------------------------------------------------
                            417 	.area CSEG    (CODE)
                            418 ;------------------------------------------------------------
                            419 ;Allocation info for local variables in function 'init_sio'
                            420 ;------------------------------------------------------------
                            421 ;speed                     Allocated to registers 
                            422 ;------------------------------------------------------------
                            423 ;	SRC/async.c:20: void init_sio(unsigned char speed) {
                            424 ;	-----------------------------------------
                            425 ;	 function init_sio
                            426 ;	-----------------------------------------
   2194                     427 _init_sio:
                    0002    428 	ar2 = 0x02
                    0003    429 	ar3 = 0x03
                    0004    430 	ar4 = 0x04
                    0005    431 	ar5 = 0x05
                    0006    432 	ar6 = 0x06
                    0007    433 	ar7 = 0x07
                    0000    434 	ar0 = 0x00
                    0001    435 	ar1 = 0x01
   2194 85 82 8D            436 	mov	_TH1,dpl
                            437 ;	SRC/async.c:22: TMOD |= 0x20; 	//Таймер 1 будет работать в режиме autoreload
   2197 43 89 20            438 	orl	_TMOD,#0x20
                            439 ;	SRC/async.c:23: TCON |= 0x40;
   219A 43 88 40            440 	orl	_TCON,#0x40
                            441 ;	SRC/async.c:25: SCON = 0x50;  	//Настройки последовательного канала: Режим 1(8 бит данных,
   219D 75 98 50            442 	mov	_SCON,#0x50
                            443 ;	SRC/async.c:27: ES = 0;
   21A0 C2 AC               444 	clr	_ES
                            445 ;	SRC/async.c:28: wFIFO.RP = wFIFO.WP = rFIFO.RP = rFIFO.WP = 0;
   21A2 75 45 00            446 	mov	(_rFIFO + 0x0011),#0x00
   21A5 75 44 00            447 	mov	(_rFIFO + 0x0010),#0x00
   21A8 75 33 00            448 	mov	(_wFIFO + 0x0011),#0x00
   21AB 75 32 00            449 	mov	(_wFIFO + 0x0010),#0x00
                            450 ;	SRC/async.c:29: TRANSFER_NOW = 0;
   21AE C2 00               451 	clr	_TRANSFER_NOW
                            452 ;	SRC/async.c:30: SetVector(0x2023, (void *)SIO_ISR);
   21B0 7A 2E               453 	mov	r2,#_SIO_ISR
   21B2 7B 23               454 	mov	r3,#(_SIO_ISR >> 8)
   21B4 7C 80               455 	mov	r4,#0x80
   21B6 C0 02               456 	push	ar2
   21B8 C0 03               457 	push	ar3
   21BA C0 04               458 	push	ar4
   21BC 90 20 23            459 	mov	dptr,#0x2023
   21BF 12 24 BA            460 	lcall	_SetVector
   21C2 15 81               461 	dec	sp
   21C4 15 81               462 	dec	sp
   21C6 15 81               463 	dec	sp
   21C8 22                  464 	ret
                            465 ;------------------------------------------------------------
                            466 ;Allocation info for local variables in function 'PushFIFO'
                            467 ;------------------------------------------------------------
                            468 ;c                         Allocated to stack - offset -3
                            469 ;a                         Allocated to registers r2 r3 r4 
                            470 ;sloc0                     Allocated to stack - offset 1
                            471 ;------------------------------------------------------------
                            472 ;	SRC/async.c:34: __bit PushFIFO(struct FIFOb *a, unsigned char c) {
                            473 ;	-----------------------------------------
                            474 ;	 function PushFIFO
                            475 ;	-----------------------------------------
   21C9                     476 _PushFIFO:
   21C9 C0 10               477 	push	_bp
   21CB 85 81 10            478 	mov	_bp,sp
   21CE 05 81               479 	inc	sp
   21D0 05 81               480 	inc	sp
   21D2 05 81               481 	inc	sp
   21D4 AA 82               482 	mov	r2,dpl
   21D6 AB 83               483 	mov	r3,dph
   21D8 AC F0               484 	mov	r4,b
                            485 ;	SRC/async.c:35: if (!((a->RP == 0 && a->WP == FIFOSize - 1) || //если буфер не полон
   21DA 74 10               486 	mov	a,#0x10
   21DC 2A                  487 	add	a,r2
   21DD FD                  488 	mov	r5,a
   21DE E4                  489 	clr	a
   21DF 3B                  490 	addc	a,r3
   21E0 FE                  491 	mov	r6,a
   21E1 8C 07               492 	mov	ar7,r4
   21E3 8D 82               493 	mov	dpl,r5
   21E5 8E 83               494 	mov	dph,r6
   21E7 8F F0               495 	mov	b,r7
   21E9 12 27 44            496 	lcall	__gptrget
   21EC FD                  497 	mov	r5,a
   21ED 70 1F               498 	jnz	00107$
   21EF C0 05               499 	push	ar5
   21F1 74 11               500 	mov	a,#0x11
   21F3 2A                  501 	add	a,r2
   21F4 FE                  502 	mov	r6,a
   21F5 E4                  503 	clr	a
   21F6 3B                  504 	addc	a,r3
   21F7 FF                  505 	mov	r7,a
   21F8 8C 05               506 	mov	ar5,r4
   21FA 8E 82               507 	mov	dpl,r6
   21FC 8F 83               508 	mov	dph,r7
   21FE 8D F0               509 	mov	b,r5
   2200 12 27 44            510 	lcall	__gptrget
   2203 FE                  511 	mov	r6,a
   2204 BE 0F 05            512 	cjne	r6,#0x0F,00114$
   2207 D0 05               513 	pop	ar5
   2209 02 22 9A            514 	ljmp	00104$
   220C                     515 00114$:
   220C D0 05               516 	pop	ar5
   220E                     517 00107$:
                            518 ;	SRC/async.c:36: ((a->RP - a->WP) == 1))) 	{
   220E ED                  519 	mov	a,r5
   220F 33                  520 	rlc	a
   2210 95 E0               521 	subb	a,acc
   2212 FE                  522 	mov	r6,a
   2213 A8 10               523 	mov	r0,_bp
   2215 08                  524 	inc	r0
   2216 74 11               525 	mov	a,#0x11
   2218 2A                  526 	add	a,r2
   2219 F6                  527 	mov	@r0,a
   221A E4                  528 	clr	a
   221B 3B                  529 	addc	a,r3
   221C 08                  530 	inc	r0
   221D F6                  531 	mov	@r0,a
   221E 08                  532 	inc	r0
   221F A6 04               533 	mov	@r0,ar4
   2221 A8 10               534 	mov	r0,_bp
   2223 08                  535 	inc	r0
   2224 86 82               536 	mov	dpl,@r0
   2226 08                  537 	inc	r0
   2227 86 83               538 	mov	dph,@r0
   2229 08                  539 	inc	r0
   222A 86 F0               540 	mov	b,@r0
   222C 12 27 44            541 	lcall	__gptrget
   222F FF                  542 	mov	r7,a
   2230 C0 02               543 	push	ar2
   2232 C0 03               544 	push	ar3
   2234 C0 04               545 	push	ar4
   2236 EF                  546 	mov	a,r7
   2237 FA                  547 	mov	r2,a
   2238 33                  548 	rlc	a
   2239 95 E0               549 	subb	a,acc
   223B FB                  550 	mov	r3,a
   223C ED                  551 	mov	a,r5
   223D C3                  552 	clr	c
   223E 9A                  553 	subb	a,r2
   223F FD                  554 	mov	r5,a
   2240 EE                  555 	mov	a,r6
   2241 9B                  556 	subb	a,r3
   2242 FE                  557 	mov	r6,a
   2243 BD 01 0B            558 	cjne	r5,#0x01,00115$
   2246 BE 00 08            559 	cjne	r6,#0x00,00115$
   2249 D0 04               560 	pop	ar4
   224B D0 03               561 	pop	ar3
   224D D0 02               562 	pop	ar2
   224F 80 49               563 	sjmp	00104$
   2251                     564 00115$:
   2251 D0 04               565 	pop	ar4
   2253 D0 03               566 	pop	ar3
   2255 D0 02               567 	pop	ar2
                            568 ;	SRC/async.c:37: a->buf[a->WP] = c;
   2257 EF                  569 	mov	a,r7
   2258 2A                  570 	add	a,r2
   2259 FA                  571 	mov	r2,a
   225A E4                  572 	clr	a
   225B 3B                  573 	addc	a,r3
   225C FB                  574 	mov	r3,a
   225D 8A 82               575 	mov	dpl,r2
   225F 8B 83               576 	mov	dph,r3
   2261 8C F0               577 	mov	b,r4
   2263 A8 10               578 	mov	r0,_bp
   2265 18                  579 	dec	r0
   2266 18                  580 	dec	r0
   2267 18                  581 	dec	r0
   2268 E6                  582 	mov	a,@r0
   2269 12 27 09            583 	lcall	__gptrput
                            584 ;	SRC/async.c:38: if (++(a->WP) > FIFOSize - 1)
   226C 0F                  585 	inc	r7
   226D A8 10               586 	mov	r0,_bp
   226F 08                  587 	inc	r0
   2270 86 82               588 	mov	dpl,@r0
   2272 08                  589 	inc	r0
   2273 86 83               590 	mov	dph,@r0
   2275 08                  591 	inc	r0
   2276 86 F0               592 	mov	b,@r0
   2278 EF                  593 	mov	a,r7
   2279 12 27 09            594 	lcall	__gptrput
   227C C3                  595 	clr	c
   227D 74 8F               596 	mov	a,#(0x0F ^ 0x80)
   227F 8F F0               597 	mov	b,r7
   2281 63 F0 80            598 	xrl	b,#0x80
   2284 95 F0               599 	subb	a,b
   2286 50 0F               600 	jnc	00102$
                            601 ;	SRC/async.c:39: a->WP = 0; //проверка выхода указателя за границы буфера
   2288 A8 10               602 	mov	r0,_bp
   228A 08                  603 	inc	r0
   228B 86 82               604 	mov	dpl,@r0
   228D 08                  605 	inc	r0
   228E 86 83               606 	mov	dph,@r0
   2290 08                  607 	inc	r0
   2291 86 F0               608 	mov	b,@r0
   2293 E4                  609 	clr	a
   2294 12 27 09            610 	lcall	__gptrput
   2297                     611 00102$:
                            612 ;	SRC/async.c:40: return 1;
   2297 D3                  613 	setb	c
   2298 80 01               614 	sjmp	00108$
   229A                     615 00104$:
                            616 ;	SRC/async.c:42: return 0;
   229A C3                  617 	clr	c
   229B                     618 00108$:
   229B 85 10 81            619 	mov	sp,_bp
   229E D0 10               620 	pop	_bp
   22A0 22                  621 	ret
                            622 ;------------------------------------------------------------
                            623 ;Allocation info for local variables in function 'PopFIFO'
                            624 ;------------------------------------------------------------
                            625 ;a                         Allocated to registers r2 r3 r4 
                            626 ;c                         Allocated to registers r2 
                            627 ;sloc0                     Allocated to stack - offset 1
                            628 ;------------------------------------------------------------
                            629 ;	SRC/async.c:46: unsigned char PopFIFO(struct FIFOb *a) {
                            630 ;	-----------------------------------------
                            631 ;	 function PopFIFO
                            632 ;	-----------------------------------------
   22A1                     633 _PopFIFO:
   22A1 C0 10               634 	push	_bp
   22A3 85 81 10            635 	mov	_bp,sp
   22A6 05 81               636 	inc	sp
   22A8 05 81               637 	inc	sp
   22AA 05 81               638 	inc	sp
   22AC AA 82               639 	mov	r2,dpl
   22AE AB 83               640 	mov	r3,dph
   22B0 AC F0               641 	mov	r4,b
                            642 ;	SRC/async.c:48: if (a->WP == a->RP)
   22B2 74 11               643 	mov	a,#0x11
   22B4 2A                  644 	add	a,r2
   22B5 FD                  645 	mov	r5,a
   22B6 E4                  646 	clr	a
   22B7 3B                  647 	addc	a,r3
   22B8 FE                  648 	mov	r6,a
   22B9 8C 07               649 	mov	ar7,r4
   22BB 8D 82               650 	mov	dpl,r5
   22BD 8E 83               651 	mov	dph,r6
   22BF 8F F0               652 	mov	b,r7
   22C1 12 27 44            653 	lcall	__gptrget
   22C4 FD                  654 	mov	r5,a
   22C5 A8 10               655 	mov	r0,_bp
   22C7 08                  656 	inc	r0
   22C8 74 10               657 	mov	a,#0x10
   22CA 2A                  658 	add	a,r2
   22CB F6                  659 	mov	@r0,a
   22CC E4                  660 	clr	a
   22CD 3B                  661 	addc	a,r3
   22CE 08                  662 	inc	r0
   22CF F6                  663 	mov	@r0,a
   22D0 08                  664 	inc	r0
   22D1 A6 04               665 	mov	@r0,ar4
   22D3 A8 10               666 	mov	r0,_bp
   22D5 08                  667 	inc	r0
   22D6 86 82               668 	mov	dpl,@r0
   22D8 08                  669 	inc	r0
   22D9 86 83               670 	mov	dph,@r0
   22DB 08                  671 	inc	r0
   22DC 86 F0               672 	mov	b,@r0
   22DE 12 27 44            673 	lcall	__gptrget
   22E1 FE                  674 	mov	r6,a
   22E2 ED                  675 	mov	a,r5
   22E3 B5 06 05            676 	cjne	a,ar6,00102$
                            677 ;	SRC/async.c:49: return 0;      //если буфер пуст, возвращаем 0
   22E6 75 82 00            678 	mov	dpl,#0x00
   22E9 80 3D               679 	sjmp	00105$
   22EB                     680 00102$:
                            681 ;	SRC/async.c:50: c = a->buf[a->RP]; //извлекаем элемент с индексом RP
   22EB EE                  682 	mov	a,r6
   22EC 2A                  683 	add	a,r2
   22ED FA                  684 	mov	r2,a
   22EE E4                  685 	clr	a
   22EF 3B                  686 	addc	a,r3
   22F0 FB                  687 	mov	r3,a
   22F1 8A 82               688 	mov	dpl,r2
   22F3 8B 83               689 	mov	dph,r3
   22F5 8C F0               690 	mov	b,r4
   22F7 12 27 44            691 	lcall	__gptrget
   22FA FA                  692 	mov	r2,a
                            693 ;	SRC/async.c:51: if (++(a->RP) > FIFOSize - 1)
   22FB 0E                  694 	inc	r6
   22FC A8 10               695 	mov	r0,_bp
   22FE 08                  696 	inc	r0
   22FF 86 82               697 	mov	dpl,@r0
   2301 08                  698 	inc	r0
   2302 86 83               699 	mov	dph,@r0
   2304 08                  700 	inc	r0
   2305 86 F0               701 	mov	b,@r0
   2307 EE                  702 	mov	a,r6
   2308 12 27 09            703 	lcall	__gptrput
   230B C3                  704 	clr	c
   230C 74 8F               705 	mov	a,#(0x0F ^ 0x80)
   230E 8E F0               706 	mov	b,r6
   2310 63 F0 80            707 	xrl	b,#0x80
   2313 95 F0               708 	subb	a,b
   2315 50 0F               709 	jnc	00104$
                            710 ;	SRC/async.c:52: a->RP = 0; //проверка выхода указателя за границы буфера
   2317 A8 10               711 	mov	r0,_bp
   2319 08                  712 	inc	r0
   231A 86 82               713 	mov	dpl,@r0
   231C 08                  714 	inc	r0
   231D 86 83               715 	mov	dph,@r0
   231F 08                  716 	inc	r0
   2320 86 F0               717 	mov	b,@r0
   2322 E4                  718 	clr	a
   2323 12 27 09            719 	lcall	__gptrput
   2326                     720 00104$:
                            721 ;	SRC/async.c:53: return c;
   2326 8A 82               722 	mov	dpl,r2
   2328                     723 00105$:
   2328 85 10 81            724 	mov	sp,_bp
   232B D0 10               725 	pop	_bp
   232D 22                  726 	ret
                            727 ;------------------------------------------------------------
                            728 ;Allocation info for local variables in function 'SIO_ISR'
                            729 ;------------------------------------------------------------
                            730 ;c                         Allocated to registers r2 
                            731 ;------------------------------------------------------------
                            732 ;	SRC/async.c:57: void SIO_ISR(void) __interrupt(4) {
                            733 ;	-----------------------------------------
                            734 ;	 function SIO_ISR
                            735 ;	-----------------------------------------
   232E                     736 _SIO_ISR:
   232E C0 21               737 	push	bits
   2330 C0 E0               738 	push	acc
   2332 C0 F0               739 	push	b
   2334 C0 82               740 	push	dpl
   2336 C0 83               741 	push	dph
   2338 C0 02               742 	push	(0+2)
   233A C0 03               743 	push	(0+3)
   233C C0 04               744 	push	(0+4)
   233E C0 05               745 	push	(0+5)
   2340 C0 06               746 	push	(0+6)
   2342 C0 07               747 	push	(0+7)
   2344 C0 00               748 	push	(0+0)
   2346 C0 01               749 	push	(0+1)
   2348 C0 D0               750 	push	psw
   234A 75 D0 00            751 	mov	psw,#0x00
                            752 ;	SRC/async.c:59: if (TI) {
   234D 30 99 18            753 	jnb	_TI,00105$
                            754 ;	SRC/async.c:60: c = PopFIFO(&wFIFO);
   2350 90 00 22            755 	mov	dptr,#_wFIFO
   2353 75 F0 40            756 	mov	b,#0x40
   2356 12 22 A1            757 	lcall	_PopFIFO
                            758 ;	SRC/async.c:61: if (c) { //если буфер непуст
   2359 E5 82               759 	mov	a,dpl
   235B FA                  760 	mov	r2,a
   235C 60 06               761 	jz	00102$
                            762 ;	SRC/async.c:62: TRANSFER_NOW = 1;   //происходит передача
   235E D2 00               763 	setb	_TRANSFER_NOW
                            764 ;	SRC/async.c:63: SBUF = c;
   2360 8A 99               765 	mov	_SBUF,r2
   2362 80 02               766 	sjmp	00103$
   2364                     767 00102$:
                            768 ;	SRC/async.c:66: TRANSFER_NOW = 0; //завершаем цикл передачи - больше нечего передавать
   2364 C2 00               769 	clr	_TRANSFER_NOW
   2366                     770 00103$:
                            771 ;	SRC/async.c:67: TI = 0;
   2366 C2 99               772 	clr	_TI
   2368                     773 00105$:
                            774 ;	SRC/async.c:69: if (RI) {
   2368 30 98 0F            775 	jnb	_RI,00108$
                            776 ;	SRC/async.c:70: PushFIFO(&rFIFO, SBUF);
   236B C0 99               777 	push	_SBUF
   236D 90 00 34            778 	mov	dptr,#_rFIFO
   2370 75 F0 40            779 	mov	b,#0x40
   2373 12 21 C9            780 	lcall	_PushFIFO
   2376 15 81               781 	dec	sp
                            782 ;	SRC/async.c:71: RI = 0;
   2378 C2 98               783 	clr	_RI
   237A                     784 00108$:
   237A D0 D0               785 	pop	psw
   237C D0 01               786 	pop	(0+1)
   237E D0 00               787 	pop	(0+0)
   2380 D0 07               788 	pop	(0+7)
   2382 D0 06               789 	pop	(0+6)
   2384 D0 05               790 	pop	(0+5)
   2386 D0 04               791 	pop	(0+4)
   2388 D0 03               792 	pop	(0+3)
   238A D0 02               793 	pop	(0+2)
   238C D0 83               794 	pop	dph
   238E D0 82               795 	pop	dpl
   2390 D0 F0               796 	pop	b
   2392 D0 E0               797 	pop	acc
   2394 D0 21               798 	pop	bits
   2396 32                  799 	reti
                            800 ;------------------------------------------------------------
                            801 ;Allocation info for local variables in function 'WriteUART'
                            802 ;------------------------------------------------------------
                            803 ;c                         Allocated to registers r2 
                            804 ;------------------------------------------------------------
                            805 ;	SRC/async.c:77: __bit WriteUART(unsigned char c) {
                            806 ;	-----------------------------------------
                            807 ;	 function WriteUART
                            808 ;	-----------------------------------------
   2397                     809 _WriteUART:
   2397 AA 82               810 	mov	r2,dpl
                            811 ;	SRC/async.c:78: ES = 0;        //отключаем прерывание от UART
   2399 C2 AC               812 	clr	_ES
                            813 ;	SRC/async.c:79: if (PushFIFO(&wFIFO, c)) {//успешное добавление в очередь
   239B C0 02               814 	push	ar2
   239D 90 00 22            815 	mov	dptr,#_wFIFO
   23A0 75 F0 40            816 	mov	b,#0x40
   23A3 12 21 C9            817 	lcall	_PushFIFO
   23A6 15 81               818 	dec	sp
   23A8 92 08               819 	mov	b0,c
   23AA 50 09               820 	jnc	00104$
                            821 ;	SRC/async.c:80: ES = 1;
   23AC D2 AC               822 	setb	_ES
                            823 ;	SRC/async.c:81: if (!TRANSFER_NOW)
   23AE 20 00 02            824 	jb	_TRANSFER_NOW,00102$
                            825 ;	SRC/async.c:82: TI = 1;  //если цикл передачи не начат, искусственно вызываем
   23B1 D2 99               826 	setb	_TI
   23B3                     827 00102$:
                            828 ;	SRC/async.c:84: return 1;
   23B3 D3                  829 	setb	c
   23B4 22                  830 	ret
   23B5                     831 00104$:
                            832 ;	SRC/async.c:86: ES = 1;
   23B5 D2 AC               833 	setb	_ES
                            834 ;	SRC/async.c:87: return 0; //если буфер полон
   23B7 C3                  835 	clr	c
   23B8 22                  836 	ret
                            837 ;------------------------------------------------------------
                            838 ;Allocation info for local variables in function 'PrintString'
                            839 ;------------------------------------------------------------
                            840 ;str                       Allocated to registers r2 r3 r4 
                            841 ;------------------------------------------------------------
                            842 ;	SRC/async.c:91: void PrintString(const unsigned char *str) {
                            843 ;	-----------------------------------------
                            844 ;	 function PrintString
                            845 ;	-----------------------------------------
   23B9                     846 _PrintString:
   23B9 AA 82               847 	mov	r2,dpl
   23BB AB 83               848 	mov	r3,dph
   23BD AC F0               849 	mov	r4,b
                            850 ;	SRC/async.c:92: while (*str != 0) {
   23BF                     851 00101$:
   23BF 8A 82               852 	mov	dpl,r2
   23C1 8B 83               853 	mov	dph,r3
   23C3 8C F0               854 	mov	b,r4
   23C5 12 27 44            855 	lcall	__gptrget
   23C8 FD                  856 	mov	r5,a
   23C9 60 18               857 	jz	00104$
                            858 ;	SRC/async.c:93: WriteUART(*(str++));
   23CB 0A                  859 	inc	r2
   23CC BA 00 01            860 	cjne	r2,#0x00,00110$
   23CF 0B                  861 	inc	r3
   23D0                     862 00110$:
   23D0 8D 82               863 	mov	dpl,r5
   23D2 C0 02               864 	push	ar2
   23D4 C0 03               865 	push	ar3
   23D6 C0 04               866 	push	ar4
   23D8 12 23 97            867 	lcall	_WriteUART
   23DB D0 04               868 	pop	ar4
   23DD D0 03               869 	pop	ar3
   23DF D0 02               870 	pop	ar2
   23E1 80 DC               871 	sjmp	00101$
   23E3                     872 00104$:
   23E3 22                  873 	ret
                            874 ;------------------------------------------------------------
                            875 ;Allocation info for local variables in function 'ReadUART'
                            876 ;------------------------------------------------------------
                            877 ;c                         Allocated to registers 
                            878 ;------------------------------------------------------------
                            879 ;	SRC/async.c:99: unsigned char ReadUART(void) {
                            880 ;	-----------------------------------------
                            881 ;	 function ReadUART
                            882 ;	-----------------------------------------
   23E4                     883 _ReadUART:
                            884 ;	SRC/async.c:101: ES = 0;
   23E4 C2 AC               885 	clr	_ES
                            886 ;	SRC/async.c:102: c = PopFIFO(&rFIFO);
   23E6 90 00 34            887 	mov	dptr,#_rFIFO
   23E9 75 F0 40            888 	mov	b,#0x40
   23EC 12 22 A1            889 	lcall	_PopFIFO
                            890 ;	SRC/async.c:103: ES = 1;
   23EF D2 AC               891 	setb	_ES
                            892 ;	SRC/async.c:104: return c;
   23F1 22                  893 	ret
                            894 	.area CSEG    (CODE)
                            895 	.area CONST   (CODE)
                            896 	.area XINIT   (CODE)
                            897 	.area CABS    (ABS,CODE)
