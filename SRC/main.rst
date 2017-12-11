                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (UNIX)
                              4 ; This file was generated Wed Nov 15 13:07:46 2017
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _Converter
                             14 	.globl _SequenceWriter
                             15 	.globl _TypeParser
                             16 	.globl _SPR0
                             17 	.globl _SPR1
                             18 	.globl _CPHA
                             19 	.globl _CPOL
                             20 	.globl _SPIM
                             21 	.globl _SPE
                             22 	.globl _WCOL
                             23 	.globl _ISPI
                             24 	.globl _I2CI
                             25 	.globl _I2CTX
                             26 	.globl _I2CRS
                             27 	.globl _I2CM
                             28 	.globl _MDI
                             29 	.globl _MCO
                             30 	.globl _MDE
                             31 	.globl _MDO
                             32 	.globl _CS0
                             33 	.globl _CS1
                             34 	.globl _CS2
                             35 	.globl _CS3
                             36 	.globl _SCONV
                             37 	.globl _CCONV
                             38 	.globl _DMA
                             39 	.globl _ADCI
                             40 	.globl _P
                             41 	.globl _F1
                             42 	.globl _OV
                             43 	.globl _RS0
                             44 	.globl _RS1
                             45 	.globl _F0
                             46 	.globl _AC
                             47 	.globl _CY
                             48 	.globl _CAP2
                             49 	.globl _CNT2
                             50 	.globl _TR2
                             51 	.globl _XEN
                             52 	.globl _TCLK
                             53 	.globl _RCLK
                             54 	.globl _EXF2
                             55 	.globl _TF2
                             56 	.globl _WDE
                             57 	.globl _WDS
                             58 	.globl _WDR2
                             59 	.globl _WDR1
                             60 	.globl _PRE0
                             61 	.globl _PRE1
                             62 	.globl _PRE2
                             63 	.globl _PX0
                             64 	.globl _PT0
                             65 	.globl _PX1
                             66 	.globl _PT1
                             67 	.globl _PS
                             68 	.globl _PT2
                             69 	.globl _PADC
                             70 	.globl _PSI
                             71 	.globl _RXD
                             72 	.globl _TXD
                             73 	.globl _INT0
                             74 	.globl _INT1
                             75 	.globl _T0
                             76 	.globl _T1
                             77 	.globl _WR
                             78 	.globl _RD
                             79 	.globl _EX0
                             80 	.globl _ET0
                             81 	.globl _EX1
                             82 	.globl _ET1
                             83 	.globl _ES
                             84 	.globl _ET2
                             85 	.globl _EADC
                             86 	.globl _EA
                             87 	.globl _RI
                             88 	.globl _TI
                             89 	.globl _RB8
                             90 	.globl _TB8
                             91 	.globl _REN
                             92 	.globl _SM2
                             93 	.globl _SM1
                             94 	.globl _SM0
                             95 	.globl _T2
                             96 	.globl _T2EX
                             97 	.globl _IT0
                             98 	.globl _IE0
                             99 	.globl _IT1
                            100 	.globl _IE1
                            101 	.globl _TR0
                            102 	.globl _TF0
                            103 	.globl _TR1
                            104 	.globl _TF1
                            105 	.globl _DACCON
                            106 	.globl _DAC1H
                            107 	.globl _DAC1L
                            108 	.globl _DAC0H
                            109 	.globl _DAC0L
                            110 	.globl _SPICON
                            111 	.globl _SPIDAT
                            112 	.globl _ADCCON3
                            113 	.globl _ADCGAINH
                            114 	.globl _ADCGAINL
                            115 	.globl _ADCOFSH
                            116 	.globl _ADCOFSL
                            117 	.globl _B
                            118 	.globl _ADCCON1
                            119 	.globl _I2CCON
                            120 	.globl _ACC
                            121 	.globl _PSMCON
                            122 	.globl _ADCDATAH
                            123 	.globl _ADCDATAL
                            124 	.globl _ADCCON2
                            125 	.globl _DMAP
                            126 	.globl _DMAH
                            127 	.globl _DMAL
                            128 	.globl _PSW
                            129 	.globl _TH2
                            130 	.globl _TL2
                            131 	.globl _RCAP2H
                            132 	.globl _RCAP2L
                            133 	.globl _T2CON
                            134 	.globl _EADRL
                            135 	.globl _WDCON
                            136 	.globl _EDATA4
                            137 	.globl _EDATA3
                            138 	.globl _EDATA2
                            139 	.globl _EDATA1
                            140 	.globl _ETIM3
                            141 	.globl _ETIM2
                            142 	.globl _ETIM1
                            143 	.globl _ECON
                            144 	.globl _IP
                            145 	.globl _P3
                            146 	.globl _IE2
                            147 	.globl _IE
                            148 	.globl _P2
                            149 	.globl _I2CADD
                            150 	.globl _I2CDAT
                            151 	.globl _SBUF
                            152 	.globl _SCON
                            153 	.globl _P1
                            154 	.globl _TH1
                            155 	.globl _TH0
                            156 	.globl _TL1
                            157 	.globl _TL0
                            158 	.globl _TMOD
                            159 	.globl _TCON
                            160 	.globl _PCON
                            161 	.globl _DPP
                            162 	.globl _DPH
                            163 	.globl _DPL
                            164 	.globl _SP
                            165 	.globl _P0
                            166 	.globl _is_data
                            167 	.globl _status
                            168 	.globl _c
                            169 	.globl _vall
                            170 ;--------------------------------------------------------
                            171 ; special function registers
                            172 ;--------------------------------------------------------
                            173 	.area RSEG    (DATA)
                    0080    174 _P0	=	0x0080
                    0081    175 _SP	=	0x0081
                    0082    176 _DPL	=	0x0082
                    0083    177 _DPH	=	0x0083
                    0084    178 _DPP	=	0x0084
                    0087    179 _PCON	=	0x0087
                    0088    180 _TCON	=	0x0088
                    0089    181 _TMOD	=	0x0089
                    008A    182 _TL0	=	0x008a
                    008B    183 _TL1	=	0x008b
                    008C    184 _TH0	=	0x008c
                    008D    185 _TH1	=	0x008d
                    0090    186 _P1	=	0x0090
                    0098    187 _SCON	=	0x0098
                    0099    188 _SBUF	=	0x0099
                    009A    189 _I2CDAT	=	0x009a
                    009B    190 _I2CADD	=	0x009b
                    00A0    191 _P2	=	0x00a0
                    00A8    192 _IE	=	0x00a8
                    00A9    193 _IE2	=	0x00a9
                    00B0    194 _P3	=	0x00b0
                    00B8    195 _IP	=	0x00b8
                    00B9    196 _ECON	=	0x00b9
                    00BA    197 _ETIM1	=	0x00ba
                    00BB    198 _ETIM2	=	0x00bb
                    00C4    199 _ETIM3	=	0x00c4
                    00BC    200 _EDATA1	=	0x00bc
                    00BD    201 _EDATA2	=	0x00bd
                    00BE    202 _EDATA3	=	0x00be
                    00BF    203 _EDATA4	=	0x00bf
                    00C0    204 _WDCON	=	0x00c0
                    00C6    205 _EADRL	=	0x00c6
                    00C8    206 _T2CON	=	0x00c8
                    00CA    207 _RCAP2L	=	0x00ca
                    00CB    208 _RCAP2H	=	0x00cb
                    00CC    209 _TL2	=	0x00cc
                    00CD    210 _TH2	=	0x00cd
                    00D0    211 _PSW	=	0x00d0
                    00D2    212 _DMAL	=	0x00d2
                    00D3    213 _DMAH	=	0x00d3
                    00D4    214 _DMAP	=	0x00d4
                    00D8    215 _ADCCON2	=	0x00d8
                    00D9    216 _ADCDATAL	=	0x00d9
                    00DA    217 _ADCDATAH	=	0x00da
                    00DF    218 _PSMCON	=	0x00df
                    00E0    219 _ACC	=	0x00e0
                    00E8    220 _I2CCON	=	0x00e8
                    00EF    221 _ADCCON1	=	0x00ef
                    00F0    222 _B	=	0x00f0
                    00F1    223 _ADCOFSL	=	0x00f1
                    00F2    224 _ADCOFSH	=	0x00f2
                    00F3    225 _ADCGAINL	=	0x00f3
                    00F4    226 _ADCGAINH	=	0x00f4
                    00F5    227 _ADCCON3	=	0x00f5
                    00F7    228 _SPIDAT	=	0x00f7
                    00F8    229 _SPICON	=	0x00f8
                    00F9    230 _DAC0L	=	0x00f9
                    00FA    231 _DAC0H	=	0x00fa
                    00FB    232 _DAC1L	=	0x00fb
                    00FC    233 _DAC1H	=	0x00fc
                    00FD    234 _DACCON	=	0x00fd
                            235 ;--------------------------------------------------------
                            236 ; special function bits
                            237 ;--------------------------------------------------------
                            238 	.area RSEG    (DATA)
                    008F    239 _TF1	=	0x008f
                    008E    240 _TR1	=	0x008e
                    008D    241 _TF0	=	0x008d
                    008C    242 _TR0	=	0x008c
                    008B    243 _IE1	=	0x008b
                    008A    244 _IT1	=	0x008a
                    0089    245 _IE0	=	0x0089
                    0088    246 _IT0	=	0x0088
                    0091    247 _T2EX	=	0x0091
                    0090    248 _T2	=	0x0090
                    009F    249 _SM0	=	0x009f
                    009E    250 _SM1	=	0x009e
                    009D    251 _SM2	=	0x009d
                    009C    252 _REN	=	0x009c
                    009B    253 _TB8	=	0x009b
                    009A    254 _RB8	=	0x009a
                    0099    255 _TI	=	0x0099
                    0098    256 _RI	=	0x0098
                    00AF    257 _EA	=	0x00af
                    00AE    258 _EADC	=	0x00ae
                    00AD    259 _ET2	=	0x00ad
                    00AC    260 _ES	=	0x00ac
                    00AB    261 _ET1	=	0x00ab
                    00AA    262 _EX1	=	0x00aa
                    00A9    263 _ET0	=	0x00a9
                    00A8    264 _EX0	=	0x00a8
                    00B7    265 _RD	=	0x00b7
                    00B6    266 _WR	=	0x00b6
                    00B5    267 _T1	=	0x00b5
                    00B4    268 _T0	=	0x00b4
                    00B3    269 _INT1	=	0x00b3
                    00B2    270 _INT0	=	0x00b2
                    00B1    271 _TXD	=	0x00b1
                    00B0    272 _RXD	=	0x00b0
                    00BF    273 _PSI	=	0x00bf
                    00BE    274 _PADC	=	0x00be
                    00BD    275 _PT2	=	0x00bd
                    00BC    276 _PS	=	0x00bc
                    00BB    277 _PT1	=	0x00bb
                    00BA    278 _PX1	=	0x00ba
                    00B9    279 _PT0	=	0x00b9
                    00B8    280 _PX0	=	0x00b8
                    00C7    281 _PRE2	=	0x00c7
                    00C6    282 _PRE1	=	0x00c6
                    00C5    283 _PRE0	=	0x00c5
                    00C3    284 _WDR1	=	0x00c3
                    00C2    285 _WDR2	=	0x00c2
                    00C1    286 _WDS	=	0x00c1
                    00C0    287 _WDE	=	0x00c0
                    00CF    288 _TF2	=	0x00cf
                    00CE    289 _EXF2	=	0x00ce
                    00CD    290 _RCLK	=	0x00cd
                    00CC    291 _TCLK	=	0x00cc
                    00CB    292 _XEN	=	0x00cb
                    00CA    293 _TR2	=	0x00ca
                    00C9    294 _CNT2	=	0x00c9
                    00C8    295 _CAP2	=	0x00c8
                    00D7    296 _CY	=	0x00d7
                    00D6    297 _AC	=	0x00d6
                    00D5    298 _F0	=	0x00d5
                    00D4    299 _RS1	=	0x00d4
                    00D3    300 _RS0	=	0x00d3
                    00D2    301 _OV	=	0x00d2
                    00D1    302 _F1	=	0x00d1
                    00D0    303 _P	=	0x00d0
                    00DF    304 _ADCI	=	0x00df
                    00DE    305 _DMA	=	0x00de
                    00DD    306 _CCONV	=	0x00dd
                    00DC    307 _SCONV	=	0x00dc
                    00DB    308 _CS3	=	0x00db
                    00DA    309 _CS2	=	0x00da
                    00D9    310 _CS1	=	0x00d9
                    00D8    311 _CS0	=	0x00d8
                    00EF    312 _MDO	=	0x00ef
                    00EE    313 _MDE	=	0x00ee
                    00ED    314 _MCO	=	0x00ed
                    00EC    315 _MDI	=	0x00ec
                    00EB    316 _I2CM	=	0x00eb
                    00EA    317 _I2CRS	=	0x00ea
                    00E9    318 _I2CTX	=	0x00e9
                    00E8    319 _I2CI	=	0x00e8
                    00FF    320 _ISPI	=	0x00ff
                    00FE    321 _WCOL	=	0x00fe
                    00FD    322 _SPE	=	0x00fd
                    00FC    323 _SPIM	=	0x00fc
                    00FB    324 _CPOL	=	0x00fb
                    00FA    325 _CPHA	=	0x00fa
                    00F9    326 _SPR1	=	0x00f9
                    00F8    327 _SPR0	=	0x00f8
                            328 ;--------------------------------------------------------
                            329 ; overlayable register banks
                            330 ;--------------------------------------------------------
                            331 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     332 	.ds 8
                            333 ;--------------------------------------------------------
                            334 ; internal ram data
                            335 ;--------------------------------------------------------
                            336 	.area DSEG    (DATA)
   000C                     337 _vall::
   000C                     338 	.ds 2
   000E                     339 _c::
   000E                     340 	.ds 1
   000F                     341 _status::
   000F                     342 	.ds 1
                            343 ;--------------------------------------------------------
                            344 ; overlayable items in internal ram 
                            345 ;--------------------------------------------------------
                            346 	.area OSEG    (OVR,DATA)
                            347 ;--------------------------------------------------------
                            348 ; Stack segment in internal ram 
                            349 ;--------------------------------------------------------
                            350 	.area	SSEG	(DATA)
   0046                     351 __start__stack:
   0046                     352 	.ds	1
                            353 
                            354 ;--------------------------------------------------------
                            355 ; indirectly addressable internal ram data
                            356 ;--------------------------------------------------------
                            357 	.area ISEG    (DATA)
                            358 ;--------------------------------------------------------
                            359 ; absolute internal ram data
                            360 ;--------------------------------------------------------
                            361 	.area IABS    (ABS,DATA)
                            362 	.area IABS    (ABS,DATA)
                            363 ;--------------------------------------------------------
                            364 ; bit data
                            365 ;--------------------------------------------------------
                            366 	.area BSEG    (BIT)
   0001                     367 _is_data::
   0001                     368 	.ds 1
                            369 ;--------------------------------------------------------
                            370 ; paged external ram data
                            371 ;--------------------------------------------------------
                            372 	.area PSEG    (PAG,XDATA)
                            373 ;--------------------------------------------------------
                            374 ; external ram data
                            375 ;--------------------------------------------------------
                            376 	.area XSEG    (XDATA)
                            377 ;--------------------------------------------------------
                            378 ; absolute external ram data
                            379 ;--------------------------------------------------------
                            380 	.area XABS    (ABS,XDATA)
                            381 ;--------------------------------------------------------
                            382 ; external initialized ram data
                            383 ;--------------------------------------------------------
                            384 	.area XISEG   (XDATA)
                            385 	.area HOME    (CODE)
                            386 	.area GSINIT0 (CODE)
                            387 	.area GSINIT1 (CODE)
                            388 	.area GSINIT2 (CODE)
                            389 	.area GSINIT3 (CODE)
                            390 	.area GSINIT4 (CODE)
                            391 	.area GSINIT5 (CODE)
                            392 	.area GSINIT  (CODE)
                            393 	.area GSFINAL (CODE)
                            394 	.area CSEG    (CODE)
                            395 ;--------------------------------------------------------
                            396 ; interrupt vector 
                            397 ;--------------------------------------------------------
                            398 	.area HOME    (CODE)
   2100                     399 __interrupt_vect:
   2100 02 21 2B            400 	ljmp	__sdcc_gsinit_startup
   2103 32                  401 	reti
   2104                     402 	.ds	7
   210B 32                  403 	reti
   210C                     404 	.ds	7
   2113 32                  405 	reti
   2114                     406 	.ds	7
   211B 32                  407 	reti
   211C                     408 	.ds	7
   2123 02 23 2E            409 	ljmp	_SIO_ISR
                            410 ;--------------------------------------------------------
                            411 ; global & static initialisations
                            412 ;--------------------------------------------------------
                            413 	.area HOME    (CODE)
                            414 	.area GSINIT  (CODE)
                            415 	.area GSFINAL (CODE)
                            416 	.area GSINIT  (CODE)
                            417 	.globl __sdcc_gsinit_startup
                            418 	.globl __sdcc_program_startup
                            419 	.globl __start__stack
                            420 	.globl __mcs51_genXINIT
                            421 	.globl __mcs51_genXRAMCLEAR
                            422 	.globl __mcs51_genRAMCLEAR
                            423 ;	SRC/main.c:34: unsigned int vall = 0;
   2184 E4                  424 	clr	a
   2185 F5 0C               425 	mov	_vall,a
   2187 F5 0D               426 	mov	(_vall + 1),a
                            427 ;	SRC/main.c:36: unsigned char c = 0, status = 0;
   2189 75 0E 00            428 	mov	_c,#0x00
                            429 ;	SRC/main.c:36: void Converter(){
   218C 75 0F 00            430 	mov	_status,#0x00
                            431 ;	SRC/main.c:35: __bit is_data = 0;
   218F C2 01               432 	clr	_is_data
                            433 	.area GSFINAL (CODE)
   2191 02 21 26            434 	ljmp	__sdcc_program_startup
                            435 ;--------------------------------------------------------
                            436 ; Home
                            437 ;--------------------------------------------------------
                            438 	.area HOME    (CODE)
                            439 	.area HOME    (CODE)
   2126                     440 __sdcc_program_startup:
   2126 12 26 CD            441 	lcall	_main
                            442 ;	return from main will lock up
   2129 80 FE               443 	sjmp .
                            444 ;--------------------------------------------------------
                            445 ; code
                            446 ;--------------------------------------------------------
                            447 	.area CSEG    (CODE)
                            448 ;------------------------------------------------------------
                            449 ;Allocation info for local variables in function 'TypeParser'
                            450 ;------------------------------------------------------------
                            451 ;vall                      Allocated to registers r2 
                            452 ;------------------------------------------------------------
                            453 ;	SRC/main.c:11: unsigned char TypeParser(unsigned char vall){
                            454 ;	-----------------------------------------
                            455 ;	 function TypeParser
                            456 ;	-----------------------------------------
   252D                     457 _TypeParser:
                    0002    458 	ar2 = 0x02
                    0003    459 	ar3 = 0x03
                    0004    460 	ar4 = 0x04
                    0005    461 	ar5 = 0x05
                    0006    462 	ar6 = 0x06
                    0007    463 	ar7 = 0x07
                    0000    464 	ar0 = 0x00
                    0001    465 	ar1 = 0x01
                            466 ;	SRC/main.c:12: if(vall == 0)
   252D E5 82               467 	mov	a,dpl
   252F FA                  468 	mov	r2,a
                            469 ;	SRC/main.c:13: return No_data;
   2530 70 03               470 	jnz	00102$
   2532 F5 82               471 	mov	dpl,a
   2534 22                  472 	ret
   2535                     473 00102$:
                            474 ;	SRC/main.c:14: if(vall >= '0' && vall <= '9')
   2535 BA 30 00            475 	cjne	r2,#0x30,00112$
   2538                     476 00112$:
   2538 40 09               477 	jc	00104$
   253A EA                  478 	mov	a,r2
   253B 24 C6               479 	add	a,#0xff - 0x39
   253D 40 04               480 	jc	00104$
                            481 ;	SRC/main.c:15: return Is_a_number;
   253F 75 82 01            482 	mov	dpl,#0x01
                            483 ;	SRC/main.c:16: return Not_a_Number;
   2542 22                  484 	ret
   2543                     485 00104$:
   2543 75 82 02            486 	mov	dpl,#0x02
   2546 22                  487 	ret
                            488 ;------------------------------------------------------------
                            489 ;Allocation info for local variables in function 'SequenceWriter'
                            490 ;------------------------------------------------------------
                            491 ;vall_s                    Allocated to registers r2 
                            492 ;------------------------------------------------------------
                            493 ;	SRC/main.c:19: void SequenceWriter(){
                            494 ;	-----------------------------------------
                            495 ;	 function SequenceWriter
                            496 ;	-----------------------------------------
   2547                     497 _SequenceWriter:
                            498 ;	SRC/main.c:20: unsigned char vall_s = 0;
   2547 7A 00               499 	mov	r2,#0x00
                            500 ;	SRC/main.c:21: while (TypeParser(vall_s) != Is_a_number ) {
   2549                     501 00106$:
   2549 8A 82               502 	mov	dpl,r2
   254B C0 02               503 	push	ar2
   254D 12 25 2D            504 	lcall	_TypeParser
   2550 AB 82               505 	mov	r3,dpl
   2552 D0 02               506 	pop	ar2
   2554 BB 01 02            507 	cjne	r3,#0x01,00121$
   2557 80 26               508 	sjmp	00119$
   2559                     509 00121$:
                            510 ;	SRC/main.c:22: if(GetDIP() == 128)
   2559 12 24 FF            511 	lcall	_GetDIP
   255C AB 82               512 	mov	r3,dpl
   255E BB 80 01            513 	cjne	r3,#0x80,00102$
                            514 ;	SRC/main.c:23: return;
   2561 22                  515 	ret
   2562                     516 00102$:
                            517 ;	SRC/main.c:24: if(rsiostat()){
   2562 12 23 F2            518 	lcall	_rsiostat
   2565 E5 82               519 	mov	a,dpl
   2567 60 12               520 	jz	00104$
                            521 ;	SRC/main.c:25: vall_s = rsio();
   2569 12 24 02            522 	lcall	_rsio
   256C AB 82               523 	mov	r3,dpl
   256E 8B 02               524 	mov	ar2,r3
                            525 ;	SRC/main.c:26: WriteLED(vall_s);}
   2570 8A 82               526 	mov	dpl,r2
   2572 C0 02               527 	push	ar2
   2574 12 24 F2            528 	lcall	_WriteLED
   2577 D0 02               529 	pop	ar2
   2579 80 CE               530 	sjmp	00106$
   257B                     531 00104$:
                            532 ;	SRC/main.c:28: vall_s = 0;
   257B 7A 00               533 	mov	r2,#0x00
                            534 ;	SRC/main.c:30: while(vall_s <= '9')
   257D 80 CA               535 	sjmp	00106$
   257F                     536 00119$:
   257F                     537 00109$:
   257F EA                  538 	mov	a,r2
   2580 24 C6               539 	add	a,#0xff - 0x39
   2582 40 0E               540 	jc	00111$
                            541 ;	SRC/main.c:31: wsio(vall_s++);
   2584 8A 03               542 	mov	ar3,r2
   2586 0A                  543 	inc	r2
   2587 8B 82               544 	mov	dpl,r3
   2589 C0 02               545 	push	ar2
   258B 12 23 F9            546 	lcall	_wsio
   258E D0 02               547 	pop	ar2
   2590 80 ED               548 	sjmp	00109$
   2592                     549 00111$:
                            550 ;	SRC/main.c:32: wsio('\n');
   2592 75 82 0A            551 	mov	dpl,#0x0A
   2595 02 23 F9            552 	ljmp	_wsio
                            553 ;------------------------------------------------------------
                            554 ;Allocation info for local variables in function 'Converter'
                            555 ;------------------------------------------------------------
                            556 ;------------------------------------------------------------
                            557 ;	SRC/main.c:37: void Converter(){
                            558 ;	-----------------------------------------
                            559 ;	 function Converter
                            560 ;	-----------------------------------------
   2598                     561 _Converter:
                            562 ;	SRC/main.c:39: while (1) {
   2598                     563 00109$:
                            564 ;	SRC/main.c:40: if(GetDIP() != 128){
   2598 12 24 FF            565 	lcall	_GetDIP
   259B AA 82               566 	mov	r2,dpl
   259D BA 80 02            567 	cjne	r2,#0x80,00141$
   25A0 80 0C               568 	sjmp	00102$
   25A2                     569 00141$:
                            570 ;	SRC/main.c:41: WriteUART('\n');
   25A2 75 82 0A            571 	mov	dpl,#0x0A
   25A5 12 23 97            572 	lcall	_WriteUART
                            573 ;	SRC/main.c:42: WriteUART('\r');
   25A8 75 82 0D            574 	mov	dpl,#0x0D
                            575 ;	SRC/main.c:43: return;
   25AB 02 23 97            576 	ljmp	_WriteUART
   25AE                     577 00102$:
                            578 ;	SRC/main.c:45: c = ReadUART();
   25AE 12 23 E4            579 	lcall	_ReadUART
   25B1 85 82 0E            580 	mov	_c,dpl
                            581 ;	SRC/main.c:47: if( c == '\n' || (status = TypeParser(c)) != No_data){
   25B4 74 0A               582 	mov	a,#0x0A
   25B6 B5 0E 02            583 	cjne	a,_c,00142$
   25B9 80 0D               584 	sjmp	00105$
   25BB                     585 00142$:
   25BB 85 0E 82            586 	mov	dpl,_c
   25BE 12 25 2D            587 	lcall	_TypeParser
   25C1 E5 82               588 	mov	a,dpl
   25C3 FA                  589 	mov	r2,a
   25C4 F5 0F               590 	mov	_status,a
   25C6 60 D0               591 	jz	00109$
   25C8                     592 00105$:
                            593 ;	SRC/main.c:48: if(status == Not_a_Number){
   25C8 74 02               594 	mov	a,#0x02
   25CA B5 0F 12            595 	cjne	a,_status,00110$
                            596 ;	SRC/main.c:49: PrintString("\n\rNot_a_Number\n\r\0");
   25CD 90 27 64            597 	mov	dptr,#__str_0
   25D0 75 F0 80            598 	mov	b,#0x80
   25D3 12 23 B9            599 	lcall	_PrintString
                            600 ;	SRC/main.c:50: WriteLED(0xf0);
   25D6 75 82 F0            601 	mov	dpl,#0xF0
   25D9 12 24 F2            602 	lcall	_WriteLED
                            603 ;	SRC/main.c:51: goto reset;
   25DC 02 26 C5            604 	ljmp	00128$
                            605 ;	SRC/main.c:53: break;
   25DF                     606 00110$:
                            607 ;	SRC/main.c:56: WriteUART(c);
   25DF 85 0E 82            608 	mov	dpl,_c
   25E2 12 23 97            609 	lcall	_WriteUART
                            610 ;	SRC/main.c:57: if(c == '\n')
   25E5 74 0A               611 	mov	a,#0x0A
   25E7 B5 0E 02            612 	cjne	a,_c,00146$
   25EA 80 47               613 	sjmp	00117$
   25EC                     614 00146$:
                            615 ;	SRC/main.c:60: is_data = 1;
   25EC D2 01               616 	setb	_is_data
                            617 ;	SRC/main.c:61: vall = vall * 10 + (c - '0');
   25EE C0 0C               618 	push	_vall
   25F0 C0 0D               619 	push	(_vall + 1)
   25F2 90 00 0A            620 	mov	dptr,#0x000A
   25F5 12 27 22            621 	lcall	__mulint
   25F8 AA 82               622 	mov	r2,dpl
   25FA AB 83               623 	mov	r3,dph
   25FC 15 81               624 	dec	sp
   25FE 15 81               625 	dec	sp
   2600 AC 0E               626 	mov	r4,_c
   2602 7D 00               627 	mov	r5,#0x00
   2604 EC                  628 	mov	a,r4
   2605 24 D0               629 	add	a,#0xd0
   2607 FC                  630 	mov	r4,a
   2608 ED                  631 	mov	a,r5
   2609 34 FF               632 	addc	a,#0xff
   260B FD                  633 	mov	r5,a
   260C EC                  634 	mov	a,r4
   260D 2A                  635 	add	a,r2
   260E F5 0C               636 	mov	_vall,a
   2610 ED                  637 	mov	a,r5
   2611 3B                  638 	addc	a,r3
   2612 F5 0D               639 	mov	(_vall + 1),a
                            640 ;	SRC/main.c:62: if(vall > 255){
   2614 C3                  641 	clr	c
   2615 74 FF               642 	mov	a,#0xFF
   2617 95 0C               643 	subb	a,_vall
   2619 E4                  644 	clr	a
   261A 95 0D               645 	subb	a,(_vall + 1)
   261C 40 03               646 	jc	00147$
   261E 02 25 98            647 	ljmp	00109$
   2621                     648 00147$:
                            649 ;	SRC/main.c:63: PrintString("\n\rOut_of_range\n\r\0");
   2621 90 27 76            650 	mov	dptr,#__str_1
   2624 75 F0 80            651 	mov	b,#0x80
   2627 12 23 B9            652 	lcall	_PrintString
                            653 ;	SRC/main.c:64: WriteLED(0xF);
   262A 75 82 0F            654 	mov	dpl,#0x0F
   262D 12 24 F2            655 	lcall	_WriteLED
                            656 ;	SRC/main.c:65: goto reset;
   2630 02 26 C5            657 	ljmp	00128$
   2633                     658 00117$:
                            659 ;	SRC/main.c:68: if( !is_data) {
   2633 20 01 12            660 	jb	_is_data,00119$
                            661 ;	SRC/main.c:69: PrintString("\n\rNo_data_to_convert\n\r\0");
   2636 90 27 88            662 	mov	dptr,#__str_2
   2639 75 F0 80            663 	mov	b,#0x80
   263C 12 23 B9            664 	lcall	_PrintString
                            665 ;	SRC/main.c:70: WriteLED(0xFF);
   263F 75 82 FF            666 	mov	dpl,#0xFF
   2642 12 24 F2            667 	lcall	_WriteLED
                            668 ;	SRC/main.c:71: goto reset;
   2645 02 26 C5            669 	ljmp	00128$
   2648                     670 00119$:
                            671 ;	SRC/main.c:73: WriteLED(12);
   2648 75 82 0C            672 	mov	dpl,#0x0C
   264B 12 24 F2            673 	lcall	_WriteLED
                            674 ;	SRC/main.c:74: c = (vall & 0xf0) >> 4;
   264E 74 F0               675 	mov	a,#0xF0
   2650 55 0C               676 	anl	a,_vall
   2652 FA                  677 	mov	r2,a
   2653 E4                  678 	clr	a
   2654 C4                  679 	swap	a
   2655 CA                  680 	xch	a,r2
   2656 C4                  681 	swap	a
   2657 54 0F               682 	anl	a,#0x0f
   2659 6A                  683 	xrl	a,r2
   265A CA                  684 	xch	a,r2
   265B 54 0F               685 	anl	a,#0x0f
   265D CA                  686 	xch	a,r2
   265E 6A                  687 	xrl	a,r2
   265F CA                  688 	xch	a,r2
   2660 8A 0E               689 	mov	_c,r2
                            690 ;	SRC/main.c:75: WriteLED(0x41 + (c) - 10);
   2662 74 37               691 	mov	a,#0x37
   2664 25 0E               692 	add	a,_c
   2666 F5 82               693 	mov	dpl,a
   2668 12 24 F2            694 	lcall	_WriteLED
                            695 ;	SRC/main.c:76: WriteLED(0x30 + c);
   266B 74 30               696 	mov	a,#0x30
   266D 25 0E               697 	add	a,_c
   266F F5 82               698 	mov	dpl,a
   2671 12 24 F2            699 	lcall	_WriteLED
                            700 ;	SRC/main.c:77: if( c > 0)
   2674 E5 0E               701 	mov	a,_c
   2676 60 1A               702 	jz	00124$
                            703 ;	SRC/main.c:78: if(c > 9)
   2678 E5 0E               704 	mov	a,_c
   267A 24 F6               705 	add	a,#0xff - 0x09
   267C 50 0B               706 	jnc	00121$
                            707 ;	SRC/main.c:79: WriteUART(0x41 + (c) - 10);
   267E 74 37               708 	mov	a,#0x37
   2680 25 0E               709 	add	a,_c
   2682 F5 82               710 	mov	dpl,a
   2684 12 23 97            711 	lcall	_WriteUART
   2687 80 09               712 	sjmp	00124$
   2689                     713 00121$:
                            714 ;	SRC/main.c:81: WriteUART(0x30 + c);
   2689 74 30               715 	mov	a,#0x30
   268B 25 0E               716 	add	a,_c
   268D F5 82               717 	mov	dpl,a
   268F 12 23 97            718 	lcall	_WriteUART
   2692                     719 00124$:
                            720 ;	SRC/main.c:83: c = vall & 0xf;
   2692 74 0F               721 	mov	a,#0x0F
   2694 55 0C               722 	anl	a,_vall
   2696 FA                  723 	mov	r2,a
   2697 8A 0E               724 	mov	_c,r2
                            725 ;	SRC/main.c:84: WriteLED(0x41 + (c) - 10);
   2699 74 37               726 	mov	a,#0x37
   269B 25 0E               727 	add	a,_c
   269D F5 82               728 	mov	dpl,a
   269F 12 24 F2            729 	lcall	_WriteLED
                            730 ;	SRC/main.c:85: WriteLED(0x30 + c);
   26A2 74 30               731 	mov	a,#0x30
   26A4 25 0E               732 	add	a,_c
   26A6 F5 82               733 	mov	dpl,a
   26A8 12 24 F2            734 	lcall	_WriteLED
                            735 ;	SRC/main.c:86: if(c > 9)
   26AB E5 0E               736 	mov	a,_c
   26AD 24 F6               737 	add	a,#0xff - 0x09
   26AF 50 0B               738 	jnc	00126$
                            739 ;	SRC/main.c:87: WriteUART(0x41 + (c) - 10);
   26B1 74 37               740 	mov	a,#0x37
   26B3 25 0E               741 	add	a,_c
   26B5 F5 82               742 	mov	dpl,a
   26B7 12 23 97            743 	lcall	_WriteUART
   26BA 80 09               744 	sjmp	00128$
   26BC                     745 00126$:
                            746 ;	SRC/main.c:89: WriteUART(0x30 + c);
   26BC 74 30               747 	mov	a,#0x30
   26BE 25 0E               748 	add	a,_c
   26C0 F5 82               749 	mov	dpl,a
   26C2 12 23 97            750 	lcall	_WriteUART
                            751 ;	SRC/main.c:94: reset:
   26C5                     752 00128$:
                            753 ;	SRC/main.c:95: vall = 0;
   26C5 E4                  754 	clr	a
   26C6 F5 0C               755 	mov	_vall,a
   26C8 F5 0D               756 	mov	(_vall + 1),a
                            757 ;	SRC/main.c:96: is_data = 0;
   26CA C2 01               758 	clr	_is_data
                            759 ;	SRC/main.c:97: return;
   26CC 22                  760 	ret
                            761 ;------------------------------------------------------------
                            762 ;Allocation info for local variables in function 'main'
                            763 ;------------------------------------------------------------
                            764 ;------------------------------------------------------------
                            765 ;	SRC/main.c:100: void main(void) {
                            766 ;	-----------------------------------------
                            767 ;	 function main
                            768 ;	-----------------------------------------
   26CD                     769 _main:
                            770 ;	SRC/main.c:102: init_sio(S1200);
   26CD 75 82 E8            771 	mov	dpl,#0xE8
   26D0 12 21 94            772 	lcall	_init_sio
                            773 ;	SRC/main.c:104: while (1) {
   26D3                     774 00111$:
                            775 ;	SRC/main.c:105: if (GetDIP() != 128) {
   26D3 12 24 FF            776 	lcall	_GetDIP
   26D6 AA 82               777 	mov	r2,dpl
   26D8 BA 80 02            778 	cjne	r2,#0x80,00121$
   26DB 80 13               779 	sjmp	00108$
   26DD                     780 00121$:
                            781 ;	SRC/main.c:106: ES = 0;
   26DD C2 AC               782 	clr	_ES
                            783 ;	SRC/main.c:107: EA = 0;
   26DF C2 AF               784 	clr	_EA
                            785 ;	SRC/main.c:108: while (GetDIP() != 128) {
   26E1                     786 00101$:
   26E1 12 24 FF            787 	lcall	_GetDIP
   26E4 AA 82               788 	mov	r2,dpl
   26E6 BA 80 02            789 	cjne	r2,#0x80,00122$
   26E9 80 E8               790 	sjmp	00111$
   26EB                     791 00122$:
                            792 ;	SRC/main.c:109: SequenceWriter();
   26EB 12 25 47            793 	lcall	_SequenceWriter
   26EE 80 F1               794 	sjmp	00101$
   26F0                     795 00108$:
                            796 ;	SRC/main.c:112: ES = 1;
   26F0 D2 AC               797 	setb	_ES
                            798 ;	SRC/main.c:113: EA = 1;
   26F2 D2 AF               799 	setb	_EA
                            800 ;	SRC/main.c:114: while (GetDIP() == 128) {
   26F4                     801 00104$:
   26F4 12 24 FF            802 	lcall	_GetDIP
   26F7 AA 82               803 	mov	r2,dpl
   26F9 BA 80 05            804 	cjne	r2,#0x80,00106$
                            805 ;	SRC/main.c:115: Converter();
   26FC 12 25 98            806 	lcall	_Converter
   26FF 80 F3               807 	sjmp	00104$
   2701                     808 00106$:
                            809 ;	SRC/main.c:117: WriteLED(0);
   2701 75 82 00            810 	mov	dpl,#0x00
   2704 12 24 F2            811 	lcall	_WriteLED
   2707 80 CA               812 	sjmp	00111$
                            813 	.area CSEG    (CODE)
                            814 	.area CONST   (CODE)
   2764                     815 __str_0:
   2764 0A                  816 	.db 0x0A
   2765 0D                  817 	.db 0x0D
   2766 4E 6F 74 5F 61 5F   818 	.ascii "Not_a_Number"
        4E 75 6D 62 65 72
   2772 0A                  819 	.db 0x0A
   2773 0D                  820 	.db 0x0D
   2774 00                  821 	.db 0x00
   2775 00                  822 	.db 0x00
   2776                     823 __str_1:
   2776 0A                  824 	.db 0x0A
   2777 0D                  825 	.db 0x0D
   2778 4F 75 74 5F 6F 66   826 	.ascii "Out_of_range"
        5F 72 61 6E 67 65
   2784 0A                  827 	.db 0x0A
   2785 0D                  828 	.db 0x0D
   2786 00                  829 	.db 0x00
   2787 00                  830 	.db 0x00
   2788                     831 __str_2:
   2788 0A                  832 	.db 0x0A
   2789 0D                  833 	.db 0x0D
   278A 4E 6F 5F 64 61 74   834 	.ascii "No_data_to_convert"
        61 5F 74 6F 5F 63
        6F 6E 76 65 72 74
   279C 0A                  835 	.db 0x0A
   279D 0D                  836 	.db 0x0D
   279E 00                  837 	.db 0x00
   279F 00                  838 	.db 0x00
                            839 	.area XINIT   (CODE)
                            840 	.area CABS    (ABS,CODE)
