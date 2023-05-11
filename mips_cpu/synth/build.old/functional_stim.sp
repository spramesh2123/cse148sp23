* Functional test stimulus file for 5ns period

* TT process corner
.include "/home/sankara2004/cse148/tools/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTG.inc"
.include "/home/sankara2004/cse148/tools/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTG.inc"
.include "sram_17_32_freepdk45_analytical.sp"

* Global Power Supplies
Vvdd vdd 0 1.0

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xsram_17_32_freepdk45_analytical din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 din0_14 din0_15 din0_16 a0_0 a0_1 a0_2 a0_3 a0_4 a1_0 a1_1 a1_2 a1_3 a1_4 CSB0 CSB1 clk0 clk1 dout1_0 dout1_1 dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7 dout1_8 dout1_9 dout1_10 dout1_11 dout1_12 dout1_13 dout1_14 dout1_15 dout1_16 vdd gnd sram_17_32_freepdk45_analytical

* SRAM output loads
CD10 dout1_0  0 0.8364f
CD11 dout1_1  0 0.8364f
CD12 dout1_2  0 0.8364f
CD13 dout1_3  0 0.8364f
CD14 dout1_4  0 0.8364f
CD15 dout1_5  0 0.8364f
CD16 dout1_6  0 0.8364f
CD17 dout1_7  0 0.8364f
CD18 dout1_8  0 0.8364f
CD19 dout1_9  0 0.8364f
CD110 dout1_10  0 0.8364f
CD111 dout1_11  0 0.8364f
CD112 dout1_12  0 0.8364f
CD113 dout1_13  0 0.8364f
CD114 dout1_14  0 0.8364f
CD115 dout1_15  0 0.8364f
CD116 dout1_16  0 0.8364f


* Important signals for debug
* bl:	xsram_17_32_freepdk45_analytical.xbank0.bl_1_0
* br:	xsram_17_32_freepdk45_analytical.xbank0.br_1_0
* s_en:	xsram_17_32_freepdk45_analytical.s_en
* q:	xsram_17_32_freepdk45_analytical.xbank0.xbitcell_array.xbitcell_array.xbit_r0_c0.Q
* qbar:	xsram_17_32_freepdk45_analytical.xbank0.xbitcell_array.xbitcell_array.xbit_r0_c0.Q_bar


* Sequence of operations
*	Idle during cycle 0 (0ns - 5ns)
*	Writing 00110110010110100  to  address 00001 (from port 0) during cycle 1 (5ns - 10ns)
*	Writing 01110101110100011  to  address 11101 (from port 0) during cycle 2 (10ns - 15ns)
*	Writing 01111001100100011  to  address 00001 (from port 0) during cycle 3 (15ns - 20ns)
*	Reading 01110101110100011 from address 11101 (from port 1) during cycle 4 (20ns - 25ns)
*	Writing 00010011111101001  to  address 11101 (from port 0) during cycle 5 (25ns - 30ns)
*	Reading 00010011111101001 from address 11101 (from port 1) during cycle 6 (30ns - 35ns)
*	Writing 10011100011001000  to  address 00000 (from port 0) during cycle 7 (35ns - 40ns)
*	Reading 01111001100100011 from address 00001 (from port 1) during cycle 7 (35ns - 40ns)
*	Reading 00010011111101001 from address 11101 (from port 1) during cycle 8 (40ns - 45ns)
*	Reading 00010011111101001 from address 11101 (from port 1) during cycle 11 (55ns - 60ns)
*	Reading 01111001100100011 from address 00001 (from port 1) during cycle 12 (60ns - 65ns)
*	Writing 11100001000111000  to  address 11110 (from port 0) during cycle 16 (80ns - 85ns)
*	Writing 01000000011101110  to  address 00000 (from port 0) during cycle 17 (85ns - 90ns)
*	Reading 01111001100100011 from address 00001 (from port 1) during cycle 17 (85ns - 90ns)
*	Reading 00010011111101001 from address 11101 (from port 1) during cycle 18 (90ns - 95ns)
*	Reading 01111001100100011 from address 00001 (from port 1) during cycle 19 (95ns - 100ns)
*	Writing 10010010101010110  to  address 00001 (from port 0) during cycle 20 (100ns - 105ns)
*	Writing 00100111001110101  to  address 11110 (from port 0) during cycle 21 (105ns - 110ns)
*	Reading 01000000011101110 from address 00000 (from port 1) during cycle 22 (110ns - 115ns)
*	Writing 11101000101100110  to  address 00000 (from port 0) during cycle 23 (115ns - 120ns)
*	Reading 00100111001110101 from address 11110 (from port 1) during cycle 23 (115ns - 120ns)
*	Writing 11011010111010011  to  address 00001 (from port 0) during cycle 24 (120ns - 125ns)
*	Reading 00010011111101001 from address 11101 (from port 1) during cycle 25 (125ns - 130ns)
*	Writing 01000011000001100  to  address 11110 (from port 0) during cycle 26 (130ns - 135ns)
*	Writing 01001100100000111  to  address 00000 (from port 0) during cycle 27 (135ns - 140ns)
*	Writing 01110010001111100  to  address 11110 (from port 0) during cycle 28 (140ns - 145ns)
*	Reading 00010011111101001 from address 11101 (from port 1) during cycle 29 (145ns - 150ns)
*	Writing 10101100111111110  to  address 11101 (from port 0) during cycle 30 (150ns - 155ns)
*	Reading 10101100111111110 from address 11101 (from port 1) during cycle 32 (160ns - 165ns)
*	Reading 01110010001111100 from address 11110 (from port 1) during cycle 33 (165ns - 170ns)
*	Reading 10101100111111110 from address 11101 (from port 1) during cycle 34 (170ns - 175ns)
*	Reading 10101100111111110 from address 11101 (from port 1) during cycle 35 (175ns - 180ns)
*	Writing 11011100010010000  to  address 11110 (from port 0) during cycle 36 (180ns - 185ns)
*	Reading 01001100100000111 from address 00000 (from port 1) during cycle 37 (185ns - 190ns)
*	Reading 11011100010010000 from address 11110 (from port 1) during cycle 38 (190ns - 195ns)
*	Reading 10101100111111110 from address 11101 (from port 1) during cycle 39 (195ns - 200ns)
*	Reading 10101100111111110 from address 11101 (from port 1) during cycle 40 (200ns - 205ns)
*	Writing 00000101110100101  to  address 11110 (from port 0) during cycle 41 (205ns - 210ns)
*	Reading 00000101110100101 from address 11110 (from port 1) during cycle 43 (215ns - 220ns)
*	Writing 11101111011101000  to  address 00000 (from port 0) during cycle 44 (220ns - 225ns)
*	Reading 11011010111010011 from address 00001 (from port 1) during cycle 44 (220ns - 225ns)
*	Writing 11100010100000000  to  address 11101 (from port 0) during cycle 45 (225ns - 230ns)
*	Reading 11011010111010011 from address 00001 (from port 1) during cycle 45 (225ns - 230ns)
*	Reading 11011010111010011 from address 00001 (from port 1) during cycle 46 (230ns - 235ns)
*	Reading 11101111011101000 from address 00000 (from port 1) during cycle 47 (235ns - 240ns)
*	Reading 11011010111010011 from address 00001 (from port 1) during cycle 48 (240ns - 245ns)
*	Writing 00001111000101100  to  address 00000 (from port 0) during cycle 50 (250ns - 255ns)
*	Writing 10111111000111011  to  address 00001 (from port 0) during cycle 52 (260ns - 265ns)
*	Writing 10010111010111111  to  address 00001 (from port 0) during cycle 53 (265ns - 270ns)
*	Reading 11100010100000000 from address 11101 (from port 1) during cycle 54 (270ns - 275ns)
*	Writing 11110100101111000  to  address 11101 (from port 0) during cycle 55 (275ns - 280ns)
*	Writing 11010010010100011  to  address 00001 (from port 0) during cycle 56 (280ns - 285ns)
*	Writing 00011000011111001  to  address 00000 (from port 0) during cycle 59 (295ns - 300ns)
*	Writing 00001010100011000  to  address 11110 (from port 0) during cycle 60 (300ns - 305ns)
*	Writing 10110010000110001  to  address 00000 (from port 0) during cycle 61 (305ns - 310ns)
*	Writing 00110111011110000  to  address 11101 (from port 0) during cycle 62 (310ns - 315ns)
*	Reading 11010010010100011 from address 00001 (from port 1) during cycle 62 (310ns - 315ns)
*	Reading 10110010000110001 from address 00000 (from port 1) during cycle 66 (330ns - 335ns)
*	Writing 00001011010010111  to  address 00000 (from port 0) during cycle 67 (335ns - 340ns)
*	Writing 11011000100111111  to  address 11110 (from port 0) during cycle 68 (340ns - 345ns)
*	Writing 10001110001110101  to  address 11110 (from port 0) during cycle 69 (345ns - 350ns)
*	Writing 11100010101000000  to  address 11110 (from port 0) during cycle 70 (350ns - 355ns)
*	Reading 11010010010100011 from address 00001 (from port 1) during cycle 70 (350ns - 355ns)
*	Reading 00001011010010111 from address 00000 (from port 1) during cycle 72 (360ns - 365ns)
*	Writing 11011011101111001  to  address 11110 (from port 0) during cycle 73 (365ns - 370ns)
*	Reading 11011011101111001 from address 11110 (from port 1) during cycle 75 (375ns - 380ns)
*	Reading 11010010010100011 from address 00001 (from port 1) during cycle 76 (380ns - 385ns)
*	Writing 00010100111011001  to  address 11101 (from port 0) during cycle 77 (385ns - 390ns)
*	Writing 11011001000110110  to  address 11110 (from port 0) during cycle 78 (390ns - 395ns)
*	Writing 01001000000000100  to  address 00001 (from port 0) during cycle 79 (395ns - 400ns)
*	Reading 11011001000110110 from address 11110 (from port 1) during cycle 79 (395ns - 400ns)
*	Writing 10001110111000100  to  address 11101 (from port 0) during cycle 80 (400ns - 405ns)
*	Reading 00001011010010111 from address 00000 (from port 1) during cycle 80 (400ns - 405ns)
*	Writing 01001001010100111  to  address 00001 (from port 0) during cycle 81 (405ns - 410ns)
*	Writing 00111100101001101  to  address 11110 (from port 0) during cycle 82 (410ns - 415ns)
*	Writing 01110001001111010  to  address 11110 (from port 0) during cycle 83 (415ns - 420ns)
*	Writing 10000100101010110  to  address 00001 (from port 0) during cycle 85 (425ns - 430ns)
*	Reading 01110001001111010 from address 11110 (from port 1) during cycle 86 (430ns - 435ns)
*	Reading 01110001001111010 from address 11110 (from port 1) during cycle 87 (435ns - 440ns)
*	Writing 00101010111010110  to  address 00001 (from port 0) during cycle 89 (445ns - 450ns)
*	Writing 01011111010111111  to  address 11101 (from port 0) during cycle 90 (450ns - 455ns)
*	Writing 10101011100001001  to  address 11101 (from port 0) during cycle 91 (455ns - 460ns)
*	Reading 00001011010010111 from address 00000 (from port 1) during cycle 91 (455ns - 460ns)
*	Writing 00011001100111000  to  address 11101 (from port 0) during cycle 92 (460ns - 465ns)
*	Writing 00101000101010101  to  address 00001 (from port 0) during cycle 93 (465ns - 470ns)
*	Writing 01011001011000011  to  address 00001 (from port 0) during cycle 94 (470ns - 475ns)
*	Reading 01110001001111010 from address 11110 (from port 1) during cycle 96 (480ns - 485ns)
*	Writing 11001110100100011  to  address 00000 (from port 0) during cycle 97 (485ns - 490ns)
*	Reading 01110001001111010 from address 11110 (from port 1) during cycle 97 (485ns - 490ns)
*	Writing 11011010001110000  to  address 11110 (from port 0) during cycle 98 (490ns - 495ns)
*	Writing 11101100010100101  to  address 11110 (from port 0) during cycle 99 (495ns - 500ns)
*	Reading 00011001100111000 from address 11101 (from port 1) during cycle 100 (500ns - 505ns)
*	Writing 01111011110000100  to  address 11110 (from port 0) during cycle 101 (505ns - 510ns)
*	Reading 00011001100111000 from address 11101 (from port 1) during cycle 103 (515ns - 520ns)
*	Writing 11101011101000000  to  address 11101 (from port 0) during cycle 104 (520ns - 525ns)
*	Reading 11001110100100011 from address 00000 (from port 1) during cycle 106 (530ns - 535ns)
*	Writing 11111001001101101  to  address 00001 (from port 0) during cycle 107 (535ns - 540ns)
*	Reading 11101011101000000 from address 11101 (from port 1) during cycle 108 (540ns - 545ns)
*	Writing 01101010110000011  to  address 11110 (from port 0) during cycle 109 (545ns - 550ns)
*	Writing 01011010101011100  to  address 11110 (from port 0) during cycle 110 (550ns - 555ns)
*	Reading 11101011101000000 from address 11101 (from port 1) during cycle 110 (550ns - 555ns)
*	Writing 11101011110111011  to  address 00001 (from port 0) during cycle 111 (555ns - 560ns)
*	Writing 01110000010110101  to  address 00000 (from port 0) during cycle 113 (565ns - 570ns)
*	Writing 11000110000111001  to  address 11110 (from port 0) during cycle 114 (570ns - 575ns)
*	Reading 11101011110111011 from address 00001 (from port 1) during cycle 114 (570ns - 575ns)
*	Reading 11101011110111011 from address 00001 (from port 1) during cycle 115 (575ns - 580ns)
*	Writing 11101011101000100  to  address 00001 (from port 0) during cycle 116 (580ns - 585ns)
*	Writing 11100000101100110  to  address 11110 (from port 0) during cycle 117 (585ns - 590ns)
*	Reading 11101011101000000 from address 11101 (from port 1) during cycle 118 (590ns - 595ns)
*	Writing 10100111000111011  to  address 11101 (from port 0) during cycle 120 (600ns - 605ns)
*	Writing 01111110111011110  to  address 00000 (from port 0) during cycle 121 (605ns - 610ns)
*	Reading 11101011101000100 from address 00001 (from port 1) during cycle 122 (610ns - 615ns)
*	Writing 10010011010011011  to  address 11110 (from port 0) during cycle 123 (615ns - 620ns)
*	Reading 10100111000111011 from address 11101 (from port 1) during cycle 123 (615ns - 620ns)
*	Reading 10100111000111011 from address 11101 (from port 1) during cycle 126 (630ns - 635ns)
*	Writing 00001000000111011  to  address 00000 (from port 0) during cycle 127 (635ns - 640ns)
*	Reading 10010011010011011 from address 11110 (from port 1) during cycle 127 (635ns - 640ns)
*	Writing 10000110011111001  to  address 11101 (from port 0) during cycle 128 (640ns - 645ns)
*	Reading 00001000000111011 from address 00000 (from port 1) during cycle 129 (645ns - 650ns)
*	Writing 01011101101000100  to  address 00000 (from port 0) during cycle 130 (650ns - 655ns)
*	Writing 00011110101000100  to  address 11101 (from port 0) during cycle 131 (655ns - 660ns)
*	Reading 10010011010011011 from address 11110 (from port 1) during cycle 131 (655ns - 660ns)
*	Writing 11111001000110000  to  address 00000 (from port 0) during cycle 132 (660ns - 665ns)
*	Writing 00111111101111010  to  address 11110 (from port 0) during cycle 133 (665ns - 670ns)
*	Reading 11101011101000100 from address 00001 (from port 1) during cycle 133 (665ns - 670ns)
*	Writing 01111101010000011  to  address 00000 (from port 0) during cycle 134 (670ns - 675ns)
*	Reading 11101011101000100 from address 00001 (from port 1) during cycle 134 (670ns - 675ns)
*	Writing 00010011100000100  to  address 11110 (from port 0) during cycle 136 (680ns - 685ns)
*	Writing 11111001010010011  to  address 11110 (from port 0) during cycle 137 (685ns - 690ns)
*	Writing 10011111111010011  to  address 00000 (from port 0) during cycle 138 (690ns - 695ns)
*	Reading 11111001010010011 from address 11110 (from port 1) during cycle 138 (690ns - 695ns)
*	Writing 01101111000110010  to  address 11110 (from port 0) during cycle 139 (695ns - 700ns)
*	Reading 11101011101000100 from address 00001 (from port 1) during cycle 139 (695ns - 700ns)
*	Writing 00001010111110111  to  address 00001 (from port 0) during cycle 140 (700ns - 705ns)
*	Reading 00011110101000100 from address 11101 (from port 1) during cycle 140 (700ns - 705ns)
*	Writing 00000110100100010  to  address 00000 (from port 0) during cycle 141 (705ns - 710ns)
*	Reading 00011110101000100 from address 11101 (from port 1) during cycle 141 (705ns - 710ns)
*	Writing 00011111010111000  to  address 00001 (from port 0) during cycle 145 (725ns - 730ns)
*	Writing 10001111000110101  to  address 00001 (from port 0) during cycle 146 (730ns - 735ns)
*	Reading 00011110101000100 from address 11101 (from port 1) during cycle 147 (735ns - 740ns)
*	Writing 10101111110111100  to  address 00001 (from port 0) during cycle 148 (740ns - 745ns)
*	Reading 00011110101000100 from address 11101 (from port 1) during cycle 149 (745ns - 750ns)
*	Writing 01011000111111111  to  address 00001 (from port 0) during cycle 150 (750ns - 755ns)
*	Reading 01101111000110010 from address 11110 (from port 1) during cycle 151 (755ns - 760ns)
*	Reading 01011000111111111 from address 00001 (from port 1) during cycle 152 (760ns - 765ns)
*	Reading 00000110100100010 from address 00000 (from port 1) during cycle 153 (765ns - 770ns)
*	Writing 00110010110010110  to  address 11101 (from port 0) during cycle 154 (770ns - 775ns)
*	Writing 00101111100000101  to  address 11101 (from port 0) during cycle 155 (775ns - 780ns)
*	Reading 00000110100100010 from address 00000 (from port 1) during cycle 158 (790ns - 795ns)
*	Writing 00110111110011011  to  address 11101 (from port 0) during cycle 159 (795ns - 800ns)
*	Reading 01101111000110010 from address 11110 (from port 1) during cycle 159 (795ns - 800ns)
*	Writing 01000011111110110  to  address 00000 (from port 0) during cycle 160 (800ns - 805ns)
*	Writing 01001001111100000  to  address 00001 (from port 0) during cycle 161 (805ns - 810ns)
*	Writing 11011000110100001  to  address 00000 (from port 0) during cycle 162 (810ns - 815ns)
*	Reading 01101111000110010 from address 11110 (from port 1) during cycle 164 (820ns - 825ns)
*	Writing 01001101111110010  to  address 00001 (from port 0) during cycle 165 (825ns - 830ns)
*	Writing 11001101110000010  to  address 11110 (from port 0) during cycle 167 (835ns - 840ns)
*	Writing 10010011111100100  to  address 00000 (from port 0) during cycle 168 (840ns - 845ns)
*	Reading 11001101110000010 from address 11110 (from port 1) during cycle 168 (840ns - 845ns)
*	Writing 10011101111010011  to  address 11101 (from port 0) during cycle 169 (845ns - 850ns)
*	Reading 11001101110000010 from address 11110 (from port 1) during cycle 170 (850ns - 855ns)
*	Writing 01011101000111100  to  address 11101 (from port 0) during cycle 171 (855ns - 860ns)
*	Reading 01011101000111100 from address 11101 (from port 1) during cycle 172 (860ns - 865ns)
*	Writing 00010000111011000  to  address 00001 (from port 0) during cycle 174 (870ns - 875ns)
*	Reading 00010000111011000 from address 00001 (from port 1) during cycle 175 (875ns - 880ns)
*	Writing 11111001110100000  to  address 00001 (from port 0) during cycle 176 (880ns - 885ns)
*	Reading 11111001110100000 from address 00001 (from port 1) during cycle 177 (885ns - 890ns)
*	Reading 11111001110100000 from address 00001 (from port 1) during cycle 178 (890ns - 895ns)
*	Writing 01100100100001000  to  address 00000 (from port 0) during cycle 179 (895ns - 900ns)
*	Writing 00101000011100110  to  address 11101 (from port 0) during cycle 180 (900ns - 905ns)
*	Reading 11111001110100000 from address 00001 (from port 1) during cycle 180 (900ns - 905ns)
*	Writing 11000001010000010  to  address 11101 (from port 0) during cycle 181 (905ns - 910ns)
*	Writing 11011000000101001  to  address 00001 (from port 0) during cycle 185 (925ns - 930ns)
*	Reading 11011000000101001 from address 00001 (from port 1) during cycle 186 (930ns - 935ns)
*	Writing 00101001110010100  to  address 11101 (from port 0) during cycle 187 (935ns - 940ns)
*	Reading 11011000000101001 from address 00001 (from port 1) during cycle 187 (935ns - 940ns)
*	Writing 11110101010001110  to  address 00000 (from port 0) during cycle 188 (940ns - 945ns)
*	Reading 11001101110000010 from address 11110 (from port 1) during cycle 188 (940ns - 945ns)
*	Writing 10111100011010110  to  address 00000 (from port 0) during cycle 189 (945ns - 950ns)
*	Writing 01100011110111011  to  address 11101 (from port 0) during cycle 190 (950ns - 955ns)
*	Reading 11001101110000010 from address 11110 (from port 1) during cycle 190 (950ns - 955ns)
*	Reading 01100011110111011 from address 11101 (from port 1) during cycle 191 (955ns - 960ns)
*	Writing 01000001000100010  to  address 11110 (from port 0) during cycle 193 (965ns - 970ns)
*	Reading 11011000000101001 from address 00001 (from port 1) during cycle 194 (970ns - 975ns)
*	Reading 01000001000100010 from address 11110 (from port 1) during cycle 196 (980ns - 985ns)
*	Writing 11000011110110111  to  address 11101 (from port 0) during cycle 197 (985ns - 990ns)
*	Reading 01000001000100010 from address 11110 (from port 1) during cycle 197 (985ns - 990ns)
*	Writing 00111100110011111  to  address 00001 (from port 0) during cycle 198 (990ns - 995ns)
*	Reading 10111100011010110 from address 00000 (from port 1) during cycle 198 (990ns - 995ns)
*	Writing 00100110011001110  to  address 00000 (from port 0) during cycle 199 (995ns - 1000ns)
*	Reading 11000011110110111 from address 11101 (from port 1) during cycle 199 (995ns - 1000ns)
*	Reading 00100110011001110 from address 00000 (from port 1) during cycle 200 (1000ns - 1005ns)
*	Writing 11001000110010010  to  address 11110 (from port 0) during cycle 202 (1010ns - 1015ns)
*	Writing 11101101110111110  to  address 00001 (from port 0) during cycle 204 (1020ns - 1025ns)
*	Idle during cycle 205 (1025ns - 1030ns)

* Generation of data and address signals
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 0), (395, 0), (400, 0), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 0), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 0), (685, 1), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 1), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_0  din0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 0), (280, 1), (285, 1), (290, 1), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 0), (400, 0), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_1  din0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 0), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 0), (550, 1), (555, 0), (560, 0), (565, 1), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 0), (690, 0), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_2  din0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 1), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 0), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 0), (550, 1), (555, 1), (560, 1), (565, 0), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 0), (660, 0), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 0), (885, 0), (890, 0), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 0), (940, 1), (945, 0), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_3  din0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 0), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 0), (840, 0), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_4  din0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 1), (395, 0), (400, 0), (405, 1), (410, 0), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 1), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 0), (655, 0), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 1), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 0), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_5  din0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 0), (395, 0), (400, 1), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 1), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 0), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_6  din0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 0), (395, 0), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 0), (555, 1), (560, 1), (565, 1), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 1), (645, 1), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 0), (685, 1), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_7  din0_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 0), (395, 0), (400, 1), (405, 0), (410, 1), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 1), (490, 0), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 0), (665, 1), (670, 0), (675, 0), (680, 1), (685, 0), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_8  din0_8  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 1), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 1), (395, 0), (400, 0), (405, 1), (410, 0), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 1), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 0), (590, 0), (595, 0), (600, 1), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 1), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 1), (940, 1), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_9  din0_9  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 1), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 1), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 0), (395, 0), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 1), (645, 1), (650, 0), (655, 1), (660, 0), (665, 1), (670, 0), (675, 0), (680, 1), (685, 0), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_10  din0_10  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 0), (395, 0), (400, 1), (405, 0), (410, 1), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 0), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 1), (695, 1), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_11  din0_11  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 0), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 1), (940, 0), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_12  din0_12  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 0), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 1), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 1), (465, 0), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 0), (550, 1), (555, 0), (560, 0), (565, 1), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_13  din0_13  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 1), (265, 0), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 0), (455, 1), (460, 0), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 1), (560, 1), (565, 1), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 1), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_14  din0_14  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 1), (395, 1), (400, 0), (405, 1), (410, 0), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 0), (660, 1), (665, 0), (670, 1), (675, 1), (680, 0), (685, 1), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 1), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_15  din0_15  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 0), (300, 0), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 1), (395, 0), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 0), (450, 0), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 1), (645, 1), (650, 0), (655, 0), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_16  din0_16  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 0), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 0), (590, 0), (595, 0), (600, 1), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 0), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 1), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 0), (840, 0), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va0_0  a0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 1), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 1), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 0), (675, 0), (680, 1), (685, 1), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va0_1  a0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 1), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 1), (405, 0), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 0), (540, 0), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 1), (645, 1), (650, 0), (655, 1), (660, 0), (665, 1), (670, 0), (675, 0), (680, 1), (685, 1), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 0), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 1), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va0_2  a0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 1), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 1), (405, 0), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 0), (540, 0), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 1), (645, 1), (650, 0), (655, 1), (660, 0), (665, 1), (670, 0), (675, 0), (680, 1), (685, 1), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 0), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 1), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va0_3  a0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 1), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 1), (405, 0), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 0), (540, 0), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 1), (645, 1), (650, 0), (655, 1), (660, 0), (665, 1), (670, 0), (675, 0), (680, 1), (685, 1), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 0), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 1), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va0_4  a0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 0), (170, 1), (175, 1), (180, 1), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 1), (230, 1), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_0  a1_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 0), (650, 0), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_1  a1_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 0), (575, 0), (580, 0), (585, 0), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_2  a1_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 0), (575, 0), (580, 0), (585, 0), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_3  a1_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 0), (575, 0), (580, 0), (585, 0), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_4  a1_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )

 * Generation of control signals
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 1), (25, 0), (30, 1), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 1), (95, 1), (100, 0), (105, 0), (110, 1), (115, 0), (120, 0), (125, 1), (130, 0), (135, 0), (140, 0), (145, 1), (150, 0), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 1), (260, 0), (265, 0), (270, 1), (275, 0), (280, 0), (285, 1), (290, 1), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 1), (360, 1), (365, 0), (370, 1), (375, 1), (380, 1), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 0), (430, 1), (435, 1), (440, 1), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 0), (490, 0), (495, 0), (500, 1), (505, 0), (510, 1), (515, 1), (520, 0), (525, 1), (530, 1), (535, 0), (540, 1), (545, 0), (550, 0), (555, 0), (560, 1), (565, 0), (570, 0), (575, 1), (580, 0), (585, 0), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 1), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 1), (740, 0), (745, 1), (750, 0), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 0), (830, 1), (835, 0), (840, 0), (845, 0), (850, 1), (855, 0), (860, 1), (865, 1), (870, 0), (875, 1), (880, 0), (885, 1), (890, 1), (895, 0), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 0), (930, 1), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 0), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 0), (1015, 1), (1020, 0), (1025, 1)]
VCSB0 CSB0 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 1.0v )
* (time, data): [(0, 1), (5, 1), (10, 1), (15, 1), (20, 0), (25, 1), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 0), (115, 0), (120, 1), (125, 0), (130, 1), (135, 1), (140, 1), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 1), (360, 0), (365, 1), (370, 1), (375, 0), (380, 0), (385, 1), (390, 1), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 1), (495, 1), (500, 0), (505, 1), (510, 1), (515, 0), (520, 1), (525, 1), (530, 0), (535, 1), (540, 0), (545, 1), (550, 0), (555, 1), (560, 1), (565, 1), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 1), (645, 0), (650, 1), (655, 0), (660, 1), (665, 0), (670, 0), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 1), (745, 0), (750, 1), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 0), (855, 1), (860, 0), (865, 1), (870, 1), (875, 0), (880, 1), (885, 0), (890, 0), (895, 1), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 0), (955, 0), (960, 1), (965, 1), (970, 0), (975, 1), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VCSB1 CSB1 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* PULSE: period=5
Vclk0 clk0 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)
* PULSE: period=5
Vclk1 clk1 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)

 * Generation of dout measurements
* CHECK dout1_0 Vdout1_0ck4 = 1.0 time = 25
.meas tran vdout1_0ck4 FIND v(dout1_0) AT=25.025n

* CHECK dout1_1 Vdout1_1ck4 = 1.0 time = 25
.meas tran vdout1_1ck4 FIND v(dout1_1) AT=25.025n

* CHECK dout1_2 Vdout1_2ck4 = 0 time = 25
.meas tran vdout1_2ck4 FIND v(dout1_2) AT=25.025n

* CHECK dout1_3 Vdout1_3ck4 = 0 time = 25
.meas tran vdout1_3ck4 FIND v(dout1_3) AT=25.025n

* CHECK dout1_4 Vdout1_4ck4 = 0 time = 25
.meas tran vdout1_4ck4 FIND v(dout1_4) AT=25.025n

* CHECK dout1_5 Vdout1_5ck4 = 1.0 time = 25
.meas tran vdout1_5ck4 FIND v(dout1_5) AT=25.025n

* CHECK dout1_6 Vdout1_6ck4 = 0 time = 25
.meas tran vdout1_6ck4 FIND v(dout1_6) AT=25.025n

* CHECK dout1_7 Vdout1_7ck4 = 1.0 time = 25
.meas tran vdout1_7ck4 FIND v(dout1_7) AT=25.025n

* CHECK dout1_8 Vdout1_8ck4 = 1.0 time = 25
.meas tran vdout1_8ck4 FIND v(dout1_8) AT=25.025n

* CHECK dout1_9 Vdout1_9ck4 = 1.0 time = 25
.meas tran vdout1_9ck4 FIND v(dout1_9) AT=25.025n

* CHECK dout1_10 Vdout1_10ck4 = 0 time = 25
.meas tran vdout1_10ck4 FIND v(dout1_10) AT=25.025n

* CHECK dout1_11 Vdout1_11ck4 = 1.0 time = 25
.meas tran vdout1_11ck4 FIND v(dout1_11) AT=25.025n

* CHECK dout1_12 Vdout1_12ck4 = 0 time = 25
.meas tran vdout1_12ck4 FIND v(dout1_12) AT=25.025n

* CHECK dout1_13 Vdout1_13ck4 = 1.0 time = 25
.meas tran vdout1_13ck4 FIND v(dout1_13) AT=25.025n

* CHECK dout1_14 Vdout1_14ck4 = 1.0 time = 25
.meas tran vdout1_14ck4 FIND v(dout1_14) AT=25.025n

* CHECK dout1_15 Vdout1_15ck4 = 1.0 time = 25
.meas tran vdout1_15ck4 FIND v(dout1_15) AT=25.025n

* CHECK dout1_16 Vdout1_16ck4 = 0 time = 25
.meas tran vdout1_16ck4 FIND v(dout1_16) AT=25.025n

* CHECK dout1_0 Vdout1_0ck6 = 1.0 time = 35
.meas tran vdout1_0ck6 FIND v(dout1_0) AT=35.025n

* CHECK dout1_1 Vdout1_1ck6 = 0 time = 35
.meas tran vdout1_1ck6 FIND v(dout1_1) AT=35.025n

* CHECK dout1_2 Vdout1_2ck6 = 0 time = 35
.meas tran vdout1_2ck6 FIND v(dout1_2) AT=35.025n

* CHECK dout1_3 Vdout1_3ck6 = 1.0 time = 35
.meas tran vdout1_3ck6 FIND v(dout1_3) AT=35.025n

* CHECK dout1_4 Vdout1_4ck6 = 0 time = 35
.meas tran vdout1_4ck6 FIND v(dout1_4) AT=35.025n

* CHECK dout1_5 Vdout1_5ck6 = 1.0 time = 35
.meas tran vdout1_5ck6 FIND v(dout1_5) AT=35.025n

* CHECK dout1_6 Vdout1_6ck6 = 1.0 time = 35
.meas tran vdout1_6ck6 FIND v(dout1_6) AT=35.025n

* CHECK dout1_7 Vdout1_7ck6 = 1.0 time = 35
.meas tran vdout1_7ck6 FIND v(dout1_7) AT=35.025n

* CHECK dout1_8 Vdout1_8ck6 = 1.0 time = 35
.meas tran vdout1_8ck6 FIND v(dout1_8) AT=35.025n

* CHECK dout1_9 Vdout1_9ck6 = 1.0 time = 35
.meas tran vdout1_9ck6 FIND v(dout1_9) AT=35.025n

* CHECK dout1_10 Vdout1_10ck6 = 1.0 time = 35
.meas tran vdout1_10ck6 FIND v(dout1_10) AT=35.025n

* CHECK dout1_11 Vdout1_11ck6 = 0 time = 35
.meas tran vdout1_11ck6 FIND v(dout1_11) AT=35.025n

* CHECK dout1_12 Vdout1_12ck6 = 0 time = 35
.meas tran vdout1_12ck6 FIND v(dout1_12) AT=35.025n

* CHECK dout1_13 Vdout1_13ck6 = 1.0 time = 35
.meas tran vdout1_13ck6 FIND v(dout1_13) AT=35.025n

* CHECK dout1_14 Vdout1_14ck6 = 0 time = 35
.meas tran vdout1_14ck6 FIND v(dout1_14) AT=35.025n

* CHECK dout1_15 Vdout1_15ck6 = 0 time = 35
.meas tran vdout1_15ck6 FIND v(dout1_15) AT=35.025n

* CHECK dout1_16 Vdout1_16ck6 = 0 time = 35
.meas tran vdout1_16ck6 FIND v(dout1_16) AT=35.025n

* CHECK dout1_0 Vdout1_0ck7 = 1.0 time = 40
.meas tran vdout1_0ck7 FIND v(dout1_0) AT=40.025n

* CHECK dout1_1 Vdout1_1ck7 = 1.0 time = 40
.meas tran vdout1_1ck7 FIND v(dout1_1) AT=40.025n

* CHECK dout1_2 Vdout1_2ck7 = 0 time = 40
.meas tran vdout1_2ck7 FIND v(dout1_2) AT=40.025n

* CHECK dout1_3 Vdout1_3ck7 = 0 time = 40
.meas tran vdout1_3ck7 FIND v(dout1_3) AT=40.025n

* CHECK dout1_4 Vdout1_4ck7 = 0 time = 40
.meas tran vdout1_4ck7 FIND v(dout1_4) AT=40.025n

* CHECK dout1_5 Vdout1_5ck7 = 1.0 time = 40
.meas tran vdout1_5ck7 FIND v(dout1_5) AT=40.025n

* CHECK dout1_6 Vdout1_6ck7 = 0 time = 40
.meas tran vdout1_6ck7 FIND v(dout1_6) AT=40.025n

* CHECK dout1_7 Vdout1_7ck7 = 0 time = 40
.meas tran vdout1_7ck7 FIND v(dout1_7) AT=40.025n

* CHECK dout1_8 Vdout1_8ck7 = 1.0 time = 40
.meas tran vdout1_8ck7 FIND v(dout1_8) AT=40.025n

* CHECK dout1_9 Vdout1_9ck7 = 1.0 time = 40
.meas tran vdout1_9ck7 FIND v(dout1_9) AT=40.025n

* CHECK dout1_10 Vdout1_10ck7 = 0 time = 40
.meas tran vdout1_10ck7 FIND v(dout1_10) AT=40.025n

* CHECK dout1_11 Vdout1_11ck7 = 0 time = 40
.meas tran vdout1_11ck7 FIND v(dout1_11) AT=40.025n

* CHECK dout1_12 Vdout1_12ck7 = 1.0 time = 40
.meas tran vdout1_12ck7 FIND v(dout1_12) AT=40.025n

* CHECK dout1_13 Vdout1_13ck7 = 1.0 time = 40
.meas tran vdout1_13ck7 FIND v(dout1_13) AT=40.025n

* CHECK dout1_14 Vdout1_14ck7 = 1.0 time = 40
.meas tran vdout1_14ck7 FIND v(dout1_14) AT=40.025n

* CHECK dout1_15 Vdout1_15ck7 = 1.0 time = 40
.meas tran vdout1_15ck7 FIND v(dout1_15) AT=40.025n

* CHECK dout1_16 Vdout1_16ck7 = 0 time = 40
.meas tran vdout1_16ck7 FIND v(dout1_16) AT=40.025n

* CHECK dout1_0 Vdout1_0ck8 = 1.0 time = 45
.meas tran vdout1_0ck8 FIND v(dout1_0) AT=45.025n

* CHECK dout1_1 Vdout1_1ck8 = 0 time = 45
.meas tran vdout1_1ck8 FIND v(dout1_1) AT=45.025n

* CHECK dout1_2 Vdout1_2ck8 = 0 time = 45
.meas tran vdout1_2ck8 FIND v(dout1_2) AT=45.025n

* CHECK dout1_3 Vdout1_3ck8 = 1.0 time = 45
.meas tran vdout1_3ck8 FIND v(dout1_3) AT=45.025n

* CHECK dout1_4 Vdout1_4ck8 = 0 time = 45
.meas tran vdout1_4ck8 FIND v(dout1_4) AT=45.025n

* CHECK dout1_5 Vdout1_5ck8 = 1.0 time = 45
.meas tran vdout1_5ck8 FIND v(dout1_5) AT=45.025n

* CHECK dout1_6 Vdout1_6ck8 = 1.0 time = 45
.meas tran vdout1_6ck8 FIND v(dout1_6) AT=45.025n

* CHECK dout1_7 Vdout1_7ck8 = 1.0 time = 45
.meas tran vdout1_7ck8 FIND v(dout1_7) AT=45.025n

* CHECK dout1_8 Vdout1_8ck8 = 1.0 time = 45
.meas tran vdout1_8ck8 FIND v(dout1_8) AT=45.025n

* CHECK dout1_9 Vdout1_9ck8 = 1.0 time = 45
.meas tran vdout1_9ck8 FIND v(dout1_9) AT=45.025n

* CHECK dout1_10 Vdout1_10ck8 = 1.0 time = 45
.meas tran vdout1_10ck8 FIND v(dout1_10) AT=45.025n

* CHECK dout1_11 Vdout1_11ck8 = 0 time = 45
.meas tran vdout1_11ck8 FIND v(dout1_11) AT=45.025n

* CHECK dout1_12 Vdout1_12ck8 = 0 time = 45
.meas tran vdout1_12ck8 FIND v(dout1_12) AT=45.025n

* CHECK dout1_13 Vdout1_13ck8 = 1.0 time = 45
.meas tran vdout1_13ck8 FIND v(dout1_13) AT=45.025n

* CHECK dout1_14 Vdout1_14ck8 = 0 time = 45
.meas tran vdout1_14ck8 FIND v(dout1_14) AT=45.025n

* CHECK dout1_15 Vdout1_15ck8 = 0 time = 45
.meas tran vdout1_15ck8 FIND v(dout1_15) AT=45.025n

* CHECK dout1_16 Vdout1_16ck8 = 0 time = 45
.meas tran vdout1_16ck8 FIND v(dout1_16) AT=45.025n

* CHECK dout1_0 Vdout1_0ck11 = 1.0 time = 60
.meas tran vdout1_0ck11 FIND v(dout1_0) AT=60.025n

* CHECK dout1_1 Vdout1_1ck11 = 0 time = 60
.meas tran vdout1_1ck11 FIND v(dout1_1) AT=60.025n

* CHECK dout1_2 Vdout1_2ck11 = 0 time = 60
.meas tran vdout1_2ck11 FIND v(dout1_2) AT=60.025n

* CHECK dout1_3 Vdout1_3ck11 = 1.0 time = 60
.meas tran vdout1_3ck11 FIND v(dout1_3) AT=60.025n

* CHECK dout1_4 Vdout1_4ck11 = 0 time = 60
.meas tran vdout1_4ck11 FIND v(dout1_4) AT=60.025n

* CHECK dout1_5 Vdout1_5ck11 = 1.0 time = 60
.meas tran vdout1_5ck11 FIND v(dout1_5) AT=60.025n

* CHECK dout1_6 Vdout1_6ck11 = 1.0 time = 60
.meas tran vdout1_6ck11 FIND v(dout1_6) AT=60.025n

* CHECK dout1_7 Vdout1_7ck11 = 1.0 time = 60
.meas tran vdout1_7ck11 FIND v(dout1_7) AT=60.025n

* CHECK dout1_8 Vdout1_8ck11 = 1.0 time = 60
.meas tran vdout1_8ck11 FIND v(dout1_8) AT=60.025n

* CHECK dout1_9 Vdout1_9ck11 = 1.0 time = 60
.meas tran vdout1_9ck11 FIND v(dout1_9) AT=60.025n

* CHECK dout1_10 Vdout1_10ck11 = 1.0 time = 60
.meas tran vdout1_10ck11 FIND v(dout1_10) AT=60.025n

* CHECK dout1_11 Vdout1_11ck11 = 0 time = 60
.meas tran vdout1_11ck11 FIND v(dout1_11) AT=60.025n

* CHECK dout1_12 Vdout1_12ck11 = 0 time = 60
.meas tran vdout1_12ck11 FIND v(dout1_12) AT=60.025n

* CHECK dout1_13 Vdout1_13ck11 = 1.0 time = 60
.meas tran vdout1_13ck11 FIND v(dout1_13) AT=60.025n

* CHECK dout1_14 Vdout1_14ck11 = 0 time = 60
.meas tran vdout1_14ck11 FIND v(dout1_14) AT=60.025n

* CHECK dout1_15 Vdout1_15ck11 = 0 time = 60
.meas tran vdout1_15ck11 FIND v(dout1_15) AT=60.025n

* CHECK dout1_16 Vdout1_16ck11 = 0 time = 60
.meas tran vdout1_16ck11 FIND v(dout1_16) AT=60.025n

* CHECK dout1_0 Vdout1_0ck12 = 1.0 time = 65
.meas tran vdout1_0ck12 FIND v(dout1_0) AT=65.025n

* CHECK dout1_1 Vdout1_1ck12 = 1.0 time = 65
.meas tran vdout1_1ck12 FIND v(dout1_1) AT=65.025n

* CHECK dout1_2 Vdout1_2ck12 = 0 time = 65
.meas tran vdout1_2ck12 FIND v(dout1_2) AT=65.025n

* CHECK dout1_3 Vdout1_3ck12 = 0 time = 65
.meas tran vdout1_3ck12 FIND v(dout1_3) AT=65.025n

* CHECK dout1_4 Vdout1_4ck12 = 0 time = 65
.meas tran vdout1_4ck12 FIND v(dout1_4) AT=65.025n

* CHECK dout1_5 Vdout1_5ck12 = 1.0 time = 65
.meas tran vdout1_5ck12 FIND v(dout1_5) AT=65.025n

* CHECK dout1_6 Vdout1_6ck12 = 0 time = 65
.meas tran vdout1_6ck12 FIND v(dout1_6) AT=65.025n

* CHECK dout1_7 Vdout1_7ck12 = 0 time = 65
.meas tran vdout1_7ck12 FIND v(dout1_7) AT=65.025n

* CHECK dout1_8 Vdout1_8ck12 = 1.0 time = 65
.meas tran vdout1_8ck12 FIND v(dout1_8) AT=65.025n

* CHECK dout1_9 Vdout1_9ck12 = 1.0 time = 65
.meas tran vdout1_9ck12 FIND v(dout1_9) AT=65.025n

* CHECK dout1_10 Vdout1_10ck12 = 0 time = 65
.meas tran vdout1_10ck12 FIND v(dout1_10) AT=65.025n

* CHECK dout1_11 Vdout1_11ck12 = 0 time = 65
.meas tran vdout1_11ck12 FIND v(dout1_11) AT=65.025n

* CHECK dout1_12 Vdout1_12ck12 = 1.0 time = 65
.meas tran vdout1_12ck12 FIND v(dout1_12) AT=65.025n

* CHECK dout1_13 Vdout1_13ck12 = 1.0 time = 65
.meas tran vdout1_13ck12 FIND v(dout1_13) AT=65.025n

* CHECK dout1_14 Vdout1_14ck12 = 1.0 time = 65
.meas tran vdout1_14ck12 FIND v(dout1_14) AT=65.025n

* CHECK dout1_15 Vdout1_15ck12 = 1.0 time = 65
.meas tran vdout1_15ck12 FIND v(dout1_15) AT=65.025n

* CHECK dout1_16 Vdout1_16ck12 = 0 time = 65
.meas tran vdout1_16ck12 FIND v(dout1_16) AT=65.025n

* CHECK dout1_0 Vdout1_0ck17 = 1.0 time = 90
.meas tran vdout1_0ck17 FIND v(dout1_0) AT=90.025n

* CHECK dout1_1 Vdout1_1ck17 = 1.0 time = 90
.meas tran vdout1_1ck17 FIND v(dout1_1) AT=90.025n

* CHECK dout1_2 Vdout1_2ck17 = 0 time = 90
.meas tran vdout1_2ck17 FIND v(dout1_2) AT=90.025n

* CHECK dout1_3 Vdout1_3ck17 = 0 time = 90
.meas tran vdout1_3ck17 FIND v(dout1_3) AT=90.025n

* CHECK dout1_4 Vdout1_4ck17 = 0 time = 90
.meas tran vdout1_4ck17 FIND v(dout1_4) AT=90.025n

* CHECK dout1_5 Vdout1_5ck17 = 1.0 time = 90
.meas tran vdout1_5ck17 FIND v(dout1_5) AT=90.025n

* CHECK dout1_6 Vdout1_6ck17 = 0 time = 90
.meas tran vdout1_6ck17 FIND v(dout1_6) AT=90.025n

* CHECK dout1_7 Vdout1_7ck17 = 0 time = 90
.meas tran vdout1_7ck17 FIND v(dout1_7) AT=90.025n

* CHECK dout1_8 Vdout1_8ck17 = 1.0 time = 90
.meas tran vdout1_8ck17 FIND v(dout1_8) AT=90.025n

* CHECK dout1_9 Vdout1_9ck17 = 1.0 time = 90
.meas tran vdout1_9ck17 FIND v(dout1_9) AT=90.025n

* CHECK dout1_10 Vdout1_10ck17 = 0 time = 90
.meas tran vdout1_10ck17 FIND v(dout1_10) AT=90.025n

* CHECK dout1_11 Vdout1_11ck17 = 0 time = 90
.meas tran vdout1_11ck17 FIND v(dout1_11) AT=90.025n

* CHECK dout1_12 Vdout1_12ck17 = 1.0 time = 90
.meas tran vdout1_12ck17 FIND v(dout1_12) AT=90.025n

* CHECK dout1_13 Vdout1_13ck17 = 1.0 time = 90
.meas tran vdout1_13ck17 FIND v(dout1_13) AT=90.025n

* CHECK dout1_14 Vdout1_14ck17 = 1.0 time = 90
.meas tran vdout1_14ck17 FIND v(dout1_14) AT=90.025n

* CHECK dout1_15 Vdout1_15ck17 = 1.0 time = 90
.meas tran vdout1_15ck17 FIND v(dout1_15) AT=90.025n

* CHECK dout1_16 Vdout1_16ck17 = 0 time = 90
.meas tran vdout1_16ck17 FIND v(dout1_16) AT=90.025n

* CHECK dout1_0 Vdout1_0ck18 = 1.0 time = 95
.meas tran vdout1_0ck18 FIND v(dout1_0) AT=95.025n

* CHECK dout1_1 Vdout1_1ck18 = 0 time = 95
.meas tran vdout1_1ck18 FIND v(dout1_1) AT=95.025n

* CHECK dout1_2 Vdout1_2ck18 = 0 time = 95
.meas tran vdout1_2ck18 FIND v(dout1_2) AT=95.025n

* CHECK dout1_3 Vdout1_3ck18 = 1.0 time = 95
.meas tran vdout1_3ck18 FIND v(dout1_3) AT=95.025n

* CHECK dout1_4 Vdout1_4ck18 = 0 time = 95
.meas tran vdout1_4ck18 FIND v(dout1_4) AT=95.025n

* CHECK dout1_5 Vdout1_5ck18 = 1.0 time = 95
.meas tran vdout1_5ck18 FIND v(dout1_5) AT=95.025n

* CHECK dout1_6 Vdout1_6ck18 = 1.0 time = 95
.meas tran vdout1_6ck18 FIND v(dout1_6) AT=95.025n

* CHECK dout1_7 Vdout1_7ck18 = 1.0 time = 95
.meas tran vdout1_7ck18 FIND v(dout1_7) AT=95.025n

* CHECK dout1_8 Vdout1_8ck18 = 1.0 time = 95
.meas tran vdout1_8ck18 FIND v(dout1_8) AT=95.025n

* CHECK dout1_9 Vdout1_9ck18 = 1.0 time = 95
.meas tran vdout1_9ck18 FIND v(dout1_9) AT=95.025n

* CHECK dout1_10 Vdout1_10ck18 = 1.0 time = 95
.meas tran vdout1_10ck18 FIND v(dout1_10) AT=95.025n

* CHECK dout1_11 Vdout1_11ck18 = 0 time = 95
.meas tran vdout1_11ck18 FIND v(dout1_11) AT=95.025n

* CHECK dout1_12 Vdout1_12ck18 = 0 time = 95
.meas tran vdout1_12ck18 FIND v(dout1_12) AT=95.025n

* CHECK dout1_13 Vdout1_13ck18 = 1.0 time = 95
.meas tran vdout1_13ck18 FIND v(dout1_13) AT=95.025n

* CHECK dout1_14 Vdout1_14ck18 = 0 time = 95
.meas tran vdout1_14ck18 FIND v(dout1_14) AT=95.025n

* CHECK dout1_15 Vdout1_15ck18 = 0 time = 95
.meas tran vdout1_15ck18 FIND v(dout1_15) AT=95.025n

* CHECK dout1_16 Vdout1_16ck18 = 0 time = 95
.meas tran vdout1_16ck18 FIND v(dout1_16) AT=95.025n

* CHECK dout1_0 Vdout1_0ck19 = 1.0 time = 100
.meas tran vdout1_0ck19 FIND v(dout1_0) AT=100.025n

* CHECK dout1_1 Vdout1_1ck19 = 1.0 time = 100
.meas tran vdout1_1ck19 FIND v(dout1_1) AT=100.025n

* CHECK dout1_2 Vdout1_2ck19 = 0 time = 100
.meas tran vdout1_2ck19 FIND v(dout1_2) AT=100.025n

* CHECK dout1_3 Vdout1_3ck19 = 0 time = 100
.meas tran vdout1_3ck19 FIND v(dout1_3) AT=100.025n

* CHECK dout1_4 Vdout1_4ck19 = 0 time = 100
.meas tran vdout1_4ck19 FIND v(dout1_4) AT=100.025n

* CHECK dout1_5 Vdout1_5ck19 = 1.0 time = 100
.meas tran vdout1_5ck19 FIND v(dout1_5) AT=100.025n

* CHECK dout1_6 Vdout1_6ck19 = 0 time = 100
.meas tran vdout1_6ck19 FIND v(dout1_6) AT=100.025n

* CHECK dout1_7 Vdout1_7ck19 = 0 time = 100
.meas tran vdout1_7ck19 FIND v(dout1_7) AT=100.025n

* CHECK dout1_8 Vdout1_8ck19 = 1.0 time = 100
.meas tran vdout1_8ck19 FIND v(dout1_8) AT=100.025n

* CHECK dout1_9 Vdout1_9ck19 = 1.0 time = 100
.meas tran vdout1_9ck19 FIND v(dout1_9) AT=100.025n

* CHECK dout1_10 Vdout1_10ck19 = 0 time = 100
.meas tran vdout1_10ck19 FIND v(dout1_10) AT=100.025n

* CHECK dout1_11 Vdout1_11ck19 = 0 time = 100
.meas tran vdout1_11ck19 FIND v(dout1_11) AT=100.025n

* CHECK dout1_12 Vdout1_12ck19 = 1.0 time = 100
.meas tran vdout1_12ck19 FIND v(dout1_12) AT=100.025n

* CHECK dout1_13 Vdout1_13ck19 = 1.0 time = 100
.meas tran vdout1_13ck19 FIND v(dout1_13) AT=100.025n

* CHECK dout1_14 Vdout1_14ck19 = 1.0 time = 100
.meas tran vdout1_14ck19 FIND v(dout1_14) AT=100.025n

* CHECK dout1_15 Vdout1_15ck19 = 1.0 time = 100
.meas tran vdout1_15ck19 FIND v(dout1_15) AT=100.025n

* CHECK dout1_16 Vdout1_16ck19 = 0 time = 100
.meas tran vdout1_16ck19 FIND v(dout1_16) AT=100.025n

* CHECK dout1_0 Vdout1_0ck22 = 0 time = 115
.meas tran vdout1_0ck22 FIND v(dout1_0) AT=115.025n

* CHECK dout1_1 Vdout1_1ck22 = 1.0 time = 115
.meas tran vdout1_1ck22 FIND v(dout1_1) AT=115.025n

* CHECK dout1_2 Vdout1_2ck22 = 1.0 time = 115
.meas tran vdout1_2ck22 FIND v(dout1_2) AT=115.025n

* CHECK dout1_3 Vdout1_3ck22 = 1.0 time = 115
.meas tran vdout1_3ck22 FIND v(dout1_3) AT=115.025n

* CHECK dout1_4 Vdout1_4ck22 = 0 time = 115
.meas tran vdout1_4ck22 FIND v(dout1_4) AT=115.025n

* CHECK dout1_5 Vdout1_5ck22 = 1.0 time = 115
.meas tran vdout1_5ck22 FIND v(dout1_5) AT=115.025n

* CHECK dout1_6 Vdout1_6ck22 = 1.0 time = 115
.meas tran vdout1_6ck22 FIND v(dout1_6) AT=115.025n

* CHECK dout1_7 Vdout1_7ck22 = 1.0 time = 115
.meas tran vdout1_7ck22 FIND v(dout1_7) AT=115.025n

* CHECK dout1_8 Vdout1_8ck22 = 0 time = 115
.meas tran vdout1_8ck22 FIND v(dout1_8) AT=115.025n

* CHECK dout1_9 Vdout1_9ck22 = 0 time = 115
.meas tran vdout1_9ck22 FIND v(dout1_9) AT=115.025n

* CHECK dout1_10 Vdout1_10ck22 = 0 time = 115
.meas tran vdout1_10ck22 FIND v(dout1_10) AT=115.025n

* CHECK dout1_11 Vdout1_11ck22 = 0 time = 115
.meas tran vdout1_11ck22 FIND v(dout1_11) AT=115.025n

* CHECK dout1_12 Vdout1_12ck22 = 0 time = 115
.meas tran vdout1_12ck22 FIND v(dout1_12) AT=115.025n

* CHECK dout1_13 Vdout1_13ck22 = 0 time = 115
.meas tran vdout1_13ck22 FIND v(dout1_13) AT=115.025n

* CHECK dout1_14 Vdout1_14ck22 = 0 time = 115
.meas tran vdout1_14ck22 FIND v(dout1_14) AT=115.025n

* CHECK dout1_15 Vdout1_15ck22 = 1.0 time = 115
.meas tran vdout1_15ck22 FIND v(dout1_15) AT=115.025n

* CHECK dout1_16 Vdout1_16ck22 = 0 time = 115
.meas tran vdout1_16ck22 FIND v(dout1_16) AT=115.025n

* CHECK dout1_0 Vdout1_0ck23 = 1.0 time = 120
.meas tran vdout1_0ck23 FIND v(dout1_0) AT=120.025n

* CHECK dout1_1 Vdout1_1ck23 = 0 time = 120
.meas tran vdout1_1ck23 FIND v(dout1_1) AT=120.025n

* CHECK dout1_2 Vdout1_2ck23 = 1.0 time = 120
.meas tran vdout1_2ck23 FIND v(dout1_2) AT=120.025n

* CHECK dout1_3 Vdout1_3ck23 = 0 time = 120
.meas tran vdout1_3ck23 FIND v(dout1_3) AT=120.025n

* CHECK dout1_4 Vdout1_4ck23 = 1.0 time = 120
.meas tran vdout1_4ck23 FIND v(dout1_4) AT=120.025n

* CHECK dout1_5 Vdout1_5ck23 = 1.0 time = 120
.meas tran vdout1_5ck23 FIND v(dout1_5) AT=120.025n

* CHECK dout1_6 Vdout1_6ck23 = 1.0 time = 120
.meas tran vdout1_6ck23 FIND v(dout1_6) AT=120.025n

* CHECK dout1_7 Vdout1_7ck23 = 0 time = 120
.meas tran vdout1_7ck23 FIND v(dout1_7) AT=120.025n

* CHECK dout1_8 Vdout1_8ck23 = 0 time = 120
.meas tran vdout1_8ck23 FIND v(dout1_8) AT=120.025n

* CHECK dout1_9 Vdout1_9ck23 = 1.0 time = 120
.meas tran vdout1_9ck23 FIND v(dout1_9) AT=120.025n

* CHECK dout1_10 Vdout1_10ck23 = 1.0 time = 120
.meas tran vdout1_10ck23 FIND v(dout1_10) AT=120.025n

* CHECK dout1_11 Vdout1_11ck23 = 1.0 time = 120
.meas tran vdout1_11ck23 FIND v(dout1_11) AT=120.025n

* CHECK dout1_12 Vdout1_12ck23 = 0 time = 120
.meas tran vdout1_12ck23 FIND v(dout1_12) AT=120.025n

* CHECK dout1_13 Vdout1_13ck23 = 0 time = 120
.meas tran vdout1_13ck23 FIND v(dout1_13) AT=120.025n

* CHECK dout1_14 Vdout1_14ck23 = 1.0 time = 120
.meas tran vdout1_14ck23 FIND v(dout1_14) AT=120.025n

* CHECK dout1_15 Vdout1_15ck23 = 0 time = 120
.meas tran vdout1_15ck23 FIND v(dout1_15) AT=120.025n

* CHECK dout1_16 Vdout1_16ck23 = 0 time = 120
.meas tran vdout1_16ck23 FIND v(dout1_16) AT=120.025n

* CHECK dout1_0 Vdout1_0ck25 = 1.0 time = 130
.meas tran vdout1_0ck25 FIND v(dout1_0) AT=130.025n

* CHECK dout1_1 Vdout1_1ck25 = 0 time = 130
.meas tran vdout1_1ck25 FIND v(dout1_1) AT=130.025n

* CHECK dout1_2 Vdout1_2ck25 = 0 time = 130
.meas tran vdout1_2ck25 FIND v(dout1_2) AT=130.025n

* CHECK dout1_3 Vdout1_3ck25 = 1.0 time = 130
.meas tran vdout1_3ck25 FIND v(dout1_3) AT=130.025n

* CHECK dout1_4 Vdout1_4ck25 = 0 time = 130
.meas tran vdout1_4ck25 FIND v(dout1_4) AT=130.025n

* CHECK dout1_5 Vdout1_5ck25 = 1.0 time = 130
.meas tran vdout1_5ck25 FIND v(dout1_5) AT=130.025n

* CHECK dout1_6 Vdout1_6ck25 = 1.0 time = 130
.meas tran vdout1_6ck25 FIND v(dout1_6) AT=130.025n

* CHECK dout1_7 Vdout1_7ck25 = 1.0 time = 130
.meas tran vdout1_7ck25 FIND v(dout1_7) AT=130.025n

* CHECK dout1_8 Vdout1_8ck25 = 1.0 time = 130
.meas tran vdout1_8ck25 FIND v(dout1_8) AT=130.025n

* CHECK dout1_9 Vdout1_9ck25 = 1.0 time = 130
.meas tran vdout1_9ck25 FIND v(dout1_9) AT=130.025n

* CHECK dout1_10 Vdout1_10ck25 = 1.0 time = 130
.meas tran vdout1_10ck25 FIND v(dout1_10) AT=130.025n

* CHECK dout1_11 Vdout1_11ck25 = 0 time = 130
.meas tran vdout1_11ck25 FIND v(dout1_11) AT=130.025n

* CHECK dout1_12 Vdout1_12ck25 = 0 time = 130
.meas tran vdout1_12ck25 FIND v(dout1_12) AT=130.025n

* CHECK dout1_13 Vdout1_13ck25 = 1.0 time = 130
.meas tran vdout1_13ck25 FIND v(dout1_13) AT=130.025n

* CHECK dout1_14 Vdout1_14ck25 = 0 time = 130
.meas tran vdout1_14ck25 FIND v(dout1_14) AT=130.025n

* CHECK dout1_15 Vdout1_15ck25 = 0 time = 130
.meas tran vdout1_15ck25 FIND v(dout1_15) AT=130.025n

* CHECK dout1_16 Vdout1_16ck25 = 0 time = 130
.meas tran vdout1_16ck25 FIND v(dout1_16) AT=130.025n

* CHECK dout1_0 Vdout1_0ck29 = 1.0 time = 150
.meas tran vdout1_0ck29 FIND v(dout1_0) AT=150.025n

* CHECK dout1_1 Vdout1_1ck29 = 0 time = 150
.meas tran vdout1_1ck29 FIND v(dout1_1) AT=150.025n

* CHECK dout1_2 Vdout1_2ck29 = 0 time = 150
.meas tran vdout1_2ck29 FIND v(dout1_2) AT=150.025n

* CHECK dout1_3 Vdout1_3ck29 = 1.0 time = 150
.meas tran vdout1_3ck29 FIND v(dout1_3) AT=150.025n

* CHECK dout1_4 Vdout1_4ck29 = 0 time = 150
.meas tran vdout1_4ck29 FIND v(dout1_4) AT=150.025n

* CHECK dout1_5 Vdout1_5ck29 = 1.0 time = 150
.meas tran vdout1_5ck29 FIND v(dout1_5) AT=150.025n

* CHECK dout1_6 Vdout1_6ck29 = 1.0 time = 150
.meas tran vdout1_6ck29 FIND v(dout1_6) AT=150.025n

* CHECK dout1_7 Vdout1_7ck29 = 1.0 time = 150
.meas tran vdout1_7ck29 FIND v(dout1_7) AT=150.025n

* CHECK dout1_8 Vdout1_8ck29 = 1.0 time = 150
.meas tran vdout1_8ck29 FIND v(dout1_8) AT=150.025n

* CHECK dout1_9 Vdout1_9ck29 = 1.0 time = 150
.meas tran vdout1_9ck29 FIND v(dout1_9) AT=150.025n

* CHECK dout1_10 Vdout1_10ck29 = 1.0 time = 150
.meas tran vdout1_10ck29 FIND v(dout1_10) AT=150.025n

* CHECK dout1_11 Vdout1_11ck29 = 0 time = 150
.meas tran vdout1_11ck29 FIND v(dout1_11) AT=150.025n

* CHECK dout1_12 Vdout1_12ck29 = 0 time = 150
.meas tran vdout1_12ck29 FIND v(dout1_12) AT=150.025n

* CHECK dout1_13 Vdout1_13ck29 = 1.0 time = 150
.meas tran vdout1_13ck29 FIND v(dout1_13) AT=150.025n

* CHECK dout1_14 Vdout1_14ck29 = 0 time = 150
.meas tran vdout1_14ck29 FIND v(dout1_14) AT=150.025n

* CHECK dout1_15 Vdout1_15ck29 = 0 time = 150
.meas tran vdout1_15ck29 FIND v(dout1_15) AT=150.025n

* CHECK dout1_16 Vdout1_16ck29 = 0 time = 150
.meas tran vdout1_16ck29 FIND v(dout1_16) AT=150.025n

* CHECK dout1_0 Vdout1_0ck32 = 0 time = 165
.meas tran vdout1_0ck32 FIND v(dout1_0) AT=165.025n

* CHECK dout1_1 Vdout1_1ck32 = 1.0 time = 165
.meas tran vdout1_1ck32 FIND v(dout1_1) AT=165.025n

* CHECK dout1_2 Vdout1_2ck32 = 1.0 time = 165
.meas tran vdout1_2ck32 FIND v(dout1_2) AT=165.025n

* CHECK dout1_3 Vdout1_3ck32 = 1.0 time = 165
.meas tran vdout1_3ck32 FIND v(dout1_3) AT=165.025n

* CHECK dout1_4 Vdout1_4ck32 = 1.0 time = 165
.meas tran vdout1_4ck32 FIND v(dout1_4) AT=165.025n

* CHECK dout1_5 Vdout1_5ck32 = 1.0 time = 165
.meas tran vdout1_5ck32 FIND v(dout1_5) AT=165.025n

* CHECK dout1_6 Vdout1_6ck32 = 1.0 time = 165
.meas tran vdout1_6ck32 FIND v(dout1_6) AT=165.025n

* CHECK dout1_7 Vdout1_7ck32 = 1.0 time = 165
.meas tran vdout1_7ck32 FIND v(dout1_7) AT=165.025n

* CHECK dout1_8 Vdout1_8ck32 = 1.0 time = 165
.meas tran vdout1_8ck32 FIND v(dout1_8) AT=165.025n

* CHECK dout1_9 Vdout1_9ck32 = 0 time = 165
.meas tran vdout1_9ck32 FIND v(dout1_9) AT=165.025n

* CHECK dout1_10 Vdout1_10ck32 = 0 time = 165
.meas tran vdout1_10ck32 FIND v(dout1_10) AT=165.025n

* CHECK dout1_11 Vdout1_11ck32 = 1.0 time = 165
.meas tran vdout1_11ck32 FIND v(dout1_11) AT=165.025n

* CHECK dout1_12 Vdout1_12ck32 = 1.0 time = 165
.meas tran vdout1_12ck32 FIND v(dout1_12) AT=165.025n

* CHECK dout1_13 Vdout1_13ck32 = 0 time = 165
.meas tran vdout1_13ck32 FIND v(dout1_13) AT=165.025n

* CHECK dout1_14 Vdout1_14ck32 = 1.0 time = 165
.meas tran vdout1_14ck32 FIND v(dout1_14) AT=165.025n

* CHECK dout1_15 Vdout1_15ck32 = 0 time = 165
.meas tran vdout1_15ck32 FIND v(dout1_15) AT=165.025n

* CHECK dout1_16 Vdout1_16ck32 = 1.0 time = 165
.meas tran vdout1_16ck32 FIND v(dout1_16) AT=165.025n

* CHECK dout1_0 Vdout1_0ck33 = 0 time = 170
.meas tran vdout1_0ck33 FIND v(dout1_0) AT=170.025n

* CHECK dout1_1 Vdout1_1ck33 = 0 time = 170
.meas tran vdout1_1ck33 FIND v(dout1_1) AT=170.025n

* CHECK dout1_2 Vdout1_2ck33 = 1.0 time = 170
.meas tran vdout1_2ck33 FIND v(dout1_2) AT=170.025n

* CHECK dout1_3 Vdout1_3ck33 = 1.0 time = 170
.meas tran vdout1_3ck33 FIND v(dout1_3) AT=170.025n

* CHECK dout1_4 Vdout1_4ck33 = 1.0 time = 170
.meas tran vdout1_4ck33 FIND v(dout1_4) AT=170.025n

* CHECK dout1_5 Vdout1_5ck33 = 1.0 time = 170
.meas tran vdout1_5ck33 FIND v(dout1_5) AT=170.025n

* CHECK dout1_6 Vdout1_6ck33 = 1.0 time = 170
.meas tran vdout1_6ck33 FIND v(dout1_6) AT=170.025n

* CHECK dout1_7 Vdout1_7ck33 = 0 time = 170
.meas tran vdout1_7ck33 FIND v(dout1_7) AT=170.025n

* CHECK dout1_8 Vdout1_8ck33 = 0 time = 170
.meas tran vdout1_8ck33 FIND v(dout1_8) AT=170.025n

* CHECK dout1_9 Vdout1_9ck33 = 0 time = 170
.meas tran vdout1_9ck33 FIND v(dout1_9) AT=170.025n

* CHECK dout1_10 Vdout1_10ck33 = 1.0 time = 170
.meas tran vdout1_10ck33 FIND v(dout1_10) AT=170.025n

* CHECK dout1_11 Vdout1_11ck33 = 0 time = 170
.meas tran vdout1_11ck33 FIND v(dout1_11) AT=170.025n

* CHECK dout1_12 Vdout1_12ck33 = 0 time = 170
.meas tran vdout1_12ck33 FIND v(dout1_12) AT=170.025n

* CHECK dout1_13 Vdout1_13ck33 = 1.0 time = 170
.meas tran vdout1_13ck33 FIND v(dout1_13) AT=170.025n

* CHECK dout1_14 Vdout1_14ck33 = 1.0 time = 170
.meas tran vdout1_14ck33 FIND v(dout1_14) AT=170.025n

* CHECK dout1_15 Vdout1_15ck33 = 1.0 time = 170
.meas tran vdout1_15ck33 FIND v(dout1_15) AT=170.025n

* CHECK dout1_16 Vdout1_16ck33 = 0 time = 170
.meas tran vdout1_16ck33 FIND v(dout1_16) AT=170.025n

* CHECK dout1_0 Vdout1_0ck34 = 0 time = 175
.meas tran vdout1_0ck34 FIND v(dout1_0) AT=175.025n

* CHECK dout1_1 Vdout1_1ck34 = 1.0 time = 175
.meas tran vdout1_1ck34 FIND v(dout1_1) AT=175.025n

* CHECK dout1_2 Vdout1_2ck34 = 1.0 time = 175
.meas tran vdout1_2ck34 FIND v(dout1_2) AT=175.025n

* CHECK dout1_3 Vdout1_3ck34 = 1.0 time = 175
.meas tran vdout1_3ck34 FIND v(dout1_3) AT=175.025n

* CHECK dout1_4 Vdout1_4ck34 = 1.0 time = 175
.meas tran vdout1_4ck34 FIND v(dout1_4) AT=175.025n

* CHECK dout1_5 Vdout1_5ck34 = 1.0 time = 175
.meas tran vdout1_5ck34 FIND v(dout1_5) AT=175.025n

* CHECK dout1_6 Vdout1_6ck34 = 1.0 time = 175
.meas tran vdout1_6ck34 FIND v(dout1_6) AT=175.025n

* CHECK dout1_7 Vdout1_7ck34 = 1.0 time = 175
.meas tran vdout1_7ck34 FIND v(dout1_7) AT=175.025n

* CHECK dout1_8 Vdout1_8ck34 = 1.0 time = 175
.meas tran vdout1_8ck34 FIND v(dout1_8) AT=175.025n

* CHECK dout1_9 Vdout1_9ck34 = 0 time = 175
.meas tran vdout1_9ck34 FIND v(dout1_9) AT=175.025n

* CHECK dout1_10 Vdout1_10ck34 = 0 time = 175
.meas tran vdout1_10ck34 FIND v(dout1_10) AT=175.025n

* CHECK dout1_11 Vdout1_11ck34 = 1.0 time = 175
.meas tran vdout1_11ck34 FIND v(dout1_11) AT=175.025n

* CHECK dout1_12 Vdout1_12ck34 = 1.0 time = 175
.meas tran vdout1_12ck34 FIND v(dout1_12) AT=175.025n

* CHECK dout1_13 Vdout1_13ck34 = 0 time = 175
.meas tran vdout1_13ck34 FIND v(dout1_13) AT=175.025n

* CHECK dout1_14 Vdout1_14ck34 = 1.0 time = 175
.meas tran vdout1_14ck34 FIND v(dout1_14) AT=175.025n

* CHECK dout1_15 Vdout1_15ck34 = 0 time = 175
.meas tran vdout1_15ck34 FIND v(dout1_15) AT=175.025n

* CHECK dout1_16 Vdout1_16ck34 = 1.0 time = 175
.meas tran vdout1_16ck34 FIND v(dout1_16) AT=175.025n

* CHECK dout1_0 Vdout1_0ck35 = 0 time = 180
.meas tran vdout1_0ck35 FIND v(dout1_0) AT=180.025n

* CHECK dout1_1 Vdout1_1ck35 = 1.0 time = 180
.meas tran vdout1_1ck35 FIND v(dout1_1) AT=180.025n

* CHECK dout1_2 Vdout1_2ck35 = 1.0 time = 180
.meas tran vdout1_2ck35 FIND v(dout1_2) AT=180.025n

* CHECK dout1_3 Vdout1_3ck35 = 1.0 time = 180
.meas tran vdout1_3ck35 FIND v(dout1_3) AT=180.025n

* CHECK dout1_4 Vdout1_4ck35 = 1.0 time = 180
.meas tran vdout1_4ck35 FIND v(dout1_4) AT=180.025n

* CHECK dout1_5 Vdout1_5ck35 = 1.0 time = 180
.meas tran vdout1_5ck35 FIND v(dout1_5) AT=180.025n

* CHECK dout1_6 Vdout1_6ck35 = 1.0 time = 180
.meas tran vdout1_6ck35 FIND v(dout1_6) AT=180.025n

* CHECK dout1_7 Vdout1_7ck35 = 1.0 time = 180
.meas tran vdout1_7ck35 FIND v(dout1_7) AT=180.025n

* CHECK dout1_8 Vdout1_8ck35 = 1.0 time = 180
.meas tran vdout1_8ck35 FIND v(dout1_8) AT=180.025n

* CHECK dout1_9 Vdout1_9ck35 = 0 time = 180
.meas tran vdout1_9ck35 FIND v(dout1_9) AT=180.025n

* CHECK dout1_10 Vdout1_10ck35 = 0 time = 180
.meas tran vdout1_10ck35 FIND v(dout1_10) AT=180.025n

* CHECK dout1_11 Vdout1_11ck35 = 1.0 time = 180
.meas tran vdout1_11ck35 FIND v(dout1_11) AT=180.025n

* CHECK dout1_12 Vdout1_12ck35 = 1.0 time = 180
.meas tran vdout1_12ck35 FIND v(dout1_12) AT=180.025n

* CHECK dout1_13 Vdout1_13ck35 = 0 time = 180
.meas tran vdout1_13ck35 FIND v(dout1_13) AT=180.025n

* CHECK dout1_14 Vdout1_14ck35 = 1.0 time = 180
.meas tran vdout1_14ck35 FIND v(dout1_14) AT=180.025n

* CHECK dout1_15 Vdout1_15ck35 = 0 time = 180
.meas tran vdout1_15ck35 FIND v(dout1_15) AT=180.025n

* CHECK dout1_16 Vdout1_16ck35 = 1.0 time = 180
.meas tran vdout1_16ck35 FIND v(dout1_16) AT=180.025n

* CHECK dout1_0 Vdout1_0ck37 = 1.0 time = 190
.meas tran vdout1_0ck37 FIND v(dout1_0) AT=190.025n

* CHECK dout1_1 Vdout1_1ck37 = 1.0 time = 190
.meas tran vdout1_1ck37 FIND v(dout1_1) AT=190.025n

* CHECK dout1_2 Vdout1_2ck37 = 1.0 time = 190
.meas tran vdout1_2ck37 FIND v(dout1_2) AT=190.025n

* CHECK dout1_3 Vdout1_3ck37 = 0 time = 190
.meas tran vdout1_3ck37 FIND v(dout1_3) AT=190.025n

* CHECK dout1_4 Vdout1_4ck37 = 0 time = 190
.meas tran vdout1_4ck37 FIND v(dout1_4) AT=190.025n

* CHECK dout1_5 Vdout1_5ck37 = 0 time = 190
.meas tran vdout1_5ck37 FIND v(dout1_5) AT=190.025n

* CHECK dout1_6 Vdout1_6ck37 = 0 time = 190
.meas tran vdout1_6ck37 FIND v(dout1_6) AT=190.025n

* CHECK dout1_7 Vdout1_7ck37 = 0 time = 190
.meas tran vdout1_7ck37 FIND v(dout1_7) AT=190.025n

* CHECK dout1_8 Vdout1_8ck37 = 1.0 time = 190
.meas tran vdout1_8ck37 FIND v(dout1_8) AT=190.025n

* CHECK dout1_9 Vdout1_9ck37 = 0 time = 190
.meas tran vdout1_9ck37 FIND v(dout1_9) AT=190.025n

* CHECK dout1_10 Vdout1_10ck37 = 0 time = 190
.meas tran vdout1_10ck37 FIND v(dout1_10) AT=190.025n

* CHECK dout1_11 Vdout1_11ck37 = 1.0 time = 190
.meas tran vdout1_11ck37 FIND v(dout1_11) AT=190.025n

* CHECK dout1_12 Vdout1_12ck37 = 1.0 time = 190
.meas tran vdout1_12ck37 FIND v(dout1_12) AT=190.025n

* CHECK dout1_13 Vdout1_13ck37 = 0 time = 190
.meas tran vdout1_13ck37 FIND v(dout1_13) AT=190.025n

* CHECK dout1_14 Vdout1_14ck37 = 0 time = 190
.meas tran vdout1_14ck37 FIND v(dout1_14) AT=190.025n

* CHECK dout1_15 Vdout1_15ck37 = 1.0 time = 190
.meas tran vdout1_15ck37 FIND v(dout1_15) AT=190.025n

* CHECK dout1_16 Vdout1_16ck37 = 0 time = 190
.meas tran vdout1_16ck37 FIND v(dout1_16) AT=190.025n

* CHECK dout1_0 Vdout1_0ck38 = 0 time = 195
.meas tran vdout1_0ck38 FIND v(dout1_0) AT=195.025n

* CHECK dout1_1 Vdout1_1ck38 = 0 time = 195
.meas tran vdout1_1ck38 FIND v(dout1_1) AT=195.025n

* CHECK dout1_2 Vdout1_2ck38 = 0 time = 195
.meas tran vdout1_2ck38 FIND v(dout1_2) AT=195.025n

* CHECK dout1_3 Vdout1_3ck38 = 0 time = 195
.meas tran vdout1_3ck38 FIND v(dout1_3) AT=195.025n

* CHECK dout1_4 Vdout1_4ck38 = 1.0 time = 195
.meas tran vdout1_4ck38 FIND v(dout1_4) AT=195.025n

* CHECK dout1_5 Vdout1_5ck38 = 0 time = 195
.meas tran vdout1_5ck38 FIND v(dout1_5) AT=195.025n

* CHECK dout1_6 Vdout1_6ck38 = 0 time = 195
.meas tran vdout1_6ck38 FIND v(dout1_6) AT=195.025n

* CHECK dout1_7 Vdout1_7ck38 = 1.0 time = 195
.meas tran vdout1_7ck38 FIND v(dout1_7) AT=195.025n

* CHECK dout1_8 Vdout1_8ck38 = 0 time = 195
.meas tran vdout1_8ck38 FIND v(dout1_8) AT=195.025n

* CHECK dout1_9 Vdout1_9ck38 = 0 time = 195
.meas tran vdout1_9ck38 FIND v(dout1_9) AT=195.025n

* CHECK dout1_10 Vdout1_10ck38 = 0 time = 195
.meas tran vdout1_10ck38 FIND v(dout1_10) AT=195.025n

* CHECK dout1_11 Vdout1_11ck38 = 1.0 time = 195
.meas tran vdout1_11ck38 FIND v(dout1_11) AT=195.025n

* CHECK dout1_12 Vdout1_12ck38 = 1.0 time = 195
.meas tran vdout1_12ck38 FIND v(dout1_12) AT=195.025n

* CHECK dout1_13 Vdout1_13ck38 = 1.0 time = 195
.meas tran vdout1_13ck38 FIND v(dout1_13) AT=195.025n

* CHECK dout1_14 Vdout1_14ck38 = 0 time = 195
.meas tran vdout1_14ck38 FIND v(dout1_14) AT=195.025n

* CHECK dout1_15 Vdout1_15ck38 = 1.0 time = 195
.meas tran vdout1_15ck38 FIND v(dout1_15) AT=195.025n

* CHECK dout1_16 Vdout1_16ck38 = 1.0 time = 195
.meas tran vdout1_16ck38 FIND v(dout1_16) AT=195.025n

* CHECK dout1_0 Vdout1_0ck39 = 0 time = 200
.meas tran vdout1_0ck39 FIND v(dout1_0) AT=200.025n

* CHECK dout1_1 Vdout1_1ck39 = 1.0 time = 200
.meas tran vdout1_1ck39 FIND v(dout1_1) AT=200.025n

* CHECK dout1_2 Vdout1_2ck39 = 1.0 time = 200
.meas tran vdout1_2ck39 FIND v(dout1_2) AT=200.025n

* CHECK dout1_3 Vdout1_3ck39 = 1.0 time = 200
.meas tran vdout1_3ck39 FIND v(dout1_3) AT=200.025n

* CHECK dout1_4 Vdout1_4ck39 = 1.0 time = 200
.meas tran vdout1_4ck39 FIND v(dout1_4) AT=200.025n

* CHECK dout1_5 Vdout1_5ck39 = 1.0 time = 200
.meas tran vdout1_5ck39 FIND v(dout1_5) AT=200.025n

* CHECK dout1_6 Vdout1_6ck39 = 1.0 time = 200
.meas tran vdout1_6ck39 FIND v(dout1_6) AT=200.025n

* CHECK dout1_7 Vdout1_7ck39 = 1.0 time = 200
.meas tran vdout1_7ck39 FIND v(dout1_7) AT=200.025n

* CHECK dout1_8 Vdout1_8ck39 = 1.0 time = 200
.meas tran vdout1_8ck39 FIND v(dout1_8) AT=200.025n

* CHECK dout1_9 Vdout1_9ck39 = 0 time = 200
.meas tran vdout1_9ck39 FIND v(dout1_9) AT=200.025n

* CHECK dout1_10 Vdout1_10ck39 = 0 time = 200
.meas tran vdout1_10ck39 FIND v(dout1_10) AT=200.025n

* CHECK dout1_11 Vdout1_11ck39 = 1.0 time = 200
.meas tran vdout1_11ck39 FIND v(dout1_11) AT=200.025n

* CHECK dout1_12 Vdout1_12ck39 = 1.0 time = 200
.meas tran vdout1_12ck39 FIND v(dout1_12) AT=200.025n

* CHECK dout1_13 Vdout1_13ck39 = 0 time = 200
.meas tran vdout1_13ck39 FIND v(dout1_13) AT=200.025n

* CHECK dout1_14 Vdout1_14ck39 = 1.0 time = 200
.meas tran vdout1_14ck39 FIND v(dout1_14) AT=200.025n

* CHECK dout1_15 Vdout1_15ck39 = 0 time = 200
.meas tran vdout1_15ck39 FIND v(dout1_15) AT=200.025n

* CHECK dout1_16 Vdout1_16ck39 = 1.0 time = 200
.meas tran vdout1_16ck39 FIND v(dout1_16) AT=200.025n

* CHECK dout1_0 Vdout1_0ck40 = 0 time = 205
.meas tran vdout1_0ck40 FIND v(dout1_0) AT=205.025n

* CHECK dout1_1 Vdout1_1ck40 = 1.0 time = 205
.meas tran vdout1_1ck40 FIND v(dout1_1) AT=205.025n

* CHECK dout1_2 Vdout1_2ck40 = 1.0 time = 205
.meas tran vdout1_2ck40 FIND v(dout1_2) AT=205.025n

* CHECK dout1_3 Vdout1_3ck40 = 1.0 time = 205
.meas tran vdout1_3ck40 FIND v(dout1_3) AT=205.025n

* CHECK dout1_4 Vdout1_4ck40 = 1.0 time = 205
.meas tran vdout1_4ck40 FIND v(dout1_4) AT=205.025n

* CHECK dout1_5 Vdout1_5ck40 = 1.0 time = 205
.meas tran vdout1_5ck40 FIND v(dout1_5) AT=205.025n

* CHECK dout1_6 Vdout1_6ck40 = 1.0 time = 205
.meas tran vdout1_6ck40 FIND v(dout1_6) AT=205.025n

* CHECK dout1_7 Vdout1_7ck40 = 1.0 time = 205
.meas tran vdout1_7ck40 FIND v(dout1_7) AT=205.025n

* CHECK dout1_8 Vdout1_8ck40 = 1.0 time = 205
.meas tran vdout1_8ck40 FIND v(dout1_8) AT=205.025n

* CHECK dout1_9 Vdout1_9ck40 = 0 time = 205
.meas tran vdout1_9ck40 FIND v(dout1_9) AT=205.025n

* CHECK dout1_10 Vdout1_10ck40 = 0 time = 205
.meas tran vdout1_10ck40 FIND v(dout1_10) AT=205.025n

* CHECK dout1_11 Vdout1_11ck40 = 1.0 time = 205
.meas tran vdout1_11ck40 FIND v(dout1_11) AT=205.025n

* CHECK dout1_12 Vdout1_12ck40 = 1.0 time = 205
.meas tran vdout1_12ck40 FIND v(dout1_12) AT=205.025n

* CHECK dout1_13 Vdout1_13ck40 = 0 time = 205
.meas tran vdout1_13ck40 FIND v(dout1_13) AT=205.025n

* CHECK dout1_14 Vdout1_14ck40 = 1.0 time = 205
.meas tran vdout1_14ck40 FIND v(dout1_14) AT=205.025n

* CHECK dout1_15 Vdout1_15ck40 = 0 time = 205
.meas tran vdout1_15ck40 FIND v(dout1_15) AT=205.025n

* CHECK dout1_16 Vdout1_16ck40 = 1.0 time = 205
.meas tran vdout1_16ck40 FIND v(dout1_16) AT=205.025n

* CHECK dout1_0 Vdout1_0ck43 = 1.0 time = 220
.meas tran vdout1_0ck43 FIND v(dout1_0) AT=220.025n

* CHECK dout1_1 Vdout1_1ck43 = 0 time = 220
.meas tran vdout1_1ck43 FIND v(dout1_1) AT=220.025n

* CHECK dout1_2 Vdout1_2ck43 = 1.0 time = 220
.meas tran vdout1_2ck43 FIND v(dout1_2) AT=220.025n

* CHECK dout1_3 Vdout1_3ck43 = 0 time = 220
.meas tran vdout1_3ck43 FIND v(dout1_3) AT=220.025n

* CHECK dout1_4 Vdout1_4ck43 = 0 time = 220
.meas tran vdout1_4ck43 FIND v(dout1_4) AT=220.025n

* CHECK dout1_5 Vdout1_5ck43 = 1.0 time = 220
.meas tran vdout1_5ck43 FIND v(dout1_5) AT=220.025n

* CHECK dout1_6 Vdout1_6ck43 = 0 time = 220
.meas tran vdout1_6ck43 FIND v(dout1_6) AT=220.025n

* CHECK dout1_7 Vdout1_7ck43 = 1.0 time = 220
.meas tran vdout1_7ck43 FIND v(dout1_7) AT=220.025n

* CHECK dout1_8 Vdout1_8ck43 = 1.0 time = 220
.meas tran vdout1_8ck43 FIND v(dout1_8) AT=220.025n

* CHECK dout1_9 Vdout1_9ck43 = 1.0 time = 220
.meas tran vdout1_9ck43 FIND v(dout1_9) AT=220.025n

* CHECK dout1_10 Vdout1_10ck43 = 0 time = 220
.meas tran vdout1_10ck43 FIND v(dout1_10) AT=220.025n

* CHECK dout1_11 Vdout1_11ck43 = 1.0 time = 220
.meas tran vdout1_11ck43 FIND v(dout1_11) AT=220.025n

* CHECK dout1_12 Vdout1_12ck43 = 0 time = 220
.meas tran vdout1_12ck43 FIND v(dout1_12) AT=220.025n

* CHECK dout1_13 Vdout1_13ck43 = 0 time = 220
.meas tran vdout1_13ck43 FIND v(dout1_13) AT=220.025n

* CHECK dout1_14 Vdout1_14ck43 = 0 time = 220
.meas tran vdout1_14ck43 FIND v(dout1_14) AT=220.025n

* CHECK dout1_15 Vdout1_15ck43 = 0 time = 220
.meas tran vdout1_15ck43 FIND v(dout1_15) AT=220.025n

* CHECK dout1_16 Vdout1_16ck43 = 0 time = 220
.meas tran vdout1_16ck43 FIND v(dout1_16) AT=220.025n

* CHECK dout1_0 Vdout1_0ck44 = 1.0 time = 225
.meas tran vdout1_0ck44 FIND v(dout1_0) AT=225.025n

* CHECK dout1_1 Vdout1_1ck44 = 1.0 time = 225
.meas tran vdout1_1ck44 FIND v(dout1_1) AT=225.025n

* CHECK dout1_2 Vdout1_2ck44 = 0 time = 225
.meas tran vdout1_2ck44 FIND v(dout1_2) AT=225.025n

* CHECK dout1_3 Vdout1_3ck44 = 0 time = 225
.meas tran vdout1_3ck44 FIND v(dout1_3) AT=225.025n

* CHECK dout1_4 Vdout1_4ck44 = 1.0 time = 225
.meas tran vdout1_4ck44 FIND v(dout1_4) AT=225.025n

* CHECK dout1_5 Vdout1_5ck44 = 0 time = 225
.meas tran vdout1_5ck44 FIND v(dout1_5) AT=225.025n

* CHECK dout1_6 Vdout1_6ck44 = 1.0 time = 225
.meas tran vdout1_6ck44 FIND v(dout1_6) AT=225.025n

* CHECK dout1_7 Vdout1_7ck44 = 1.0 time = 225
.meas tran vdout1_7ck44 FIND v(dout1_7) AT=225.025n

* CHECK dout1_8 Vdout1_8ck44 = 1.0 time = 225
.meas tran vdout1_8ck44 FIND v(dout1_8) AT=225.025n

* CHECK dout1_9 Vdout1_9ck44 = 0 time = 225
.meas tran vdout1_9ck44 FIND v(dout1_9) AT=225.025n

* CHECK dout1_10 Vdout1_10ck44 = 1.0 time = 225
.meas tran vdout1_10ck44 FIND v(dout1_10) AT=225.025n

* CHECK dout1_11 Vdout1_11ck44 = 0 time = 225
.meas tran vdout1_11ck44 FIND v(dout1_11) AT=225.025n

* CHECK dout1_12 Vdout1_12ck44 = 1.0 time = 225
.meas tran vdout1_12ck44 FIND v(dout1_12) AT=225.025n

* CHECK dout1_13 Vdout1_13ck44 = 1.0 time = 225
.meas tran vdout1_13ck44 FIND v(dout1_13) AT=225.025n

* CHECK dout1_14 Vdout1_14ck44 = 0 time = 225
.meas tran vdout1_14ck44 FIND v(dout1_14) AT=225.025n

* CHECK dout1_15 Vdout1_15ck44 = 1.0 time = 225
.meas tran vdout1_15ck44 FIND v(dout1_15) AT=225.025n

* CHECK dout1_16 Vdout1_16ck44 = 1.0 time = 225
.meas tran vdout1_16ck44 FIND v(dout1_16) AT=225.025n

* CHECK dout1_0 Vdout1_0ck45 = 1.0 time = 230
.meas tran vdout1_0ck45 FIND v(dout1_0) AT=230.025n

* CHECK dout1_1 Vdout1_1ck45 = 1.0 time = 230
.meas tran vdout1_1ck45 FIND v(dout1_1) AT=230.025n

* CHECK dout1_2 Vdout1_2ck45 = 0 time = 230
.meas tran vdout1_2ck45 FIND v(dout1_2) AT=230.025n

* CHECK dout1_3 Vdout1_3ck45 = 0 time = 230
.meas tran vdout1_3ck45 FIND v(dout1_3) AT=230.025n

* CHECK dout1_4 Vdout1_4ck45 = 1.0 time = 230
.meas tran vdout1_4ck45 FIND v(dout1_4) AT=230.025n

* CHECK dout1_5 Vdout1_5ck45 = 0 time = 230
.meas tran vdout1_5ck45 FIND v(dout1_5) AT=230.025n

* CHECK dout1_6 Vdout1_6ck45 = 1.0 time = 230
.meas tran vdout1_6ck45 FIND v(dout1_6) AT=230.025n

* CHECK dout1_7 Vdout1_7ck45 = 1.0 time = 230
.meas tran vdout1_7ck45 FIND v(dout1_7) AT=230.025n

* CHECK dout1_8 Vdout1_8ck45 = 1.0 time = 230
.meas tran vdout1_8ck45 FIND v(dout1_8) AT=230.025n

* CHECK dout1_9 Vdout1_9ck45 = 0 time = 230
.meas tran vdout1_9ck45 FIND v(dout1_9) AT=230.025n

* CHECK dout1_10 Vdout1_10ck45 = 1.0 time = 230
.meas tran vdout1_10ck45 FIND v(dout1_10) AT=230.025n

* CHECK dout1_11 Vdout1_11ck45 = 0 time = 230
.meas tran vdout1_11ck45 FIND v(dout1_11) AT=230.025n

* CHECK dout1_12 Vdout1_12ck45 = 1.0 time = 230
.meas tran vdout1_12ck45 FIND v(dout1_12) AT=230.025n

* CHECK dout1_13 Vdout1_13ck45 = 1.0 time = 230
.meas tran vdout1_13ck45 FIND v(dout1_13) AT=230.025n

* CHECK dout1_14 Vdout1_14ck45 = 0 time = 230
.meas tran vdout1_14ck45 FIND v(dout1_14) AT=230.025n

* CHECK dout1_15 Vdout1_15ck45 = 1.0 time = 230
.meas tran vdout1_15ck45 FIND v(dout1_15) AT=230.025n

* CHECK dout1_16 Vdout1_16ck45 = 1.0 time = 230
.meas tran vdout1_16ck45 FIND v(dout1_16) AT=230.025n

* CHECK dout1_0 Vdout1_0ck46 = 1.0 time = 235
.meas tran vdout1_0ck46 FIND v(dout1_0) AT=235.025n

* CHECK dout1_1 Vdout1_1ck46 = 1.0 time = 235
.meas tran vdout1_1ck46 FIND v(dout1_1) AT=235.025n

* CHECK dout1_2 Vdout1_2ck46 = 0 time = 235
.meas tran vdout1_2ck46 FIND v(dout1_2) AT=235.025n

* CHECK dout1_3 Vdout1_3ck46 = 0 time = 235
.meas tran vdout1_3ck46 FIND v(dout1_3) AT=235.025n

* CHECK dout1_4 Vdout1_4ck46 = 1.0 time = 235
.meas tran vdout1_4ck46 FIND v(dout1_4) AT=235.025n

* CHECK dout1_5 Vdout1_5ck46 = 0 time = 235
.meas tran vdout1_5ck46 FIND v(dout1_5) AT=235.025n

* CHECK dout1_6 Vdout1_6ck46 = 1.0 time = 235
.meas tran vdout1_6ck46 FIND v(dout1_6) AT=235.025n

* CHECK dout1_7 Vdout1_7ck46 = 1.0 time = 235
.meas tran vdout1_7ck46 FIND v(dout1_7) AT=235.025n

* CHECK dout1_8 Vdout1_8ck46 = 1.0 time = 235
.meas tran vdout1_8ck46 FIND v(dout1_8) AT=235.025n

* CHECK dout1_9 Vdout1_9ck46 = 0 time = 235
.meas tran vdout1_9ck46 FIND v(dout1_9) AT=235.025n

* CHECK dout1_10 Vdout1_10ck46 = 1.0 time = 235
.meas tran vdout1_10ck46 FIND v(dout1_10) AT=235.025n

* CHECK dout1_11 Vdout1_11ck46 = 0 time = 235
.meas tran vdout1_11ck46 FIND v(dout1_11) AT=235.025n

* CHECK dout1_12 Vdout1_12ck46 = 1.0 time = 235
.meas tran vdout1_12ck46 FIND v(dout1_12) AT=235.025n

* CHECK dout1_13 Vdout1_13ck46 = 1.0 time = 235
.meas tran vdout1_13ck46 FIND v(dout1_13) AT=235.025n

* CHECK dout1_14 Vdout1_14ck46 = 0 time = 235
.meas tran vdout1_14ck46 FIND v(dout1_14) AT=235.025n

* CHECK dout1_15 Vdout1_15ck46 = 1.0 time = 235
.meas tran vdout1_15ck46 FIND v(dout1_15) AT=235.025n

* CHECK dout1_16 Vdout1_16ck46 = 1.0 time = 235
.meas tran vdout1_16ck46 FIND v(dout1_16) AT=235.025n

* CHECK dout1_0 Vdout1_0ck47 = 0 time = 240
.meas tran vdout1_0ck47 FIND v(dout1_0) AT=240.025n

* CHECK dout1_1 Vdout1_1ck47 = 0 time = 240
.meas tran vdout1_1ck47 FIND v(dout1_1) AT=240.025n

* CHECK dout1_2 Vdout1_2ck47 = 0 time = 240
.meas tran vdout1_2ck47 FIND v(dout1_2) AT=240.025n

* CHECK dout1_3 Vdout1_3ck47 = 1.0 time = 240
.meas tran vdout1_3ck47 FIND v(dout1_3) AT=240.025n

* CHECK dout1_4 Vdout1_4ck47 = 0 time = 240
.meas tran vdout1_4ck47 FIND v(dout1_4) AT=240.025n

* CHECK dout1_5 Vdout1_5ck47 = 1.0 time = 240
.meas tran vdout1_5ck47 FIND v(dout1_5) AT=240.025n

* CHECK dout1_6 Vdout1_6ck47 = 1.0 time = 240
.meas tran vdout1_6ck47 FIND v(dout1_6) AT=240.025n

* CHECK dout1_7 Vdout1_7ck47 = 1.0 time = 240
.meas tran vdout1_7ck47 FIND v(dout1_7) AT=240.025n

* CHECK dout1_8 Vdout1_8ck47 = 0 time = 240
.meas tran vdout1_8ck47 FIND v(dout1_8) AT=240.025n

* CHECK dout1_9 Vdout1_9ck47 = 1.0 time = 240
.meas tran vdout1_9ck47 FIND v(dout1_9) AT=240.025n

* CHECK dout1_10 Vdout1_10ck47 = 1.0 time = 240
.meas tran vdout1_10ck47 FIND v(dout1_10) AT=240.025n

* CHECK dout1_11 Vdout1_11ck47 = 1.0 time = 240
.meas tran vdout1_11ck47 FIND v(dout1_11) AT=240.025n

* CHECK dout1_12 Vdout1_12ck47 = 1.0 time = 240
.meas tran vdout1_12ck47 FIND v(dout1_12) AT=240.025n

* CHECK dout1_13 Vdout1_13ck47 = 0 time = 240
.meas tran vdout1_13ck47 FIND v(dout1_13) AT=240.025n

* CHECK dout1_14 Vdout1_14ck47 = 1.0 time = 240
.meas tran vdout1_14ck47 FIND v(dout1_14) AT=240.025n

* CHECK dout1_15 Vdout1_15ck47 = 1.0 time = 240
.meas tran vdout1_15ck47 FIND v(dout1_15) AT=240.025n

* CHECK dout1_16 Vdout1_16ck47 = 1.0 time = 240
.meas tran vdout1_16ck47 FIND v(dout1_16) AT=240.025n

* CHECK dout1_0 Vdout1_0ck48 = 1.0 time = 245
.meas tran vdout1_0ck48 FIND v(dout1_0) AT=245.025n

* CHECK dout1_1 Vdout1_1ck48 = 1.0 time = 245
.meas tran vdout1_1ck48 FIND v(dout1_1) AT=245.025n

* CHECK dout1_2 Vdout1_2ck48 = 0 time = 245
.meas tran vdout1_2ck48 FIND v(dout1_2) AT=245.025n

* CHECK dout1_3 Vdout1_3ck48 = 0 time = 245
.meas tran vdout1_3ck48 FIND v(dout1_3) AT=245.025n

* CHECK dout1_4 Vdout1_4ck48 = 1.0 time = 245
.meas tran vdout1_4ck48 FIND v(dout1_4) AT=245.025n

* CHECK dout1_5 Vdout1_5ck48 = 0 time = 245
.meas tran vdout1_5ck48 FIND v(dout1_5) AT=245.025n

* CHECK dout1_6 Vdout1_6ck48 = 1.0 time = 245
.meas tran vdout1_6ck48 FIND v(dout1_6) AT=245.025n

* CHECK dout1_7 Vdout1_7ck48 = 1.0 time = 245
.meas tran vdout1_7ck48 FIND v(dout1_7) AT=245.025n

* CHECK dout1_8 Vdout1_8ck48 = 1.0 time = 245
.meas tran vdout1_8ck48 FIND v(dout1_8) AT=245.025n

* CHECK dout1_9 Vdout1_9ck48 = 0 time = 245
.meas tran vdout1_9ck48 FIND v(dout1_9) AT=245.025n

* CHECK dout1_10 Vdout1_10ck48 = 1.0 time = 245
.meas tran vdout1_10ck48 FIND v(dout1_10) AT=245.025n

* CHECK dout1_11 Vdout1_11ck48 = 0 time = 245
.meas tran vdout1_11ck48 FIND v(dout1_11) AT=245.025n

* CHECK dout1_12 Vdout1_12ck48 = 1.0 time = 245
.meas tran vdout1_12ck48 FIND v(dout1_12) AT=245.025n

* CHECK dout1_13 Vdout1_13ck48 = 1.0 time = 245
.meas tran vdout1_13ck48 FIND v(dout1_13) AT=245.025n

* CHECK dout1_14 Vdout1_14ck48 = 0 time = 245
.meas tran vdout1_14ck48 FIND v(dout1_14) AT=245.025n

* CHECK dout1_15 Vdout1_15ck48 = 1.0 time = 245
.meas tran vdout1_15ck48 FIND v(dout1_15) AT=245.025n

* CHECK dout1_16 Vdout1_16ck48 = 1.0 time = 245
.meas tran vdout1_16ck48 FIND v(dout1_16) AT=245.025n

* CHECK dout1_0 Vdout1_0ck54 = 0 time = 275
.meas tran vdout1_0ck54 FIND v(dout1_0) AT=275.025n

* CHECK dout1_1 Vdout1_1ck54 = 0 time = 275
.meas tran vdout1_1ck54 FIND v(dout1_1) AT=275.025n

* CHECK dout1_2 Vdout1_2ck54 = 0 time = 275
.meas tran vdout1_2ck54 FIND v(dout1_2) AT=275.025n

* CHECK dout1_3 Vdout1_3ck54 = 0 time = 275
.meas tran vdout1_3ck54 FIND v(dout1_3) AT=275.025n

* CHECK dout1_4 Vdout1_4ck54 = 0 time = 275
.meas tran vdout1_4ck54 FIND v(dout1_4) AT=275.025n

* CHECK dout1_5 Vdout1_5ck54 = 0 time = 275
.meas tran vdout1_5ck54 FIND v(dout1_5) AT=275.025n

* CHECK dout1_6 Vdout1_6ck54 = 0 time = 275
.meas tran vdout1_6ck54 FIND v(dout1_6) AT=275.025n

* CHECK dout1_7 Vdout1_7ck54 = 0 time = 275
.meas tran vdout1_7ck54 FIND v(dout1_7) AT=275.025n

* CHECK dout1_8 Vdout1_8ck54 = 1.0 time = 275
.meas tran vdout1_8ck54 FIND v(dout1_8) AT=275.025n

* CHECK dout1_9 Vdout1_9ck54 = 0 time = 275
.meas tran vdout1_9ck54 FIND v(dout1_9) AT=275.025n

* CHECK dout1_10 Vdout1_10ck54 = 1.0 time = 275
.meas tran vdout1_10ck54 FIND v(dout1_10) AT=275.025n

* CHECK dout1_11 Vdout1_11ck54 = 0 time = 275
.meas tran vdout1_11ck54 FIND v(dout1_11) AT=275.025n

* CHECK dout1_12 Vdout1_12ck54 = 0 time = 275
.meas tran vdout1_12ck54 FIND v(dout1_12) AT=275.025n

* CHECK dout1_13 Vdout1_13ck54 = 0 time = 275
.meas tran vdout1_13ck54 FIND v(dout1_13) AT=275.025n

* CHECK dout1_14 Vdout1_14ck54 = 1.0 time = 275
.meas tran vdout1_14ck54 FIND v(dout1_14) AT=275.025n

* CHECK dout1_15 Vdout1_15ck54 = 1.0 time = 275
.meas tran vdout1_15ck54 FIND v(dout1_15) AT=275.025n

* CHECK dout1_16 Vdout1_16ck54 = 1.0 time = 275
.meas tran vdout1_16ck54 FIND v(dout1_16) AT=275.025n

* CHECK dout1_0 Vdout1_0ck62 = 1.0 time = 315
.meas tran vdout1_0ck62 FIND v(dout1_0) AT=315.025n

* CHECK dout1_1 Vdout1_1ck62 = 1.0 time = 315
.meas tran vdout1_1ck62 FIND v(dout1_1) AT=315.025n

* CHECK dout1_2 Vdout1_2ck62 = 0 time = 315
.meas tran vdout1_2ck62 FIND v(dout1_2) AT=315.025n

* CHECK dout1_3 Vdout1_3ck62 = 0 time = 315
.meas tran vdout1_3ck62 FIND v(dout1_3) AT=315.025n

* CHECK dout1_4 Vdout1_4ck62 = 0 time = 315
.meas tran vdout1_4ck62 FIND v(dout1_4) AT=315.025n

* CHECK dout1_5 Vdout1_5ck62 = 1.0 time = 315
.meas tran vdout1_5ck62 FIND v(dout1_5) AT=315.025n

* CHECK dout1_6 Vdout1_6ck62 = 0 time = 315
.meas tran vdout1_6ck62 FIND v(dout1_6) AT=315.025n

* CHECK dout1_7 Vdout1_7ck62 = 1.0 time = 315
.meas tran vdout1_7ck62 FIND v(dout1_7) AT=315.025n

* CHECK dout1_8 Vdout1_8ck62 = 0 time = 315
.meas tran vdout1_8ck62 FIND v(dout1_8) AT=315.025n

* CHECK dout1_9 Vdout1_9ck62 = 0 time = 315
.meas tran vdout1_9ck62 FIND v(dout1_9) AT=315.025n

* CHECK dout1_10 Vdout1_10ck62 = 1.0 time = 315
.meas tran vdout1_10ck62 FIND v(dout1_10) AT=315.025n

* CHECK dout1_11 Vdout1_11ck62 = 0 time = 315
.meas tran vdout1_11ck62 FIND v(dout1_11) AT=315.025n

* CHECK dout1_12 Vdout1_12ck62 = 0 time = 315
.meas tran vdout1_12ck62 FIND v(dout1_12) AT=315.025n

* CHECK dout1_13 Vdout1_13ck62 = 1.0 time = 315
.meas tran vdout1_13ck62 FIND v(dout1_13) AT=315.025n

* CHECK dout1_14 Vdout1_14ck62 = 0 time = 315
.meas tran vdout1_14ck62 FIND v(dout1_14) AT=315.025n

* CHECK dout1_15 Vdout1_15ck62 = 1.0 time = 315
.meas tran vdout1_15ck62 FIND v(dout1_15) AT=315.025n

* CHECK dout1_16 Vdout1_16ck62 = 1.0 time = 315
.meas tran vdout1_16ck62 FIND v(dout1_16) AT=315.025n

* CHECK dout1_0 Vdout1_0ck66 = 1.0 time = 335
.meas tran vdout1_0ck66 FIND v(dout1_0) AT=335.025n

* CHECK dout1_1 Vdout1_1ck66 = 0 time = 335
.meas tran vdout1_1ck66 FIND v(dout1_1) AT=335.025n

* CHECK dout1_2 Vdout1_2ck66 = 0 time = 335
.meas tran vdout1_2ck66 FIND v(dout1_2) AT=335.025n

* CHECK dout1_3 Vdout1_3ck66 = 0 time = 335
.meas tran vdout1_3ck66 FIND v(dout1_3) AT=335.025n

* CHECK dout1_4 Vdout1_4ck66 = 1.0 time = 335
.meas tran vdout1_4ck66 FIND v(dout1_4) AT=335.025n

* CHECK dout1_5 Vdout1_5ck66 = 1.0 time = 335
.meas tran vdout1_5ck66 FIND v(dout1_5) AT=335.025n

* CHECK dout1_6 Vdout1_6ck66 = 0 time = 335
.meas tran vdout1_6ck66 FIND v(dout1_6) AT=335.025n

* CHECK dout1_7 Vdout1_7ck66 = 0 time = 335
.meas tran vdout1_7ck66 FIND v(dout1_7) AT=335.025n

* CHECK dout1_8 Vdout1_8ck66 = 0 time = 335
.meas tran vdout1_8ck66 FIND v(dout1_8) AT=335.025n

* CHECK dout1_9 Vdout1_9ck66 = 0 time = 335
.meas tran vdout1_9ck66 FIND v(dout1_9) AT=335.025n

* CHECK dout1_10 Vdout1_10ck66 = 1.0 time = 335
.meas tran vdout1_10ck66 FIND v(dout1_10) AT=335.025n

* CHECK dout1_11 Vdout1_11ck66 = 0 time = 335
.meas tran vdout1_11ck66 FIND v(dout1_11) AT=335.025n

* CHECK dout1_12 Vdout1_12ck66 = 0 time = 335
.meas tran vdout1_12ck66 FIND v(dout1_12) AT=335.025n

* CHECK dout1_13 Vdout1_13ck66 = 1.0 time = 335
.meas tran vdout1_13ck66 FIND v(dout1_13) AT=335.025n

* CHECK dout1_14 Vdout1_14ck66 = 1.0 time = 335
.meas tran vdout1_14ck66 FIND v(dout1_14) AT=335.025n

* CHECK dout1_15 Vdout1_15ck66 = 0 time = 335
.meas tran vdout1_15ck66 FIND v(dout1_15) AT=335.025n

* CHECK dout1_16 Vdout1_16ck66 = 1.0 time = 335
.meas tran vdout1_16ck66 FIND v(dout1_16) AT=335.025n

* CHECK dout1_0 Vdout1_0ck70 = 1.0 time = 355
.meas tran vdout1_0ck70 FIND v(dout1_0) AT=355.025n

* CHECK dout1_1 Vdout1_1ck70 = 1.0 time = 355
.meas tran vdout1_1ck70 FIND v(dout1_1) AT=355.025n

* CHECK dout1_2 Vdout1_2ck70 = 0 time = 355
.meas tran vdout1_2ck70 FIND v(dout1_2) AT=355.025n

* CHECK dout1_3 Vdout1_3ck70 = 0 time = 355
.meas tran vdout1_3ck70 FIND v(dout1_3) AT=355.025n

* CHECK dout1_4 Vdout1_4ck70 = 0 time = 355
.meas tran vdout1_4ck70 FIND v(dout1_4) AT=355.025n

* CHECK dout1_5 Vdout1_5ck70 = 1.0 time = 355
.meas tran vdout1_5ck70 FIND v(dout1_5) AT=355.025n

* CHECK dout1_6 Vdout1_6ck70 = 0 time = 355
.meas tran vdout1_6ck70 FIND v(dout1_6) AT=355.025n

* CHECK dout1_7 Vdout1_7ck70 = 1.0 time = 355
.meas tran vdout1_7ck70 FIND v(dout1_7) AT=355.025n

* CHECK dout1_8 Vdout1_8ck70 = 0 time = 355
.meas tran vdout1_8ck70 FIND v(dout1_8) AT=355.025n

* CHECK dout1_9 Vdout1_9ck70 = 0 time = 355
.meas tran vdout1_9ck70 FIND v(dout1_9) AT=355.025n

* CHECK dout1_10 Vdout1_10ck70 = 1.0 time = 355
.meas tran vdout1_10ck70 FIND v(dout1_10) AT=355.025n

* CHECK dout1_11 Vdout1_11ck70 = 0 time = 355
.meas tran vdout1_11ck70 FIND v(dout1_11) AT=355.025n

* CHECK dout1_12 Vdout1_12ck70 = 0 time = 355
.meas tran vdout1_12ck70 FIND v(dout1_12) AT=355.025n

* CHECK dout1_13 Vdout1_13ck70 = 1.0 time = 355
.meas tran vdout1_13ck70 FIND v(dout1_13) AT=355.025n

* CHECK dout1_14 Vdout1_14ck70 = 0 time = 355
.meas tran vdout1_14ck70 FIND v(dout1_14) AT=355.025n

* CHECK dout1_15 Vdout1_15ck70 = 1.0 time = 355
.meas tran vdout1_15ck70 FIND v(dout1_15) AT=355.025n

* CHECK dout1_16 Vdout1_16ck70 = 1.0 time = 355
.meas tran vdout1_16ck70 FIND v(dout1_16) AT=355.025n

* CHECK dout1_0 Vdout1_0ck72 = 1.0 time = 365
.meas tran vdout1_0ck72 FIND v(dout1_0) AT=365.025n

* CHECK dout1_1 Vdout1_1ck72 = 1.0 time = 365
.meas tran vdout1_1ck72 FIND v(dout1_1) AT=365.025n

* CHECK dout1_2 Vdout1_2ck72 = 1.0 time = 365
.meas tran vdout1_2ck72 FIND v(dout1_2) AT=365.025n

* CHECK dout1_3 Vdout1_3ck72 = 0 time = 365
.meas tran vdout1_3ck72 FIND v(dout1_3) AT=365.025n

* CHECK dout1_4 Vdout1_4ck72 = 1.0 time = 365
.meas tran vdout1_4ck72 FIND v(dout1_4) AT=365.025n

* CHECK dout1_5 Vdout1_5ck72 = 0 time = 365
.meas tran vdout1_5ck72 FIND v(dout1_5) AT=365.025n

* CHECK dout1_6 Vdout1_6ck72 = 0 time = 365
.meas tran vdout1_6ck72 FIND v(dout1_6) AT=365.025n

* CHECK dout1_7 Vdout1_7ck72 = 1.0 time = 365
.meas tran vdout1_7ck72 FIND v(dout1_7) AT=365.025n

* CHECK dout1_8 Vdout1_8ck72 = 0 time = 365
.meas tran vdout1_8ck72 FIND v(dout1_8) AT=365.025n

* CHECK dout1_9 Vdout1_9ck72 = 1.0 time = 365
.meas tran vdout1_9ck72 FIND v(dout1_9) AT=365.025n

* CHECK dout1_10 Vdout1_10ck72 = 1.0 time = 365
.meas tran vdout1_10ck72 FIND v(dout1_10) AT=365.025n

* CHECK dout1_11 Vdout1_11ck72 = 0 time = 365
.meas tran vdout1_11ck72 FIND v(dout1_11) AT=365.025n

* CHECK dout1_12 Vdout1_12ck72 = 1.0 time = 365
.meas tran vdout1_12ck72 FIND v(dout1_12) AT=365.025n

* CHECK dout1_13 Vdout1_13ck72 = 0 time = 365
.meas tran vdout1_13ck72 FIND v(dout1_13) AT=365.025n

* CHECK dout1_14 Vdout1_14ck72 = 0 time = 365
.meas tran vdout1_14ck72 FIND v(dout1_14) AT=365.025n

* CHECK dout1_15 Vdout1_15ck72 = 0 time = 365
.meas tran vdout1_15ck72 FIND v(dout1_15) AT=365.025n

* CHECK dout1_16 Vdout1_16ck72 = 0 time = 365
.meas tran vdout1_16ck72 FIND v(dout1_16) AT=365.025n

* CHECK dout1_0 Vdout1_0ck75 = 1.0 time = 380
.meas tran vdout1_0ck75 FIND v(dout1_0) AT=380.025n

* CHECK dout1_1 Vdout1_1ck75 = 0 time = 380
.meas tran vdout1_1ck75 FIND v(dout1_1) AT=380.025n

* CHECK dout1_2 Vdout1_2ck75 = 0 time = 380
.meas tran vdout1_2ck75 FIND v(dout1_2) AT=380.025n

* CHECK dout1_3 Vdout1_3ck75 = 1.0 time = 380
.meas tran vdout1_3ck75 FIND v(dout1_3) AT=380.025n

* CHECK dout1_4 Vdout1_4ck75 = 1.0 time = 380
.meas tran vdout1_4ck75 FIND v(dout1_4) AT=380.025n

* CHECK dout1_5 Vdout1_5ck75 = 1.0 time = 380
.meas tran vdout1_5ck75 FIND v(dout1_5) AT=380.025n

* CHECK dout1_6 Vdout1_6ck75 = 1.0 time = 380
.meas tran vdout1_6ck75 FIND v(dout1_6) AT=380.025n

* CHECK dout1_7 Vdout1_7ck75 = 0 time = 380
.meas tran vdout1_7ck75 FIND v(dout1_7) AT=380.025n

* CHECK dout1_8 Vdout1_8ck75 = 1.0 time = 380
.meas tran vdout1_8ck75 FIND v(dout1_8) AT=380.025n

* CHECK dout1_9 Vdout1_9ck75 = 1.0 time = 380
.meas tran vdout1_9ck75 FIND v(dout1_9) AT=380.025n

* CHECK dout1_10 Vdout1_10ck75 = 1.0 time = 380
.meas tran vdout1_10ck75 FIND v(dout1_10) AT=380.025n

* CHECK dout1_11 Vdout1_11ck75 = 0 time = 380
.meas tran vdout1_11ck75 FIND v(dout1_11) AT=380.025n

* CHECK dout1_12 Vdout1_12ck75 = 1.0 time = 380
.meas tran vdout1_12ck75 FIND v(dout1_12) AT=380.025n

* CHECK dout1_13 Vdout1_13ck75 = 1.0 time = 380
.meas tran vdout1_13ck75 FIND v(dout1_13) AT=380.025n

* CHECK dout1_14 Vdout1_14ck75 = 0 time = 380
.meas tran vdout1_14ck75 FIND v(dout1_14) AT=380.025n

* CHECK dout1_15 Vdout1_15ck75 = 1.0 time = 380
.meas tran vdout1_15ck75 FIND v(dout1_15) AT=380.025n

* CHECK dout1_16 Vdout1_16ck75 = 1.0 time = 380
.meas tran vdout1_16ck75 FIND v(dout1_16) AT=380.025n

* CHECK dout1_0 Vdout1_0ck76 = 1.0 time = 385
.meas tran vdout1_0ck76 FIND v(dout1_0) AT=385.025n

* CHECK dout1_1 Vdout1_1ck76 = 1.0 time = 385
.meas tran vdout1_1ck76 FIND v(dout1_1) AT=385.025n

* CHECK dout1_2 Vdout1_2ck76 = 0 time = 385
.meas tran vdout1_2ck76 FIND v(dout1_2) AT=385.025n

* CHECK dout1_3 Vdout1_3ck76 = 0 time = 385
.meas tran vdout1_3ck76 FIND v(dout1_3) AT=385.025n

* CHECK dout1_4 Vdout1_4ck76 = 0 time = 385
.meas tran vdout1_4ck76 FIND v(dout1_4) AT=385.025n

* CHECK dout1_5 Vdout1_5ck76 = 1.0 time = 385
.meas tran vdout1_5ck76 FIND v(dout1_5) AT=385.025n

* CHECK dout1_6 Vdout1_6ck76 = 0 time = 385
.meas tran vdout1_6ck76 FIND v(dout1_6) AT=385.025n

* CHECK dout1_7 Vdout1_7ck76 = 1.0 time = 385
.meas tran vdout1_7ck76 FIND v(dout1_7) AT=385.025n

* CHECK dout1_8 Vdout1_8ck76 = 0 time = 385
.meas tran vdout1_8ck76 FIND v(dout1_8) AT=385.025n

* CHECK dout1_9 Vdout1_9ck76 = 0 time = 385
.meas tran vdout1_9ck76 FIND v(dout1_9) AT=385.025n

* CHECK dout1_10 Vdout1_10ck76 = 1.0 time = 385
.meas tran vdout1_10ck76 FIND v(dout1_10) AT=385.025n

* CHECK dout1_11 Vdout1_11ck76 = 0 time = 385
.meas tran vdout1_11ck76 FIND v(dout1_11) AT=385.025n

* CHECK dout1_12 Vdout1_12ck76 = 0 time = 385
.meas tran vdout1_12ck76 FIND v(dout1_12) AT=385.025n

* CHECK dout1_13 Vdout1_13ck76 = 1.0 time = 385
.meas tran vdout1_13ck76 FIND v(dout1_13) AT=385.025n

* CHECK dout1_14 Vdout1_14ck76 = 0 time = 385
.meas tran vdout1_14ck76 FIND v(dout1_14) AT=385.025n

* CHECK dout1_15 Vdout1_15ck76 = 1.0 time = 385
.meas tran vdout1_15ck76 FIND v(dout1_15) AT=385.025n

* CHECK dout1_16 Vdout1_16ck76 = 1.0 time = 385
.meas tran vdout1_16ck76 FIND v(dout1_16) AT=385.025n

* CHECK dout1_0 Vdout1_0ck79 = 0 time = 400
.meas tran vdout1_0ck79 FIND v(dout1_0) AT=400.025n

* CHECK dout1_1 Vdout1_1ck79 = 1.0 time = 400
.meas tran vdout1_1ck79 FIND v(dout1_1) AT=400.025n

* CHECK dout1_2 Vdout1_2ck79 = 1.0 time = 400
.meas tran vdout1_2ck79 FIND v(dout1_2) AT=400.025n

* CHECK dout1_3 Vdout1_3ck79 = 0 time = 400
.meas tran vdout1_3ck79 FIND v(dout1_3) AT=400.025n

* CHECK dout1_4 Vdout1_4ck79 = 1.0 time = 400
.meas tran vdout1_4ck79 FIND v(dout1_4) AT=400.025n

* CHECK dout1_5 Vdout1_5ck79 = 1.0 time = 400
.meas tran vdout1_5ck79 FIND v(dout1_5) AT=400.025n

* CHECK dout1_6 Vdout1_6ck79 = 0 time = 400
.meas tran vdout1_6ck79 FIND v(dout1_6) AT=400.025n

* CHECK dout1_7 Vdout1_7ck79 = 0 time = 400
.meas tran vdout1_7ck79 FIND v(dout1_7) AT=400.025n

* CHECK dout1_8 Vdout1_8ck79 = 0 time = 400
.meas tran vdout1_8ck79 FIND v(dout1_8) AT=400.025n

* CHECK dout1_9 Vdout1_9ck79 = 1.0 time = 400
.meas tran vdout1_9ck79 FIND v(dout1_9) AT=400.025n

* CHECK dout1_10 Vdout1_10ck79 = 0 time = 400
.meas tran vdout1_10ck79 FIND v(dout1_10) AT=400.025n

* CHECK dout1_11 Vdout1_11ck79 = 0 time = 400
.meas tran vdout1_11ck79 FIND v(dout1_11) AT=400.025n

* CHECK dout1_12 Vdout1_12ck79 = 1.0 time = 400
.meas tran vdout1_12ck79 FIND v(dout1_12) AT=400.025n

* CHECK dout1_13 Vdout1_13ck79 = 1.0 time = 400
.meas tran vdout1_13ck79 FIND v(dout1_13) AT=400.025n

* CHECK dout1_14 Vdout1_14ck79 = 0 time = 400
.meas tran vdout1_14ck79 FIND v(dout1_14) AT=400.025n

* CHECK dout1_15 Vdout1_15ck79 = 1.0 time = 400
.meas tran vdout1_15ck79 FIND v(dout1_15) AT=400.025n

* CHECK dout1_16 Vdout1_16ck79 = 1.0 time = 400
.meas tran vdout1_16ck79 FIND v(dout1_16) AT=400.025n

* CHECK dout1_0 Vdout1_0ck80 = 1.0 time = 405
.meas tran vdout1_0ck80 FIND v(dout1_0) AT=405.025n

* CHECK dout1_1 Vdout1_1ck80 = 1.0 time = 405
.meas tran vdout1_1ck80 FIND v(dout1_1) AT=405.025n

* CHECK dout1_2 Vdout1_2ck80 = 1.0 time = 405
.meas tran vdout1_2ck80 FIND v(dout1_2) AT=405.025n

* CHECK dout1_3 Vdout1_3ck80 = 0 time = 405
.meas tran vdout1_3ck80 FIND v(dout1_3) AT=405.025n

* CHECK dout1_4 Vdout1_4ck80 = 1.0 time = 405
.meas tran vdout1_4ck80 FIND v(dout1_4) AT=405.025n

* CHECK dout1_5 Vdout1_5ck80 = 0 time = 405
.meas tran vdout1_5ck80 FIND v(dout1_5) AT=405.025n

* CHECK dout1_6 Vdout1_6ck80 = 0 time = 405
.meas tran vdout1_6ck80 FIND v(dout1_6) AT=405.025n

* CHECK dout1_7 Vdout1_7ck80 = 1.0 time = 405
.meas tran vdout1_7ck80 FIND v(dout1_7) AT=405.025n

* CHECK dout1_8 Vdout1_8ck80 = 0 time = 405
.meas tran vdout1_8ck80 FIND v(dout1_8) AT=405.025n

* CHECK dout1_9 Vdout1_9ck80 = 1.0 time = 405
.meas tran vdout1_9ck80 FIND v(dout1_9) AT=405.025n

* CHECK dout1_10 Vdout1_10ck80 = 1.0 time = 405
.meas tran vdout1_10ck80 FIND v(dout1_10) AT=405.025n

* CHECK dout1_11 Vdout1_11ck80 = 0 time = 405
.meas tran vdout1_11ck80 FIND v(dout1_11) AT=405.025n

* CHECK dout1_12 Vdout1_12ck80 = 1.0 time = 405
.meas tran vdout1_12ck80 FIND v(dout1_12) AT=405.025n

* CHECK dout1_13 Vdout1_13ck80 = 0 time = 405
.meas tran vdout1_13ck80 FIND v(dout1_13) AT=405.025n

* CHECK dout1_14 Vdout1_14ck80 = 0 time = 405
.meas tran vdout1_14ck80 FIND v(dout1_14) AT=405.025n

* CHECK dout1_15 Vdout1_15ck80 = 0 time = 405
.meas tran vdout1_15ck80 FIND v(dout1_15) AT=405.025n

* CHECK dout1_16 Vdout1_16ck80 = 0 time = 405
.meas tran vdout1_16ck80 FIND v(dout1_16) AT=405.025n

* CHECK dout1_0 Vdout1_0ck86 = 0 time = 435
.meas tran vdout1_0ck86 FIND v(dout1_0) AT=435.025n

* CHECK dout1_1 Vdout1_1ck86 = 1.0 time = 435
.meas tran vdout1_1ck86 FIND v(dout1_1) AT=435.025n

* CHECK dout1_2 Vdout1_2ck86 = 0 time = 435
.meas tran vdout1_2ck86 FIND v(dout1_2) AT=435.025n

* CHECK dout1_3 Vdout1_3ck86 = 1.0 time = 435
.meas tran vdout1_3ck86 FIND v(dout1_3) AT=435.025n

* CHECK dout1_4 Vdout1_4ck86 = 1.0 time = 435
.meas tran vdout1_4ck86 FIND v(dout1_4) AT=435.025n

* CHECK dout1_5 Vdout1_5ck86 = 1.0 time = 435
.meas tran vdout1_5ck86 FIND v(dout1_5) AT=435.025n

* CHECK dout1_6 Vdout1_6ck86 = 1.0 time = 435
.meas tran vdout1_6ck86 FIND v(dout1_6) AT=435.025n

* CHECK dout1_7 Vdout1_7ck86 = 0 time = 435
.meas tran vdout1_7ck86 FIND v(dout1_7) AT=435.025n

* CHECK dout1_8 Vdout1_8ck86 = 0 time = 435
.meas tran vdout1_8ck86 FIND v(dout1_8) AT=435.025n

* CHECK dout1_9 Vdout1_9ck86 = 1.0 time = 435
.meas tran vdout1_9ck86 FIND v(dout1_9) AT=435.025n

* CHECK dout1_10 Vdout1_10ck86 = 0 time = 435
.meas tran vdout1_10ck86 FIND v(dout1_10) AT=435.025n

* CHECK dout1_11 Vdout1_11ck86 = 0 time = 435
.meas tran vdout1_11ck86 FIND v(dout1_11) AT=435.025n

* CHECK dout1_12 Vdout1_12ck86 = 0 time = 435
.meas tran vdout1_12ck86 FIND v(dout1_12) AT=435.025n

* CHECK dout1_13 Vdout1_13ck86 = 1.0 time = 435
.meas tran vdout1_13ck86 FIND v(dout1_13) AT=435.025n

* CHECK dout1_14 Vdout1_14ck86 = 1.0 time = 435
.meas tran vdout1_14ck86 FIND v(dout1_14) AT=435.025n

* CHECK dout1_15 Vdout1_15ck86 = 1.0 time = 435
.meas tran vdout1_15ck86 FIND v(dout1_15) AT=435.025n

* CHECK dout1_16 Vdout1_16ck86 = 0 time = 435
.meas tran vdout1_16ck86 FIND v(dout1_16) AT=435.025n

* CHECK dout1_0 Vdout1_0ck87 = 0 time = 440
.meas tran vdout1_0ck87 FIND v(dout1_0) AT=440.025n

* CHECK dout1_1 Vdout1_1ck87 = 1.0 time = 440
.meas tran vdout1_1ck87 FIND v(dout1_1) AT=440.025n

* CHECK dout1_2 Vdout1_2ck87 = 0 time = 440
.meas tran vdout1_2ck87 FIND v(dout1_2) AT=440.025n

* CHECK dout1_3 Vdout1_3ck87 = 1.0 time = 440
.meas tran vdout1_3ck87 FIND v(dout1_3) AT=440.025n

* CHECK dout1_4 Vdout1_4ck87 = 1.0 time = 440
.meas tran vdout1_4ck87 FIND v(dout1_4) AT=440.025n

* CHECK dout1_5 Vdout1_5ck87 = 1.0 time = 440
.meas tran vdout1_5ck87 FIND v(dout1_5) AT=440.025n

* CHECK dout1_6 Vdout1_6ck87 = 1.0 time = 440
.meas tran vdout1_6ck87 FIND v(dout1_6) AT=440.025n

* CHECK dout1_7 Vdout1_7ck87 = 0 time = 440
.meas tran vdout1_7ck87 FIND v(dout1_7) AT=440.025n

* CHECK dout1_8 Vdout1_8ck87 = 0 time = 440
.meas tran vdout1_8ck87 FIND v(dout1_8) AT=440.025n

* CHECK dout1_9 Vdout1_9ck87 = 1.0 time = 440
.meas tran vdout1_9ck87 FIND v(dout1_9) AT=440.025n

* CHECK dout1_10 Vdout1_10ck87 = 0 time = 440
.meas tran vdout1_10ck87 FIND v(dout1_10) AT=440.025n

* CHECK dout1_11 Vdout1_11ck87 = 0 time = 440
.meas tran vdout1_11ck87 FIND v(dout1_11) AT=440.025n

* CHECK dout1_12 Vdout1_12ck87 = 0 time = 440
.meas tran vdout1_12ck87 FIND v(dout1_12) AT=440.025n

* CHECK dout1_13 Vdout1_13ck87 = 1.0 time = 440
.meas tran vdout1_13ck87 FIND v(dout1_13) AT=440.025n

* CHECK dout1_14 Vdout1_14ck87 = 1.0 time = 440
.meas tran vdout1_14ck87 FIND v(dout1_14) AT=440.025n

* CHECK dout1_15 Vdout1_15ck87 = 1.0 time = 440
.meas tran vdout1_15ck87 FIND v(dout1_15) AT=440.025n

* CHECK dout1_16 Vdout1_16ck87 = 0 time = 440
.meas tran vdout1_16ck87 FIND v(dout1_16) AT=440.025n

* CHECK dout1_0 Vdout1_0ck91 = 1.0 time = 460
.meas tran vdout1_0ck91 FIND v(dout1_0) AT=460.025n

* CHECK dout1_1 Vdout1_1ck91 = 1.0 time = 460
.meas tran vdout1_1ck91 FIND v(dout1_1) AT=460.025n

* CHECK dout1_2 Vdout1_2ck91 = 1.0 time = 460
.meas tran vdout1_2ck91 FIND v(dout1_2) AT=460.025n

* CHECK dout1_3 Vdout1_3ck91 = 0 time = 460
.meas tran vdout1_3ck91 FIND v(dout1_3) AT=460.025n

* CHECK dout1_4 Vdout1_4ck91 = 1.0 time = 460
.meas tran vdout1_4ck91 FIND v(dout1_4) AT=460.025n

* CHECK dout1_5 Vdout1_5ck91 = 0 time = 460
.meas tran vdout1_5ck91 FIND v(dout1_5) AT=460.025n

* CHECK dout1_6 Vdout1_6ck91 = 0 time = 460
.meas tran vdout1_6ck91 FIND v(dout1_6) AT=460.025n

* CHECK dout1_7 Vdout1_7ck91 = 1.0 time = 460
.meas tran vdout1_7ck91 FIND v(dout1_7) AT=460.025n

* CHECK dout1_8 Vdout1_8ck91 = 0 time = 460
.meas tran vdout1_8ck91 FIND v(dout1_8) AT=460.025n

* CHECK dout1_9 Vdout1_9ck91 = 1.0 time = 460
.meas tran vdout1_9ck91 FIND v(dout1_9) AT=460.025n

* CHECK dout1_10 Vdout1_10ck91 = 1.0 time = 460
.meas tran vdout1_10ck91 FIND v(dout1_10) AT=460.025n

* CHECK dout1_11 Vdout1_11ck91 = 0 time = 460
.meas tran vdout1_11ck91 FIND v(dout1_11) AT=460.025n

* CHECK dout1_12 Vdout1_12ck91 = 1.0 time = 460
.meas tran vdout1_12ck91 FIND v(dout1_12) AT=460.025n

* CHECK dout1_13 Vdout1_13ck91 = 0 time = 460
.meas tran vdout1_13ck91 FIND v(dout1_13) AT=460.025n

* CHECK dout1_14 Vdout1_14ck91 = 0 time = 460
.meas tran vdout1_14ck91 FIND v(dout1_14) AT=460.025n

* CHECK dout1_15 Vdout1_15ck91 = 0 time = 460
.meas tran vdout1_15ck91 FIND v(dout1_15) AT=460.025n

* CHECK dout1_16 Vdout1_16ck91 = 0 time = 460
.meas tran vdout1_16ck91 FIND v(dout1_16) AT=460.025n

* CHECK dout1_0 Vdout1_0ck96 = 0 time = 485
.meas tran vdout1_0ck96 FIND v(dout1_0) AT=485.025n

* CHECK dout1_1 Vdout1_1ck96 = 1.0 time = 485
.meas tran vdout1_1ck96 FIND v(dout1_1) AT=485.025n

* CHECK dout1_2 Vdout1_2ck96 = 0 time = 485
.meas tran vdout1_2ck96 FIND v(dout1_2) AT=485.025n

* CHECK dout1_3 Vdout1_3ck96 = 1.0 time = 485
.meas tran vdout1_3ck96 FIND v(dout1_3) AT=485.025n

* CHECK dout1_4 Vdout1_4ck96 = 1.0 time = 485
.meas tran vdout1_4ck96 FIND v(dout1_4) AT=485.025n

* CHECK dout1_5 Vdout1_5ck96 = 1.0 time = 485
.meas tran vdout1_5ck96 FIND v(dout1_5) AT=485.025n

* CHECK dout1_6 Vdout1_6ck96 = 1.0 time = 485
.meas tran vdout1_6ck96 FIND v(dout1_6) AT=485.025n

* CHECK dout1_7 Vdout1_7ck96 = 0 time = 485
.meas tran vdout1_7ck96 FIND v(dout1_7) AT=485.025n

* CHECK dout1_8 Vdout1_8ck96 = 0 time = 485
.meas tran vdout1_8ck96 FIND v(dout1_8) AT=485.025n

* CHECK dout1_9 Vdout1_9ck96 = 1.0 time = 485
.meas tran vdout1_9ck96 FIND v(dout1_9) AT=485.025n

* CHECK dout1_10 Vdout1_10ck96 = 0 time = 485
.meas tran vdout1_10ck96 FIND v(dout1_10) AT=485.025n

* CHECK dout1_11 Vdout1_11ck96 = 0 time = 485
.meas tran vdout1_11ck96 FIND v(dout1_11) AT=485.025n

* CHECK dout1_12 Vdout1_12ck96 = 0 time = 485
.meas tran vdout1_12ck96 FIND v(dout1_12) AT=485.025n

* CHECK dout1_13 Vdout1_13ck96 = 1.0 time = 485
.meas tran vdout1_13ck96 FIND v(dout1_13) AT=485.025n

* CHECK dout1_14 Vdout1_14ck96 = 1.0 time = 485
.meas tran vdout1_14ck96 FIND v(dout1_14) AT=485.025n

* CHECK dout1_15 Vdout1_15ck96 = 1.0 time = 485
.meas tran vdout1_15ck96 FIND v(dout1_15) AT=485.025n

* CHECK dout1_16 Vdout1_16ck96 = 0 time = 485
.meas tran vdout1_16ck96 FIND v(dout1_16) AT=485.025n

* CHECK dout1_0 Vdout1_0ck97 = 0 time = 490
.meas tran vdout1_0ck97 FIND v(dout1_0) AT=490.025n

* CHECK dout1_1 Vdout1_1ck97 = 1.0 time = 490
.meas tran vdout1_1ck97 FIND v(dout1_1) AT=490.025n

* CHECK dout1_2 Vdout1_2ck97 = 0 time = 490
.meas tran vdout1_2ck97 FIND v(dout1_2) AT=490.025n

* CHECK dout1_3 Vdout1_3ck97 = 1.0 time = 490
.meas tran vdout1_3ck97 FIND v(dout1_3) AT=490.025n

* CHECK dout1_4 Vdout1_4ck97 = 1.0 time = 490
.meas tran vdout1_4ck97 FIND v(dout1_4) AT=490.025n

* CHECK dout1_5 Vdout1_5ck97 = 1.0 time = 490
.meas tran vdout1_5ck97 FIND v(dout1_5) AT=490.025n

* CHECK dout1_6 Vdout1_6ck97 = 1.0 time = 490
.meas tran vdout1_6ck97 FIND v(dout1_6) AT=490.025n

* CHECK dout1_7 Vdout1_7ck97 = 0 time = 490
.meas tran vdout1_7ck97 FIND v(dout1_7) AT=490.025n

* CHECK dout1_8 Vdout1_8ck97 = 0 time = 490
.meas tran vdout1_8ck97 FIND v(dout1_8) AT=490.025n

* CHECK dout1_9 Vdout1_9ck97 = 1.0 time = 490
.meas tran vdout1_9ck97 FIND v(dout1_9) AT=490.025n

* CHECK dout1_10 Vdout1_10ck97 = 0 time = 490
.meas tran vdout1_10ck97 FIND v(dout1_10) AT=490.025n

* CHECK dout1_11 Vdout1_11ck97 = 0 time = 490
.meas tran vdout1_11ck97 FIND v(dout1_11) AT=490.025n

* CHECK dout1_12 Vdout1_12ck97 = 0 time = 490
.meas tran vdout1_12ck97 FIND v(dout1_12) AT=490.025n

* CHECK dout1_13 Vdout1_13ck97 = 1.0 time = 490
.meas tran vdout1_13ck97 FIND v(dout1_13) AT=490.025n

* CHECK dout1_14 Vdout1_14ck97 = 1.0 time = 490
.meas tran vdout1_14ck97 FIND v(dout1_14) AT=490.025n

* CHECK dout1_15 Vdout1_15ck97 = 1.0 time = 490
.meas tran vdout1_15ck97 FIND v(dout1_15) AT=490.025n

* CHECK dout1_16 Vdout1_16ck97 = 0 time = 490
.meas tran vdout1_16ck97 FIND v(dout1_16) AT=490.025n

* CHECK dout1_0 Vdout1_0ck100 = 0 time = 505
.meas tran vdout1_0ck100 FIND v(dout1_0) AT=505.025n

* CHECK dout1_1 Vdout1_1ck100 = 0 time = 505
.meas tran vdout1_1ck100 FIND v(dout1_1) AT=505.025n

* CHECK dout1_2 Vdout1_2ck100 = 0 time = 505
.meas tran vdout1_2ck100 FIND v(dout1_2) AT=505.025n

* CHECK dout1_3 Vdout1_3ck100 = 1.0 time = 505
.meas tran vdout1_3ck100 FIND v(dout1_3) AT=505.025n

* CHECK dout1_4 Vdout1_4ck100 = 1.0 time = 505
.meas tran vdout1_4ck100 FIND v(dout1_4) AT=505.025n

* CHECK dout1_5 Vdout1_5ck100 = 1.0 time = 505
.meas tran vdout1_5ck100 FIND v(dout1_5) AT=505.025n

* CHECK dout1_6 Vdout1_6ck100 = 0 time = 505
.meas tran vdout1_6ck100 FIND v(dout1_6) AT=505.025n

* CHECK dout1_7 Vdout1_7ck100 = 0 time = 505
.meas tran vdout1_7ck100 FIND v(dout1_7) AT=505.025n

* CHECK dout1_8 Vdout1_8ck100 = 1.0 time = 505
.meas tran vdout1_8ck100 FIND v(dout1_8) AT=505.025n

* CHECK dout1_9 Vdout1_9ck100 = 1.0 time = 505
.meas tran vdout1_9ck100 FIND v(dout1_9) AT=505.025n

* CHECK dout1_10 Vdout1_10ck100 = 0 time = 505
.meas tran vdout1_10ck100 FIND v(dout1_10) AT=505.025n

* CHECK dout1_11 Vdout1_11ck100 = 0 time = 505
.meas tran vdout1_11ck100 FIND v(dout1_11) AT=505.025n

* CHECK dout1_12 Vdout1_12ck100 = 1.0 time = 505
.meas tran vdout1_12ck100 FIND v(dout1_12) AT=505.025n

* CHECK dout1_13 Vdout1_13ck100 = 1.0 time = 505
.meas tran vdout1_13ck100 FIND v(dout1_13) AT=505.025n

* CHECK dout1_14 Vdout1_14ck100 = 0 time = 505
.meas tran vdout1_14ck100 FIND v(dout1_14) AT=505.025n

* CHECK dout1_15 Vdout1_15ck100 = 0 time = 505
.meas tran vdout1_15ck100 FIND v(dout1_15) AT=505.025n

* CHECK dout1_16 Vdout1_16ck100 = 0 time = 505
.meas tran vdout1_16ck100 FIND v(dout1_16) AT=505.025n

* CHECK dout1_0 Vdout1_0ck103 = 0 time = 520
.meas tran vdout1_0ck103 FIND v(dout1_0) AT=520.025n

* CHECK dout1_1 Vdout1_1ck103 = 0 time = 520
.meas tran vdout1_1ck103 FIND v(dout1_1) AT=520.025n

* CHECK dout1_2 Vdout1_2ck103 = 0 time = 520
.meas tran vdout1_2ck103 FIND v(dout1_2) AT=520.025n

* CHECK dout1_3 Vdout1_3ck103 = 1.0 time = 520
.meas tran vdout1_3ck103 FIND v(dout1_3) AT=520.025n

* CHECK dout1_4 Vdout1_4ck103 = 1.0 time = 520
.meas tran vdout1_4ck103 FIND v(dout1_4) AT=520.025n

* CHECK dout1_5 Vdout1_5ck103 = 1.0 time = 520
.meas tran vdout1_5ck103 FIND v(dout1_5) AT=520.025n

* CHECK dout1_6 Vdout1_6ck103 = 0 time = 520
.meas tran vdout1_6ck103 FIND v(dout1_6) AT=520.025n

* CHECK dout1_7 Vdout1_7ck103 = 0 time = 520
.meas tran vdout1_7ck103 FIND v(dout1_7) AT=520.025n

* CHECK dout1_8 Vdout1_8ck103 = 1.0 time = 520
.meas tran vdout1_8ck103 FIND v(dout1_8) AT=520.025n

* CHECK dout1_9 Vdout1_9ck103 = 1.0 time = 520
.meas tran vdout1_9ck103 FIND v(dout1_9) AT=520.025n

* CHECK dout1_10 Vdout1_10ck103 = 0 time = 520
.meas tran vdout1_10ck103 FIND v(dout1_10) AT=520.025n

* CHECK dout1_11 Vdout1_11ck103 = 0 time = 520
.meas tran vdout1_11ck103 FIND v(dout1_11) AT=520.025n

* CHECK dout1_12 Vdout1_12ck103 = 1.0 time = 520
.meas tran vdout1_12ck103 FIND v(dout1_12) AT=520.025n

* CHECK dout1_13 Vdout1_13ck103 = 1.0 time = 520
.meas tran vdout1_13ck103 FIND v(dout1_13) AT=520.025n

* CHECK dout1_14 Vdout1_14ck103 = 0 time = 520
.meas tran vdout1_14ck103 FIND v(dout1_14) AT=520.025n

* CHECK dout1_15 Vdout1_15ck103 = 0 time = 520
.meas tran vdout1_15ck103 FIND v(dout1_15) AT=520.025n

* CHECK dout1_16 Vdout1_16ck103 = 0 time = 520
.meas tran vdout1_16ck103 FIND v(dout1_16) AT=520.025n

* CHECK dout1_0 Vdout1_0ck106 = 1.0 time = 535
.meas tran vdout1_0ck106 FIND v(dout1_0) AT=535.025n

* CHECK dout1_1 Vdout1_1ck106 = 1.0 time = 535
.meas tran vdout1_1ck106 FIND v(dout1_1) AT=535.025n

* CHECK dout1_2 Vdout1_2ck106 = 0 time = 535
.meas tran vdout1_2ck106 FIND v(dout1_2) AT=535.025n

* CHECK dout1_3 Vdout1_3ck106 = 0 time = 535
.meas tran vdout1_3ck106 FIND v(dout1_3) AT=535.025n

* CHECK dout1_4 Vdout1_4ck106 = 0 time = 535
.meas tran vdout1_4ck106 FIND v(dout1_4) AT=535.025n

* CHECK dout1_5 Vdout1_5ck106 = 1.0 time = 535
.meas tran vdout1_5ck106 FIND v(dout1_5) AT=535.025n

* CHECK dout1_6 Vdout1_6ck106 = 0 time = 535
.meas tran vdout1_6ck106 FIND v(dout1_6) AT=535.025n

* CHECK dout1_7 Vdout1_7ck106 = 0 time = 535
.meas tran vdout1_7ck106 FIND v(dout1_7) AT=535.025n

* CHECK dout1_8 Vdout1_8ck106 = 1.0 time = 535
.meas tran vdout1_8ck106 FIND v(dout1_8) AT=535.025n

* CHECK dout1_9 Vdout1_9ck106 = 0 time = 535
.meas tran vdout1_9ck106 FIND v(dout1_9) AT=535.025n

* CHECK dout1_10 Vdout1_10ck106 = 1.0 time = 535
.meas tran vdout1_10ck106 FIND v(dout1_10) AT=535.025n

* CHECK dout1_11 Vdout1_11ck106 = 1.0 time = 535
.meas tran vdout1_11ck106 FIND v(dout1_11) AT=535.025n

* CHECK dout1_12 Vdout1_12ck106 = 1.0 time = 535
.meas tran vdout1_12ck106 FIND v(dout1_12) AT=535.025n

* CHECK dout1_13 Vdout1_13ck106 = 0 time = 535
.meas tran vdout1_13ck106 FIND v(dout1_13) AT=535.025n

* CHECK dout1_14 Vdout1_14ck106 = 0 time = 535
.meas tran vdout1_14ck106 FIND v(dout1_14) AT=535.025n

* CHECK dout1_15 Vdout1_15ck106 = 1.0 time = 535
.meas tran vdout1_15ck106 FIND v(dout1_15) AT=535.025n

* CHECK dout1_16 Vdout1_16ck106 = 1.0 time = 535
.meas tran vdout1_16ck106 FIND v(dout1_16) AT=535.025n

* CHECK dout1_0 Vdout1_0ck108 = 0 time = 545
.meas tran vdout1_0ck108 FIND v(dout1_0) AT=545.025n

* CHECK dout1_1 Vdout1_1ck108 = 0 time = 545
.meas tran vdout1_1ck108 FIND v(dout1_1) AT=545.025n

* CHECK dout1_2 Vdout1_2ck108 = 0 time = 545
.meas tran vdout1_2ck108 FIND v(dout1_2) AT=545.025n

* CHECK dout1_3 Vdout1_3ck108 = 0 time = 545
.meas tran vdout1_3ck108 FIND v(dout1_3) AT=545.025n

* CHECK dout1_4 Vdout1_4ck108 = 0 time = 545
.meas tran vdout1_4ck108 FIND v(dout1_4) AT=545.025n

* CHECK dout1_5 Vdout1_5ck108 = 0 time = 545
.meas tran vdout1_5ck108 FIND v(dout1_5) AT=545.025n

* CHECK dout1_6 Vdout1_6ck108 = 1.0 time = 545
.meas tran vdout1_6ck108 FIND v(dout1_6) AT=545.025n

* CHECK dout1_7 Vdout1_7ck108 = 0 time = 545
.meas tran vdout1_7ck108 FIND v(dout1_7) AT=545.025n

* CHECK dout1_8 Vdout1_8ck108 = 1.0 time = 545
.meas tran vdout1_8ck108 FIND v(dout1_8) AT=545.025n

* CHECK dout1_9 Vdout1_9ck108 = 1.0 time = 545
.meas tran vdout1_9ck108 FIND v(dout1_9) AT=545.025n

* CHECK dout1_10 Vdout1_10ck108 = 1.0 time = 545
.meas tran vdout1_10ck108 FIND v(dout1_10) AT=545.025n

* CHECK dout1_11 Vdout1_11ck108 = 0 time = 545
.meas tran vdout1_11ck108 FIND v(dout1_11) AT=545.025n

* CHECK dout1_12 Vdout1_12ck108 = 1.0 time = 545
.meas tran vdout1_12ck108 FIND v(dout1_12) AT=545.025n

* CHECK dout1_13 Vdout1_13ck108 = 0 time = 545
.meas tran vdout1_13ck108 FIND v(dout1_13) AT=545.025n

* CHECK dout1_14 Vdout1_14ck108 = 1.0 time = 545
.meas tran vdout1_14ck108 FIND v(dout1_14) AT=545.025n

* CHECK dout1_15 Vdout1_15ck108 = 1.0 time = 545
.meas tran vdout1_15ck108 FIND v(dout1_15) AT=545.025n

* CHECK dout1_16 Vdout1_16ck108 = 1.0 time = 545
.meas tran vdout1_16ck108 FIND v(dout1_16) AT=545.025n

* CHECK dout1_0 Vdout1_0ck110 = 0 time = 555
.meas tran vdout1_0ck110 FIND v(dout1_0) AT=555.025n

* CHECK dout1_1 Vdout1_1ck110 = 0 time = 555
.meas tran vdout1_1ck110 FIND v(dout1_1) AT=555.025n

* CHECK dout1_2 Vdout1_2ck110 = 0 time = 555
.meas tran vdout1_2ck110 FIND v(dout1_2) AT=555.025n

* CHECK dout1_3 Vdout1_3ck110 = 0 time = 555
.meas tran vdout1_3ck110 FIND v(dout1_3) AT=555.025n

* CHECK dout1_4 Vdout1_4ck110 = 0 time = 555
.meas tran vdout1_4ck110 FIND v(dout1_4) AT=555.025n

* CHECK dout1_5 Vdout1_5ck110 = 0 time = 555
.meas tran vdout1_5ck110 FIND v(dout1_5) AT=555.025n

* CHECK dout1_6 Vdout1_6ck110 = 1.0 time = 555
.meas tran vdout1_6ck110 FIND v(dout1_6) AT=555.025n

* CHECK dout1_7 Vdout1_7ck110 = 0 time = 555
.meas tran vdout1_7ck110 FIND v(dout1_7) AT=555.025n

* CHECK dout1_8 Vdout1_8ck110 = 1.0 time = 555
.meas tran vdout1_8ck110 FIND v(dout1_8) AT=555.025n

* CHECK dout1_9 Vdout1_9ck110 = 1.0 time = 555
.meas tran vdout1_9ck110 FIND v(dout1_9) AT=555.025n

* CHECK dout1_10 Vdout1_10ck110 = 1.0 time = 555
.meas tran vdout1_10ck110 FIND v(dout1_10) AT=555.025n

* CHECK dout1_11 Vdout1_11ck110 = 0 time = 555
.meas tran vdout1_11ck110 FIND v(dout1_11) AT=555.025n

* CHECK dout1_12 Vdout1_12ck110 = 1.0 time = 555
.meas tran vdout1_12ck110 FIND v(dout1_12) AT=555.025n

* CHECK dout1_13 Vdout1_13ck110 = 0 time = 555
.meas tran vdout1_13ck110 FIND v(dout1_13) AT=555.025n

* CHECK dout1_14 Vdout1_14ck110 = 1.0 time = 555
.meas tran vdout1_14ck110 FIND v(dout1_14) AT=555.025n

* CHECK dout1_15 Vdout1_15ck110 = 1.0 time = 555
.meas tran vdout1_15ck110 FIND v(dout1_15) AT=555.025n

* CHECK dout1_16 Vdout1_16ck110 = 1.0 time = 555
.meas tran vdout1_16ck110 FIND v(dout1_16) AT=555.025n

* CHECK dout1_0 Vdout1_0ck114 = 1.0 time = 575
.meas tran vdout1_0ck114 FIND v(dout1_0) AT=575.025n

* CHECK dout1_1 Vdout1_1ck114 = 1.0 time = 575
.meas tran vdout1_1ck114 FIND v(dout1_1) AT=575.025n

* CHECK dout1_2 Vdout1_2ck114 = 0 time = 575
.meas tran vdout1_2ck114 FIND v(dout1_2) AT=575.025n

* CHECK dout1_3 Vdout1_3ck114 = 1.0 time = 575
.meas tran vdout1_3ck114 FIND v(dout1_3) AT=575.025n

* CHECK dout1_4 Vdout1_4ck114 = 1.0 time = 575
.meas tran vdout1_4ck114 FIND v(dout1_4) AT=575.025n

* CHECK dout1_5 Vdout1_5ck114 = 1.0 time = 575
.meas tran vdout1_5ck114 FIND v(dout1_5) AT=575.025n

* CHECK dout1_6 Vdout1_6ck114 = 0 time = 575
.meas tran vdout1_6ck114 FIND v(dout1_6) AT=575.025n

* CHECK dout1_7 Vdout1_7ck114 = 1.0 time = 575
.meas tran vdout1_7ck114 FIND v(dout1_7) AT=575.025n

* CHECK dout1_8 Vdout1_8ck114 = 1.0 time = 575
.meas tran vdout1_8ck114 FIND v(dout1_8) AT=575.025n

* CHECK dout1_9 Vdout1_9ck114 = 1.0 time = 575
.meas tran vdout1_9ck114 FIND v(dout1_9) AT=575.025n

* CHECK dout1_10 Vdout1_10ck114 = 1.0 time = 575
.meas tran vdout1_10ck114 FIND v(dout1_10) AT=575.025n

* CHECK dout1_11 Vdout1_11ck114 = 0 time = 575
.meas tran vdout1_11ck114 FIND v(dout1_11) AT=575.025n

* CHECK dout1_12 Vdout1_12ck114 = 1.0 time = 575
.meas tran vdout1_12ck114 FIND v(dout1_12) AT=575.025n

* CHECK dout1_13 Vdout1_13ck114 = 0 time = 575
.meas tran vdout1_13ck114 FIND v(dout1_13) AT=575.025n

* CHECK dout1_14 Vdout1_14ck114 = 1.0 time = 575
.meas tran vdout1_14ck114 FIND v(dout1_14) AT=575.025n

* CHECK dout1_15 Vdout1_15ck114 = 1.0 time = 575
.meas tran vdout1_15ck114 FIND v(dout1_15) AT=575.025n

* CHECK dout1_16 Vdout1_16ck114 = 1.0 time = 575
.meas tran vdout1_16ck114 FIND v(dout1_16) AT=575.025n

* CHECK dout1_0 Vdout1_0ck115 = 1.0 time = 580
.meas tran vdout1_0ck115 FIND v(dout1_0) AT=580.025n

* CHECK dout1_1 Vdout1_1ck115 = 1.0 time = 580
.meas tran vdout1_1ck115 FIND v(dout1_1) AT=580.025n

* CHECK dout1_2 Vdout1_2ck115 = 0 time = 580
.meas tran vdout1_2ck115 FIND v(dout1_2) AT=580.025n

* CHECK dout1_3 Vdout1_3ck115 = 1.0 time = 580
.meas tran vdout1_3ck115 FIND v(dout1_3) AT=580.025n

* CHECK dout1_4 Vdout1_4ck115 = 1.0 time = 580
.meas tran vdout1_4ck115 FIND v(dout1_4) AT=580.025n

* CHECK dout1_5 Vdout1_5ck115 = 1.0 time = 580
.meas tran vdout1_5ck115 FIND v(dout1_5) AT=580.025n

* CHECK dout1_6 Vdout1_6ck115 = 0 time = 580
.meas tran vdout1_6ck115 FIND v(dout1_6) AT=580.025n

* CHECK dout1_7 Vdout1_7ck115 = 1.0 time = 580
.meas tran vdout1_7ck115 FIND v(dout1_7) AT=580.025n

* CHECK dout1_8 Vdout1_8ck115 = 1.0 time = 580
.meas tran vdout1_8ck115 FIND v(dout1_8) AT=580.025n

* CHECK dout1_9 Vdout1_9ck115 = 1.0 time = 580
.meas tran vdout1_9ck115 FIND v(dout1_9) AT=580.025n

* CHECK dout1_10 Vdout1_10ck115 = 1.0 time = 580
.meas tran vdout1_10ck115 FIND v(dout1_10) AT=580.025n

* CHECK dout1_11 Vdout1_11ck115 = 0 time = 580
.meas tran vdout1_11ck115 FIND v(dout1_11) AT=580.025n

* CHECK dout1_12 Vdout1_12ck115 = 1.0 time = 580
.meas tran vdout1_12ck115 FIND v(dout1_12) AT=580.025n

* CHECK dout1_13 Vdout1_13ck115 = 0 time = 580
.meas tran vdout1_13ck115 FIND v(dout1_13) AT=580.025n

* CHECK dout1_14 Vdout1_14ck115 = 1.0 time = 580
.meas tran vdout1_14ck115 FIND v(dout1_14) AT=580.025n

* CHECK dout1_15 Vdout1_15ck115 = 1.0 time = 580
.meas tran vdout1_15ck115 FIND v(dout1_15) AT=580.025n

* CHECK dout1_16 Vdout1_16ck115 = 1.0 time = 580
.meas tran vdout1_16ck115 FIND v(dout1_16) AT=580.025n

* CHECK dout1_0 Vdout1_0ck118 = 0 time = 595
.meas tran vdout1_0ck118 FIND v(dout1_0) AT=595.025n

* CHECK dout1_1 Vdout1_1ck118 = 0 time = 595
.meas tran vdout1_1ck118 FIND v(dout1_1) AT=595.025n

* CHECK dout1_2 Vdout1_2ck118 = 0 time = 595
.meas tran vdout1_2ck118 FIND v(dout1_2) AT=595.025n

* CHECK dout1_3 Vdout1_3ck118 = 0 time = 595
.meas tran vdout1_3ck118 FIND v(dout1_3) AT=595.025n

* CHECK dout1_4 Vdout1_4ck118 = 0 time = 595
.meas tran vdout1_4ck118 FIND v(dout1_4) AT=595.025n

* CHECK dout1_5 Vdout1_5ck118 = 0 time = 595
.meas tran vdout1_5ck118 FIND v(dout1_5) AT=595.025n

* CHECK dout1_6 Vdout1_6ck118 = 1.0 time = 595
.meas tran vdout1_6ck118 FIND v(dout1_6) AT=595.025n

* CHECK dout1_7 Vdout1_7ck118 = 0 time = 595
.meas tran vdout1_7ck118 FIND v(dout1_7) AT=595.025n

* CHECK dout1_8 Vdout1_8ck118 = 1.0 time = 595
.meas tran vdout1_8ck118 FIND v(dout1_8) AT=595.025n

* CHECK dout1_9 Vdout1_9ck118 = 1.0 time = 595
.meas tran vdout1_9ck118 FIND v(dout1_9) AT=595.025n

* CHECK dout1_10 Vdout1_10ck118 = 1.0 time = 595
.meas tran vdout1_10ck118 FIND v(dout1_10) AT=595.025n

* CHECK dout1_11 Vdout1_11ck118 = 0 time = 595
.meas tran vdout1_11ck118 FIND v(dout1_11) AT=595.025n

* CHECK dout1_12 Vdout1_12ck118 = 1.0 time = 595
.meas tran vdout1_12ck118 FIND v(dout1_12) AT=595.025n

* CHECK dout1_13 Vdout1_13ck118 = 0 time = 595
.meas tran vdout1_13ck118 FIND v(dout1_13) AT=595.025n

* CHECK dout1_14 Vdout1_14ck118 = 1.0 time = 595
.meas tran vdout1_14ck118 FIND v(dout1_14) AT=595.025n

* CHECK dout1_15 Vdout1_15ck118 = 1.0 time = 595
.meas tran vdout1_15ck118 FIND v(dout1_15) AT=595.025n

* CHECK dout1_16 Vdout1_16ck118 = 1.0 time = 595
.meas tran vdout1_16ck118 FIND v(dout1_16) AT=595.025n

* CHECK dout1_0 Vdout1_0ck122 = 0 time = 615
.meas tran vdout1_0ck122 FIND v(dout1_0) AT=615.025n

* CHECK dout1_1 Vdout1_1ck122 = 0 time = 615
.meas tran vdout1_1ck122 FIND v(dout1_1) AT=615.025n

* CHECK dout1_2 Vdout1_2ck122 = 1.0 time = 615
.meas tran vdout1_2ck122 FIND v(dout1_2) AT=615.025n

* CHECK dout1_3 Vdout1_3ck122 = 0 time = 615
.meas tran vdout1_3ck122 FIND v(dout1_3) AT=615.025n

* CHECK dout1_4 Vdout1_4ck122 = 0 time = 615
.meas tran vdout1_4ck122 FIND v(dout1_4) AT=615.025n

* CHECK dout1_5 Vdout1_5ck122 = 0 time = 615
.meas tran vdout1_5ck122 FIND v(dout1_5) AT=615.025n

* CHECK dout1_6 Vdout1_6ck122 = 1.0 time = 615
.meas tran vdout1_6ck122 FIND v(dout1_6) AT=615.025n

* CHECK dout1_7 Vdout1_7ck122 = 0 time = 615
.meas tran vdout1_7ck122 FIND v(dout1_7) AT=615.025n

* CHECK dout1_8 Vdout1_8ck122 = 1.0 time = 615
.meas tran vdout1_8ck122 FIND v(dout1_8) AT=615.025n

* CHECK dout1_9 Vdout1_9ck122 = 1.0 time = 615
.meas tran vdout1_9ck122 FIND v(dout1_9) AT=615.025n

* CHECK dout1_10 Vdout1_10ck122 = 1.0 time = 615
.meas tran vdout1_10ck122 FIND v(dout1_10) AT=615.025n

* CHECK dout1_11 Vdout1_11ck122 = 0 time = 615
.meas tran vdout1_11ck122 FIND v(dout1_11) AT=615.025n

* CHECK dout1_12 Vdout1_12ck122 = 1.0 time = 615
.meas tran vdout1_12ck122 FIND v(dout1_12) AT=615.025n

* CHECK dout1_13 Vdout1_13ck122 = 0 time = 615
.meas tran vdout1_13ck122 FIND v(dout1_13) AT=615.025n

* CHECK dout1_14 Vdout1_14ck122 = 1.0 time = 615
.meas tran vdout1_14ck122 FIND v(dout1_14) AT=615.025n

* CHECK dout1_15 Vdout1_15ck122 = 1.0 time = 615
.meas tran vdout1_15ck122 FIND v(dout1_15) AT=615.025n

* CHECK dout1_16 Vdout1_16ck122 = 1.0 time = 615
.meas tran vdout1_16ck122 FIND v(dout1_16) AT=615.025n

* CHECK dout1_0 Vdout1_0ck123 = 1.0 time = 620
.meas tran vdout1_0ck123 FIND v(dout1_0) AT=620.025n

* CHECK dout1_1 Vdout1_1ck123 = 1.0 time = 620
.meas tran vdout1_1ck123 FIND v(dout1_1) AT=620.025n

* CHECK dout1_2 Vdout1_2ck123 = 0 time = 620
.meas tran vdout1_2ck123 FIND v(dout1_2) AT=620.025n

* CHECK dout1_3 Vdout1_3ck123 = 1.0 time = 620
.meas tran vdout1_3ck123 FIND v(dout1_3) AT=620.025n

* CHECK dout1_4 Vdout1_4ck123 = 1.0 time = 620
.meas tran vdout1_4ck123 FIND v(dout1_4) AT=620.025n

* CHECK dout1_5 Vdout1_5ck123 = 1.0 time = 620
.meas tran vdout1_5ck123 FIND v(dout1_5) AT=620.025n

* CHECK dout1_6 Vdout1_6ck123 = 0 time = 620
.meas tran vdout1_6ck123 FIND v(dout1_6) AT=620.025n

* CHECK dout1_7 Vdout1_7ck123 = 0 time = 620
.meas tran vdout1_7ck123 FIND v(dout1_7) AT=620.025n

* CHECK dout1_8 Vdout1_8ck123 = 0 time = 620
.meas tran vdout1_8ck123 FIND v(dout1_8) AT=620.025n

* CHECK dout1_9 Vdout1_9ck123 = 1.0 time = 620
.meas tran vdout1_9ck123 FIND v(dout1_9) AT=620.025n

* CHECK dout1_10 Vdout1_10ck123 = 1.0 time = 620
.meas tran vdout1_10ck123 FIND v(dout1_10) AT=620.025n

* CHECK dout1_11 Vdout1_11ck123 = 1.0 time = 620
.meas tran vdout1_11ck123 FIND v(dout1_11) AT=620.025n

* CHECK dout1_12 Vdout1_12ck123 = 0 time = 620
.meas tran vdout1_12ck123 FIND v(dout1_12) AT=620.025n

* CHECK dout1_13 Vdout1_13ck123 = 0 time = 620
.meas tran vdout1_13ck123 FIND v(dout1_13) AT=620.025n

* CHECK dout1_14 Vdout1_14ck123 = 1.0 time = 620
.meas tran vdout1_14ck123 FIND v(dout1_14) AT=620.025n

* CHECK dout1_15 Vdout1_15ck123 = 0 time = 620
.meas tran vdout1_15ck123 FIND v(dout1_15) AT=620.025n

* CHECK dout1_16 Vdout1_16ck123 = 1.0 time = 620
.meas tran vdout1_16ck123 FIND v(dout1_16) AT=620.025n

* CHECK dout1_0 Vdout1_0ck126 = 1.0 time = 635
.meas tran vdout1_0ck126 FIND v(dout1_0) AT=635.025n

* CHECK dout1_1 Vdout1_1ck126 = 1.0 time = 635
.meas tran vdout1_1ck126 FIND v(dout1_1) AT=635.025n

* CHECK dout1_2 Vdout1_2ck126 = 0 time = 635
.meas tran vdout1_2ck126 FIND v(dout1_2) AT=635.025n

* CHECK dout1_3 Vdout1_3ck126 = 1.0 time = 635
.meas tran vdout1_3ck126 FIND v(dout1_3) AT=635.025n

* CHECK dout1_4 Vdout1_4ck126 = 1.0 time = 635
.meas tran vdout1_4ck126 FIND v(dout1_4) AT=635.025n

* CHECK dout1_5 Vdout1_5ck126 = 1.0 time = 635
.meas tran vdout1_5ck126 FIND v(dout1_5) AT=635.025n

* CHECK dout1_6 Vdout1_6ck126 = 0 time = 635
.meas tran vdout1_6ck126 FIND v(dout1_6) AT=635.025n

* CHECK dout1_7 Vdout1_7ck126 = 0 time = 635
.meas tran vdout1_7ck126 FIND v(dout1_7) AT=635.025n

* CHECK dout1_8 Vdout1_8ck126 = 0 time = 635
.meas tran vdout1_8ck126 FIND v(dout1_8) AT=635.025n

* CHECK dout1_9 Vdout1_9ck126 = 1.0 time = 635
.meas tran vdout1_9ck126 FIND v(dout1_9) AT=635.025n

* CHECK dout1_10 Vdout1_10ck126 = 1.0 time = 635
.meas tran vdout1_10ck126 FIND v(dout1_10) AT=635.025n

* CHECK dout1_11 Vdout1_11ck126 = 1.0 time = 635
.meas tran vdout1_11ck126 FIND v(dout1_11) AT=635.025n

* CHECK dout1_12 Vdout1_12ck126 = 0 time = 635
.meas tran vdout1_12ck126 FIND v(dout1_12) AT=635.025n

* CHECK dout1_13 Vdout1_13ck126 = 0 time = 635
.meas tran vdout1_13ck126 FIND v(dout1_13) AT=635.025n

* CHECK dout1_14 Vdout1_14ck126 = 1.0 time = 635
.meas tran vdout1_14ck126 FIND v(dout1_14) AT=635.025n

* CHECK dout1_15 Vdout1_15ck126 = 0 time = 635
.meas tran vdout1_15ck126 FIND v(dout1_15) AT=635.025n

* CHECK dout1_16 Vdout1_16ck126 = 1.0 time = 635
.meas tran vdout1_16ck126 FIND v(dout1_16) AT=635.025n

* CHECK dout1_0 Vdout1_0ck127 = 1.0 time = 640
.meas tran vdout1_0ck127 FIND v(dout1_0) AT=640.025n

* CHECK dout1_1 Vdout1_1ck127 = 1.0 time = 640
.meas tran vdout1_1ck127 FIND v(dout1_1) AT=640.025n

* CHECK dout1_2 Vdout1_2ck127 = 0 time = 640
.meas tran vdout1_2ck127 FIND v(dout1_2) AT=640.025n

* CHECK dout1_3 Vdout1_3ck127 = 1.0 time = 640
.meas tran vdout1_3ck127 FIND v(dout1_3) AT=640.025n

* CHECK dout1_4 Vdout1_4ck127 = 1.0 time = 640
.meas tran vdout1_4ck127 FIND v(dout1_4) AT=640.025n

* CHECK dout1_5 Vdout1_5ck127 = 0 time = 640
.meas tran vdout1_5ck127 FIND v(dout1_5) AT=640.025n

* CHECK dout1_6 Vdout1_6ck127 = 0 time = 640
.meas tran vdout1_6ck127 FIND v(dout1_6) AT=640.025n

* CHECK dout1_7 Vdout1_7ck127 = 1.0 time = 640
.meas tran vdout1_7ck127 FIND v(dout1_7) AT=640.025n

* CHECK dout1_8 Vdout1_8ck127 = 0 time = 640
.meas tran vdout1_8ck127 FIND v(dout1_8) AT=640.025n

* CHECK dout1_9 Vdout1_9ck127 = 1.0 time = 640
.meas tran vdout1_9ck127 FIND v(dout1_9) AT=640.025n

* CHECK dout1_10 Vdout1_10ck127 = 1.0 time = 640
.meas tran vdout1_10ck127 FIND v(dout1_10) AT=640.025n

* CHECK dout1_11 Vdout1_11ck127 = 0 time = 640
.meas tran vdout1_11ck127 FIND v(dout1_11) AT=640.025n

* CHECK dout1_12 Vdout1_12ck127 = 0 time = 640
.meas tran vdout1_12ck127 FIND v(dout1_12) AT=640.025n

* CHECK dout1_13 Vdout1_13ck127 = 1.0 time = 640
.meas tran vdout1_13ck127 FIND v(dout1_13) AT=640.025n

* CHECK dout1_14 Vdout1_14ck127 = 0 time = 640
.meas tran vdout1_14ck127 FIND v(dout1_14) AT=640.025n

* CHECK dout1_15 Vdout1_15ck127 = 0 time = 640
.meas tran vdout1_15ck127 FIND v(dout1_15) AT=640.025n

* CHECK dout1_16 Vdout1_16ck127 = 1.0 time = 640
.meas tran vdout1_16ck127 FIND v(dout1_16) AT=640.025n

* CHECK dout1_0 Vdout1_0ck129 = 1.0 time = 650
.meas tran vdout1_0ck129 FIND v(dout1_0) AT=650.025n

* CHECK dout1_1 Vdout1_1ck129 = 1.0 time = 650
.meas tran vdout1_1ck129 FIND v(dout1_1) AT=650.025n

* CHECK dout1_2 Vdout1_2ck129 = 0 time = 650
.meas tran vdout1_2ck129 FIND v(dout1_2) AT=650.025n

* CHECK dout1_3 Vdout1_3ck129 = 1.0 time = 650
.meas tran vdout1_3ck129 FIND v(dout1_3) AT=650.025n

* CHECK dout1_4 Vdout1_4ck129 = 1.0 time = 650
.meas tran vdout1_4ck129 FIND v(dout1_4) AT=650.025n

* CHECK dout1_5 Vdout1_5ck129 = 1.0 time = 650
.meas tran vdout1_5ck129 FIND v(dout1_5) AT=650.025n

* CHECK dout1_6 Vdout1_6ck129 = 0 time = 650
.meas tran vdout1_6ck129 FIND v(dout1_6) AT=650.025n

* CHECK dout1_7 Vdout1_7ck129 = 0 time = 650
.meas tran vdout1_7ck129 FIND v(dout1_7) AT=650.025n

* CHECK dout1_8 Vdout1_8ck129 = 0 time = 650
.meas tran vdout1_8ck129 FIND v(dout1_8) AT=650.025n

* CHECK dout1_9 Vdout1_9ck129 = 0 time = 650
.meas tran vdout1_9ck129 FIND v(dout1_9) AT=650.025n

* CHECK dout1_10 Vdout1_10ck129 = 0 time = 650
.meas tran vdout1_10ck129 FIND v(dout1_10) AT=650.025n

* CHECK dout1_11 Vdout1_11ck129 = 0 time = 650
.meas tran vdout1_11ck129 FIND v(dout1_11) AT=650.025n

* CHECK dout1_12 Vdout1_12ck129 = 1.0 time = 650
.meas tran vdout1_12ck129 FIND v(dout1_12) AT=650.025n

* CHECK dout1_13 Vdout1_13ck129 = 0 time = 650
.meas tran vdout1_13ck129 FIND v(dout1_13) AT=650.025n

* CHECK dout1_14 Vdout1_14ck129 = 0 time = 650
.meas tran vdout1_14ck129 FIND v(dout1_14) AT=650.025n

* CHECK dout1_15 Vdout1_15ck129 = 0 time = 650
.meas tran vdout1_15ck129 FIND v(dout1_15) AT=650.025n

* CHECK dout1_16 Vdout1_16ck129 = 0 time = 650
.meas tran vdout1_16ck129 FIND v(dout1_16) AT=650.025n

* CHECK dout1_0 Vdout1_0ck131 = 1.0 time = 660
.meas tran vdout1_0ck131 FIND v(dout1_0) AT=660.025n

* CHECK dout1_1 Vdout1_1ck131 = 1.0 time = 660
.meas tran vdout1_1ck131 FIND v(dout1_1) AT=660.025n

* CHECK dout1_2 Vdout1_2ck131 = 0 time = 660
.meas tran vdout1_2ck131 FIND v(dout1_2) AT=660.025n

* CHECK dout1_3 Vdout1_3ck131 = 1.0 time = 660
.meas tran vdout1_3ck131 FIND v(dout1_3) AT=660.025n

* CHECK dout1_4 Vdout1_4ck131 = 1.0 time = 660
.meas tran vdout1_4ck131 FIND v(dout1_4) AT=660.025n

* CHECK dout1_5 Vdout1_5ck131 = 0 time = 660
.meas tran vdout1_5ck131 FIND v(dout1_5) AT=660.025n

* CHECK dout1_6 Vdout1_6ck131 = 0 time = 660
.meas tran vdout1_6ck131 FIND v(dout1_6) AT=660.025n

* CHECK dout1_7 Vdout1_7ck131 = 1.0 time = 660
.meas tran vdout1_7ck131 FIND v(dout1_7) AT=660.025n

* CHECK dout1_8 Vdout1_8ck131 = 0 time = 660
.meas tran vdout1_8ck131 FIND v(dout1_8) AT=660.025n

* CHECK dout1_9 Vdout1_9ck131 = 1.0 time = 660
.meas tran vdout1_9ck131 FIND v(dout1_9) AT=660.025n

* CHECK dout1_10 Vdout1_10ck131 = 1.0 time = 660
.meas tran vdout1_10ck131 FIND v(dout1_10) AT=660.025n

* CHECK dout1_11 Vdout1_11ck131 = 0 time = 660
.meas tran vdout1_11ck131 FIND v(dout1_11) AT=660.025n

* CHECK dout1_12 Vdout1_12ck131 = 0 time = 660
.meas tran vdout1_12ck131 FIND v(dout1_12) AT=660.025n

* CHECK dout1_13 Vdout1_13ck131 = 1.0 time = 660
.meas tran vdout1_13ck131 FIND v(dout1_13) AT=660.025n

* CHECK dout1_14 Vdout1_14ck131 = 0 time = 660
.meas tran vdout1_14ck131 FIND v(dout1_14) AT=660.025n

* CHECK dout1_15 Vdout1_15ck131 = 0 time = 660
.meas tran vdout1_15ck131 FIND v(dout1_15) AT=660.025n

* CHECK dout1_16 Vdout1_16ck131 = 1.0 time = 660
.meas tran vdout1_16ck131 FIND v(dout1_16) AT=660.025n

* CHECK dout1_0 Vdout1_0ck133 = 0 time = 670
.meas tran vdout1_0ck133 FIND v(dout1_0) AT=670.025n

* CHECK dout1_1 Vdout1_1ck133 = 0 time = 670
.meas tran vdout1_1ck133 FIND v(dout1_1) AT=670.025n

* CHECK dout1_2 Vdout1_2ck133 = 1.0 time = 670
.meas tran vdout1_2ck133 FIND v(dout1_2) AT=670.025n

* CHECK dout1_3 Vdout1_3ck133 = 0 time = 670
.meas tran vdout1_3ck133 FIND v(dout1_3) AT=670.025n

* CHECK dout1_4 Vdout1_4ck133 = 0 time = 670
.meas tran vdout1_4ck133 FIND v(dout1_4) AT=670.025n

* CHECK dout1_5 Vdout1_5ck133 = 0 time = 670
.meas tran vdout1_5ck133 FIND v(dout1_5) AT=670.025n

* CHECK dout1_6 Vdout1_6ck133 = 1.0 time = 670
.meas tran vdout1_6ck133 FIND v(dout1_6) AT=670.025n

* CHECK dout1_7 Vdout1_7ck133 = 0 time = 670
.meas tran vdout1_7ck133 FIND v(dout1_7) AT=670.025n

* CHECK dout1_8 Vdout1_8ck133 = 1.0 time = 670
.meas tran vdout1_8ck133 FIND v(dout1_8) AT=670.025n

* CHECK dout1_9 Vdout1_9ck133 = 1.0 time = 670
.meas tran vdout1_9ck133 FIND v(dout1_9) AT=670.025n

* CHECK dout1_10 Vdout1_10ck133 = 1.0 time = 670
.meas tran vdout1_10ck133 FIND v(dout1_10) AT=670.025n

* CHECK dout1_11 Vdout1_11ck133 = 0 time = 670
.meas tran vdout1_11ck133 FIND v(dout1_11) AT=670.025n

* CHECK dout1_12 Vdout1_12ck133 = 1.0 time = 670
.meas tran vdout1_12ck133 FIND v(dout1_12) AT=670.025n

* CHECK dout1_13 Vdout1_13ck133 = 0 time = 670
.meas tran vdout1_13ck133 FIND v(dout1_13) AT=670.025n

* CHECK dout1_14 Vdout1_14ck133 = 1.0 time = 670
.meas tran vdout1_14ck133 FIND v(dout1_14) AT=670.025n

* CHECK dout1_15 Vdout1_15ck133 = 1.0 time = 670
.meas tran vdout1_15ck133 FIND v(dout1_15) AT=670.025n

* CHECK dout1_16 Vdout1_16ck133 = 1.0 time = 670
.meas tran vdout1_16ck133 FIND v(dout1_16) AT=670.025n

* CHECK dout1_0 Vdout1_0ck134 = 0 time = 675
.meas tran vdout1_0ck134 FIND v(dout1_0) AT=675.025n

* CHECK dout1_1 Vdout1_1ck134 = 0 time = 675
.meas tran vdout1_1ck134 FIND v(dout1_1) AT=675.025n

* CHECK dout1_2 Vdout1_2ck134 = 1.0 time = 675
.meas tran vdout1_2ck134 FIND v(dout1_2) AT=675.025n

* CHECK dout1_3 Vdout1_3ck134 = 0 time = 675
.meas tran vdout1_3ck134 FIND v(dout1_3) AT=675.025n

* CHECK dout1_4 Vdout1_4ck134 = 0 time = 675
.meas tran vdout1_4ck134 FIND v(dout1_4) AT=675.025n

* CHECK dout1_5 Vdout1_5ck134 = 0 time = 675
.meas tran vdout1_5ck134 FIND v(dout1_5) AT=675.025n

* CHECK dout1_6 Vdout1_6ck134 = 1.0 time = 675
.meas tran vdout1_6ck134 FIND v(dout1_6) AT=675.025n

* CHECK dout1_7 Vdout1_7ck134 = 0 time = 675
.meas tran vdout1_7ck134 FIND v(dout1_7) AT=675.025n

* CHECK dout1_8 Vdout1_8ck134 = 1.0 time = 675
.meas tran vdout1_8ck134 FIND v(dout1_8) AT=675.025n

* CHECK dout1_9 Vdout1_9ck134 = 1.0 time = 675
.meas tran vdout1_9ck134 FIND v(dout1_9) AT=675.025n

* CHECK dout1_10 Vdout1_10ck134 = 1.0 time = 675
.meas tran vdout1_10ck134 FIND v(dout1_10) AT=675.025n

* CHECK dout1_11 Vdout1_11ck134 = 0 time = 675
.meas tran vdout1_11ck134 FIND v(dout1_11) AT=675.025n

* CHECK dout1_12 Vdout1_12ck134 = 1.0 time = 675
.meas tran vdout1_12ck134 FIND v(dout1_12) AT=675.025n

* CHECK dout1_13 Vdout1_13ck134 = 0 time = 675
.meas tran vdout1_13ck134 FIND v(dout1_13) AT=675.025n

* CHECK dout1_14 Vdout1_14ck134 = 1.0 time = 675
.meas tran vdout1_14ck134 FIND v(dout1_14) AT=675.025n

* CHECK dout1_15 Vdout1_15ck134 = 1.0 time = 675
.meas tran vdout1_15ck134 FIND v(dout1_15) AT=675.025n

* CHECK dout1_16 Vdout1_16ck134 = 1.0 time = 675
.meas tran vdout1_16ck134 FIND v(dout1_16) AT=675.025n

* CHECK dout1_0 Vdout1_0ck138 = 1.0 time = 695
.meas tran vdout1_0ck138 FIND v(dout1_0) AT=695.025n

* CHECK dout1_1 Vdout1_1ck138 = 1.0 time = 695
.meas tran vdout1_1ck138 FIND v(dout1_1) AT=695.025n

* CHECK dout1_2 Vdout1_2ck138 = 0 time = 695
.meas tran vdout1_2ck138 FIND v(dout1_2) AT=695.025n

* CHECK dout1_3 Vdout1_3ck138 = 0 time = 695
.meas tran vdout1_3ck138 FIND v(dout1_3) AT=695.025n

* CHECK dout1_4 Vdout1_4ck138 = 1.0 time = 695
.meas tran vdout1_4ck138 FIND v(dout1_4) AT=695.025n

* CHECK dout1_5 Vdout1_5ck138 = 0 time = 695
.meas tran vdout1_5ck138 FIND v(dout1_5) AT=695.025n

* CHECK dout1_6 Vdout1_6ck138 = 0 time = 695
.meas tran vdout1_6ck138 FIND v(dout1_6) AT=695.025n

* CHECK dout1_7 Vdout1_7ck138 = 1.0 time = 695
.meas tran vdout1_7ck138 FIND v(dout1_7) AT=695.025n

* CHECK dout1_8 Vdout1_8ck138 = 0 time = 695
.meas tran vdout1_8ck138 FIND v(dout1_8) AT=695.025n

* CHECK dout1_9 Vdout1_9ck138 = 1.0 time = 695
.meas tran vdout1_9ck138 FIND v(dout1_9) AT=695.025n

* CHECK dout1_10 Vdout1_10ck138 = 0 time = 695
.meas tran vdout1_10ck138 FIND v(dout1_10) AT=695.025n

* CHECK dout1_11 Vdout1_11ck138 = 0 time = 695
.meas tran vdout1_11ck138 FIND v(dout1_11) AT=695.025n

* CHECK dout1_12 Vdout1_12ck138 = 1.0 time = 695
.meas tran vdout1_12ck138 FIND v(dout1_12) AT=695.025n

* CHECK dout1_13 Vdout1_13ck138 = 1.0 time = 695
.meas tran vdout1_13ck138 FIND v(dout1_13) AT=695.025n

* CHECK dout1_14 Vdout1_14ck138 = 1.0 time = 695
.meas tran vdout1_14ck138 FIND v(dout1_14) AT=695.025n

* CHECK dout1_15 Vdout1_15ck138 = 1.0 time = 695
.meas tran vdout1_15ck138 FIND v(dout1_15) AT=695.025n

* CHECK dout1_16 Vdout1_16ck138 = 1.0 time = 695
.meas tran vdout1_16ck138 FIND v(dout1_16) AT=695.025n

* CHECK dout1_0 Vdout1_0ck139 = 0 time = 700
.meas tran vdout1_0ck139 FIND v(dout1_0) AT=700.025n

* CHECK dout1_1 Vdout1_1ck139 = 0 time = 700
.meas tran vdout1_1ck139 FIND v(dout1_1) AT=700.025n

* CHECK dout1_2 Vdout1_2ck139 = 1.0 time = 700
.meas tran vdout1_2ck139 FIND v(dout1_2) AT=700.025n

* CHECK dout1_3 Vdout1_3ck139 = 0 time = 700
.meas tran vdout1_3ck139 FIND v(dout1_3) AT=700.025n

* CHECK dout1_4 Vdout1_4ck139 = 0 time = 700
.meas tran vdout1_4ck139 FIND v(dout1_4) AT=700.025n

* CHECK dout1_5 Vdout1_5ck139 = 0 time = 700
.meas tran vdout1_5ck139 FIND v(dout1_5) AT=700.025n

* CHECK dout1_6 Vdout1_6ck139 = 1.0 time = 700
.meas tran vdout1_6ck139 FIND v(dout1_6) AT=700.025n

* CHECK dout1_7 Vdout1_7ck139 = 0 time = 700
.meas tran vdout1_7ck139 FIND v(dout1_7) AT=700.025n

* CHECK dout1_8 Vdout1_8ck139 = 1.0 time = 700
.meas tran vdout1_8ck139 FIND v(dout1_8) AT=700.025n

* CHECK dout1_9 Vdout1_9ck139 = 1.0 time = 700
.meas tran vdout1_9ck139 FIND v(dout1_9) AT=700.025n

* CHECK dout1_10 Vdout1_10ck139 = 1.0 time = 700
.meas tran vdout1_10ck139 FIND v(dout1_10) AT=700.025n

* CHECK dout1_11 Vdout1_11ck139 = 0 time = 700
.meas tran vdout1_11ck139 FIND v(dout1_11) AT=700.025n

* CHECK dout1_12 Vdout1_12ck139 = 1.0 time = 700
.meas tran vdout1_12ck139 FIND v(dout1_12) AT=700.025n

* CHECK dout1_13 Vdout1_13ck139 = 0 time = 700
.meas tran vdout1_13ck139 FIND v(dout1_13) AT=700.025n

* CHECK dout1_14 Vdout1_14ck139 = 1.0 time = 700
.meas tran vdout1_14ck139 FIND v(dout1_14) AT=700.025n

* CHECK dout1_15 Vdout1_15ck139 = 1.0 time = 700
.meas tran vdout1_15ck139 FIND v(dout1_15) AT=700.025n

* CHECK dout1_16 Vdout1_16ck139 = 1.0 time = 700
.meas tran vdout1_16ck139 FIND v(dout1_16) AT=700.025n

* CHECK dout1_0 Vdout1_0ck140 = 0 time = 705
.meas tran vdout1_0ck140 FIND v(dout1_0) AT=705.025n

* CHECK dout1_1 Vdout1_1ck140 = 0 time = 705
.meas tran vdout1_1ck140 FIND v(dout1_1) AT=705.025n

* CHECK dout1_2 Vdout1_2ck140 = 1.0 time = 705
.meas tran vdout1_2ck140 FIND v(dout1_2) AT=705.025n

* CHECK dout1_3 Vdout1_3ck140 = 0 time = 705
.meas tran vdout1_3ck140 FIND v(dout1_3) AT=705.025n

* CHECK dout1_4 Vdout1_4ck140 = 0 time = 705
.meas tran vdout1_4ck140 FIND v(dout1_4) AT=705.025n

* CHECK dout1_5 Vdout1_5ck140 = 0 time = 705
.meas tran vdout1_5ck140 FIND v(dout1_5) AT=705.025n

* CHECK dout1_6 Vdout1_6ck140 = 1.0 time = 705
.meas tran vdout1_6ck140 FIND v(dout1_6) AT=705.025n

* CHECK dout1_7 Vdout1_7ck140 = 0 time = 705
.meas tran vdout1_7ck140 FIND v(dout1_7) AT=705.025n

* CHECK dout1_8 Vdout1_8ck140 = 1.0 time = 705
.meas tran vdout1_8ck140 FIND v(dout1_8) AT=705.025n

* CHECK dout1_9 Vdout1_9ck140 = 0 time = 705
.meas tran vdout1_9ck140 FIND v(dout1_9) AT=705.025n

* CHECK dout1_10 Vdout1_10ck140 = 1.0 time = 705
.meas tran vdout1_10ck140 FIND v(dout1_10) AT=705.025n

* CHECK dout1_11 Vdout1_11ck140 = 1.0 time = 705
.meas tran vdout1_11ck140 FIND v(dout1_11) AT=705.025n

* CHECK dout1_12 Vdout1_12ck140 = 1.0 time = 705
.meas tran vdout1_12ck140 FIND v(dout1_12) AT=705.025n

* CHECK dout1_13 Vdout1_13ck140 = 1.0 time = 705
.meas tran vdout1_13ck140 FIND v(dout1_13) AT=705.025n

* CHECK dout1_14 Vdout1_14ck140 = 0 time = 705
.meas tran vdout1_14ck140 FIND v(dout1_14) AT=705.025n

* CHECK dout1_15 Vdout1_15ck140 = 0 time = 705
.meas tran vdout1_15ck140 FIND v(dout1_15) AT=705.025n

* CHECK dout1_16 Vdout1_16ck140 = 0 time = 705
.meas tran vdout1_16ck140 FIND v(dout1_16) AT=705.025n

* CHECK dout1_0 Vdout1_0ck141 = 0 time = 710
.meas tran vdout1_0ck141 FIND v(dout1_0) AT=710.025n

* CHECK dout1_1 Vdout1_1ck141 = 0 time = 710
.meas tran vdout1_1ck141 FIND v(dout1_1) AT=710.025n

* CHECK dout1_2 Vdout1_2ck141 = 1.0 time = 710
.meas tran vdout1_2ck141 FIND v(dout1_2) AT=710.025n

* CHECK dout1_3 Vdout1_3ck141 = 0 time = 710
.meas tran vdout1_3ck141 FIND v(dout1_3) AT=710.025n

* CHECK dout1_4 Vdout1_4ck141 = 0 time = 710
.meas tran vdout1_4ck141 FIND v(dout1_4) AT=710.025n

* CHECK dout1_5 Vdout1_5ck141 = 0 time = 710
.meas tran vdout1_5ck141 FIND v(dout1_5) AT=710.025n

* CHECK dout1_6 Vdout1_6ck141 = 1.0 time = 710
.meas tran vdout1_6ck141 FIND v(dout1_6) AT=710.025n

* CHECK dout1_7 Vdout1_7ck141 = 0 time = 710
.meas tran vdout1_7ck141 FIND v(dout1_7) AT=710.025n

* CHECK dout1_8 Vdout1_8ck141 = 1.0 time = 710
.meas tran vdout1_8ck141 FIND v(dout1_8) AT=710.025n

* CHECK dout1_9 Vdout1_9ck141 = 0 time = 710
.meas tran vdout1_9ck141 FIND v(dout1_9) AT=710.025n

* CHECK dout1_10 Vdout1_10ck141 = 1.0 time = 710
.meas tran vdout1_10ck141 FIND v(dout1_10) AT=710.025n

* CHECK dout1_11 Vdout1_11ck141 = 1.0 time = 710
.meas tran vdout1_11ck141 FIND v(dout1_11) AT=710.025n

* CHECK dout1_12 Vdout1_12ck141 = 1.0 time = 710
.meas tran vdout1_12ck141 FIND v(dout1_12) AT=710.025n

* CHECK dout1_13 Vdout1_13ck141 = 1.0 time = 710
.meas tran vdout1_13ck141 FIND v(dout1_13) AT=710.025n

* CHECK dout1_14 Vdout1_14ck141 = 0 time = 710
.meas tran vdout1_14ck141 FIND v(dout1_14) AT=710.025n

* CHECK dout1_15 Vdout1_15ck141 = 0 time = 710
.meas tran vdout1_15ck141 FIND v(dout1_15) AT=710.025n

* CHECK dout1_16 Vdout1_16ck141 = 0 time = 710
.meas tran vdout1_16ck141 FIND v(dout1_16) AT=710.025n

* CHECK dout1_0 Vdout1_0ck147 = 0 time = 740
.meas tran vdout1_0ck147 FIND v(dout1_0) AT=740.025n

* CHECK dout1_1 Vdout1_1ck147 = 0 time = 740
.meas tran vdout1_1ck147 FIND v(dout1_1) AT=740.025n

* CHECK dout1_2 Vdout1_2ck147 = 1.0 time = 740
.meas tran vdout1_2ck147 FIND v(dout1_2) AT=740.025n

* CHECK dout1_3 Vdout1_3ck147 = 0 time = 740
.meas tran vdout1_3ck147 FIND v(dout1_3) AT=740.025n

* CHECK dout1_4 Vdout1_4ck147 = 0 time = 740
.meas tran vdout1_4ck147 FIND v(dout1_4) AT=740.025n

* CHECK dout1_5 Vdout1_5ck147 = 0 time = 740
.meas tran vdout1_5ck147 FIND v(dout1_5) AT=740.025n

* CHECK dout1_6 Vdout1_6ck147 = 1.0 time = 740
.meas tran vdout1_6ck147 FIND v(dout1_6) AT=740.025n

* CHECK dout1_7 Vdout1_7ck147 = 0 time = 740
.meas tran vdout1_7ck147 FIND v(dout1_7) AT=740.025n

* CHECK dout1_8 Vdout1_8ck147 = 1.0 time = 740
.meas tran vdout1_8ck147 FIND v(dout1_8) AT=740.025n

* CHECK dout1_9 Vdout1_9ck147 = 0 time = 740
.meas tran vdout1_9ck147 FIND v(dout1_9) AT=740.025n

* CHECK dout1_10 Vdout1_10ck147 = 1.0 time = 740
.meas tran vdout1_10ck147 FIND v(dout1_10) AT=740.025n

* CHECK dout1_11 Vdout1_11ck147 = 1.0 time = 740
.meas tran vdout1_11ck147 FIND v(dout1_11) AT=740.025n

* CHECK dout1_12 Vdout1_12ck147 = 1.0 time = 740
.meas tran vdout1_12ck147 FIND v(dout1_12) AT=740.025n

* CHECK dout1_13 Vdout1_13ck147 = 1.0 time = 740
.meas tran vdout1_13ck147 FIND v(dout1_13) AT=740.025n

* CHECK dout1_14 Vdout1_14ck147 = 0 time = 740
.meas tran vdout1_14ck147 FIND v(dout1_14) AT=740.025n

* CHECK dout1_15 Vdout1_15ck147 = 0 time = 740
.meas tran vdout1_15ck147 FIND v(dout1_15) AT=740.025n

* CHECK dout1_16 Vdout1_16ck147 = 0 time = 740
.meas tran vdout1_16ck147 FIND v(dout1_16) AT=740.025n

* CHECK dout1_0 Vdout1_0ck149 = 0 time = 750
.meas tran vdout1_0ck149 FIND v(dout1_0) AT=750.025n

* CHECK dout1_1 Vdout1_1ck149 = 0 time = 750
.meas tran vdout1_1ck149 FIND v(dout1_1) AT=750.025n

* CHECK dout1_2 Vdout1_2ck149 = 1.0 time = 750
.meas tran vdout1_2ck149 FIND v(dout1_2) AT=750.025n

* CHECK dout1_3 Vdout1_3ck149 = 0 time = 750
.meas tran vdout1_3ck149 FIND v(dout1_3) AT=750.025n

* CHECK dout1_4 Vdout1_4ck149 = 0 time = 750
.meas tran vdout1_4ck149 FIND v(dout1_4) AT=750.025n

* CHECK dout1_5 Vdout1_5ck149 = 0 time = 750
.meas tran vdout1_5ck149 FIND v(dout1_5) AT=750.025n

* CHECK dout1_6 Vdout1_6ck149 = 1.0 time = 750
.meas tran vdout1_6ck149 FIND v(dout1_6) AT=750.025n

* CHECK dout1_7 Vdout1_7ck149 = 0 time = 750
.meas tran vdout1_7ck149 FIND v(dout1_7) AT=750.025n

* CHECK dout1_8 Vdout1_8ck149 = 1.0 time = 750
.meas tran vdout1_8ck149 FIND v(dout1_8) AT=750.025n

* CHECK dout1_9 Vdout1_9ck149 = 0 time = 750
.meas tran vdout1_9ck149 FIND v(dout1_9) AT=750.025n

* CHECK dout1_10 Vdout1_10ck149 = 1.0 time = 750
.meas tran vdout1_10ck149 FIND v(dout1_10) AT=750.025n

* CHECK dout1_11 Vdout1_11ck149 = 1.0 time = 750
.meas tran vdout1_11ck149 FIND v(dout1_11) AT=750.025n

* CHECK dout1_12 Vdout1_12ck149 = 1.0 time = 750
.meas tran vdout1_12ck149 FIND v(dout1_12) AT=750.025n

* CHECK dout1_13 Vdout1_13ck149 = 1.0 time = 750
.meas tran vdout1_13ck149 FIND v(dout1_13) AT=750.025n

* CHECK dout1_14 Vdout1_14ck149 = 0 time = 750
.meas tran vdout1_14ck149 FIND v(dout1_14) AT=750.025n

* CHECK dout1_15 Vdout1_15ck149 = 0 time = 750
.meas tran vdout1_15ck149 FIND v(dout1_15) AT=750.025n

* CHECK dout1_16 Vdout1_16ck149 = 0 time = 750
.meas tran vdout1_16ck149 FIND v(dout1_16) AT=750.025n

* CHECK dout1_0 Vdout1_0ck151 = 0 time = 760
.meas tran vdout1_0ck151 FIND v(dout1_0) AT=760.025n

* CHECK dout1_1 Vdout1_1ck151 = 1.0 time = 760
.meas tran vdout1_1ck151 FIND v(dout1_1) AT=760.025n

* CHECK dout1_2 Vdout1_2ck151 = 0 time = 760
.meas tran vdout1_2ck151 FIND v(dout1_2) AT=760.025n

* CHECK dout1_3 Vdout1_3ck151 = 0 time = 760
.meas tran vdout1_3ck151 FIND v(dout1_3) AT=760.025n

* CHECK dout1_4 Vdout1_4ck151 = 1.0 time = 760
.meas tran vdout1_4ck151 FIND v(dout1_4) AT=760.025n

* CHECK dout1_5 Vdout1_5ck151 = 1.0 time = 760
.meas tran vdout1_5ck151 FIND v(dout1_5) AT=760.025n

* CHECK dout1_6 Vdout1_6ck151 = 0 time = 760
.meas tran vdout1_6ck151 FIND v(dout1_6) AT=760.025n

* CHECK dout1_7 Vdout1_7ck151 = 0 time = 760
.meas tran vdout1_7ck151 FIND v(dout1_7) AT=760.025n

* CHECK dout1_8 Vdout1_8ck151 = 0 time = 760
.meas tran vdout1_8ck151 FIND v(dout1_8) AT=760.025n

* CHECK dout1_9 Vdout1_9ck151 = 1.0 time = 760
.meas tran vdout1_9ck151 FIND v(dout1_9) AT=760.025n

* CHECK dout1_10 Vdout1_10ck151 = 1.0 time = 760
.meas tran vdout1_10ck151 FIND v(dout1_10) AT=760.025n

* CHECK dout1_11 Vdout1_11ck151 = 1.0 time = 760
.meas tran vdout1_11ck151 FIND v(dout1_11) AT=760.025n

* CHECK dout1_12 Vdout1_12ck151 = 1.0 time = 760
.meas tran vdout1_12ck151 FIND v(dout1_12) AT=760.025n

* CHECK dout1_13 Vdout1_13ck151 = 0 time = 760
.meas tran vdout1_13ck151 FIND v(dout1_13) AT=760.025n

* CHECK dout1_14 Vdout1_14ck151 = 1.0 time = 760
.meas tran vdout1_14ck151 FIND v(dout1_14) AT=760.025n

* CHECK dout1_15 Vdout1_15ck151 = 1.0 time = 760
.meas tran vdout1_15ck151 FIND v(dout1_15) AT=760.025n

* CHECK dout1_16 Vdout1_16ck151 = 0 time = 760
.meas tran vdout1_16ck151 FIND v(dout1_16) AT=760.025n

* CHECK dout1_0 Vdout1_0ck152 = 1.0 time = 765
.meas tran vdout1_0ck152 FIND v(dout1_0) AT=765.025n

* CHECK dout1_1 Vdout1_1ck152 = 1.0 time = 765
.meas tran vdout1_1ck152 FIND v(dout1_1) AT=765.025n

* CHECK dout1_2 Vdout1_2ck152 = 1.0 time = 765
.meas tran vdout1_2ck152 FIND v(dout1_2) AT=765.025n

* CHECK dout1_3 Vdout1_3ck152 = 1.0 time = 765
.meas tran vdout1_3ck152 FIND v(dout1_3) AT=765.025n

* CHECK dout1_4 Vdout1_4ck152 = 1.0 time = 765
.meas tran vdout1_4ck152 FIND v(dout1_4) AT=765.025n

* CHECK dout1_5 Vdout1_5ck152 = 1.0 time = 765
.meas tran vdout1_5ck152 FIND v(dout1_5) AT=765.025n

* CHECK dout1_6 Vdout1_6ck152 = 1.0 time = 765
.meas tran vdout1_6ck152 FIND v(dout1_6) AT=765.025n

* CHECK dout1_7 Vdout1_7ck152 = 1.0 time = 765
.meas tran vdout1_7ck152 FIND v(dout1_7) AT=765.025n

* CHECK dout1_8 Vdout1_8ck152 = 1.0 time = 765
.meas tran vdout1_8ck152 FIND v(dout1_8) AT=765.025n

* CHECK dout1_9 Vdout1_9ck152 = 0 time = 765
.meas tran vdout1_9ck152 FIND v(dout1_9) AT=765.025n

* CHECK dout1_10 Vdout1_10ck152 = 0 time = 765
.meas tran vdout1_10ck152 FIND v(dout1_10) AT=765.025n

* CHECK dout1_11 Vdout1_11ck152 = 0 time = 765
.meas tran vdout1_11ck152 FIND v(dout1_11) AT=765.025n

* CHECK dout1_12 Vdout1_12ck152 = 1.0 time = 765
.meas tran vdout1_12ck152 FIND v(dout1_12) AT=765.025n

* CHECK dout1_13 Vdout1_13ck152 = 1.0 time = 765
.meas tran vdout1_13ck152 FIND v(dout1_13) AT=765.025n

* CHECK dout1_14 Vdout1_14ck152 = 0 time = 765
.meas tran vdout1_14ck152 FIND v(dout1_14) AT=765.025n

* CHECK dout1_15 Vdout1_15ck152 = 1.0 time = 765
.meas tran vdout1_15ck152 FIND v(dout1_15) AT=765.025n

* CHECK dout1_16 Vdout1_16ck152 = 0 time = 765
.meas tran vdout1_16ck152 FIND v(dout1_16) AT=765.025n

* CHECK dout1_0 Vdout1_0ck153 = 0 time = 770
.meas tran vdout1_0ck153 FIND v(dout1_0) AT=770.025n

* CHECK dout1_1 Vdout1_1ck153 = 1.0 time = 770
.meas tran vdout1_1ck153 FIND v(dout1_1) AT=770.025n

* CHECK dout1_2 Vdout1_2ck153 = 0 time = 770
.meas tran vdout1_2ck153 FIND v(dout1_2) AT=770.025n

* CHECK dout1_3 Vdout1_3ck153 = 0 time = 770
.meas tran vdout1_3ck153 FIND v(dout1_3) AT=770.025n

* CHECK dout1_4 Vdout1_4ck153 = 0 time = 770
.meas tran vdout1_4ck153 FIND v(dout1_4) AT=770.025n

* CHECK dout1_5 Vdout1_5ck153 = 1.0 time = 770
.meas tran vdout1_5ck153 FIND v(dout1_5) AT=770.025n

* CHECK dout1_6 Vdout1_6ck153 = 0 time = 770
.meas tran vdout1_6ck153 FIND v(dout1_6) AT=770.025n

* CHECK dout1_7 Vdout1_7ck153 = 0 time = 770
.meas tran vdout1_7ck153 FIND v(dout1_7) AT=770.025n

* CHECK dout1_8 Vdout1_8ck153 = 1.0 time = 770
.meas tran vdout1_8ck153 FIND v(dout1_8) AT=770.025n

* CHECK dout1_9 Vdout1_9ck153 = 0 time = 770
.meas tran vdout1_9ck153 FIND v(dout1_9) AT=770.025n

* CHECK dout1_10 Vdout1_10ck153 = 1.0 time = 770
.meas tran vdout1_10ck153 FIND v(dout1_10) AT=770.025n

* CHECK dout1_11 Vdout1_11ck153 = 1.0 time = 770
.meas tran vdout1_11ck153 FIND v(dout1_11) AT=770.025n

* CHECK dout1_12 Vdout1_12ck153 = 0 time = 770
.meas tran vdout1_12ck153 FIND v(dout1_12) AT=770.025n

* CHECK dout1_13 Vdout1_13ck153 = 0 time = 770
.meas tran vdout1_13ck153 FIND v(dout1_13) AT=770.025n

* CHECK dout1_14 Vdout1_14ck153 = 0 time = 770
.meas tran vdout1_14ck153 FIND v(dout1_14) AT=770.025n

* CHECK dout1_15 Vdout1_15ck153 = 0 time = 770
.meas tran vdout1_15ck153 FIND v(dout1_15) AT=770.025n

* CHECK dout1_16 Vdout1_16ck153 = 0 time = 770
.meas tran vdout1_16ck153 FIND v(dout1_16) AT=770.025n

* CHECK dout1_0 Vdout1_0ck158 = 0 time = 795
.meas tran vdout1_0ck158 FIND v(dout1_0) AT=795.025n

* CHECK dout1_1 Vdout1_1ck158 = 1.0 time = 795
.meas tran vdout1_1ck158 FIND v(dout1_1) AT=795.025n

* CHECK dout1_2 Vdout1_2ck158 = 0 time = 795
.meas tran vdout1_2ck158 FIND v(dout1_2) AT=795.025n

* CHECK dout1_3 Vdout1_3ck158 = 0 time = 795
.meas tran vdout1_3ck158 FIND v(dout1_3) AT=795.025n

* CHECK dout1_4 Vdout1_4ck158 = 0 time = 795
.meas tran vdout1_4ck158 FIND v(dout1_4) AT=795.025n

* CHECK dout1_5 Vdout1_5ck158 = 1.0 time = 795
.meas tran vdout1_5ck158 FIND v(dout1_5) AT=795.025n

* CHECK dout1_6 Vdout1_6ck158 = 0 time = 795
.meas tran vdout1_6ck158 FIND v(dout1_6) AT=795.025n

* CHECK dout1_7 Vdout1_7ck158 = 0 time = 795
.meas tran vdout1_7ck158 FIND v(dout1_7) AT=795.025n

* CHECK dout1_8 Vdout1_8ck158 = 1.0 time = 795
.meas tran vdout1_8ck158 FIND v(dout1_8) AT=795.025n

* CHECK dout1_9 Vdout1_9ck158 = 0 time = 795
.meas tran vdout1_9ck158 FIND v(dout1_9) AT=795.025n

* CHECK dout1_10 Vdout1_10ck158 = 1.0 time = 795
.meas tran vdout1_10ck158 FIND v(dout1_10) AT=795.025n

* CHECK dout1_11 Vdout1_11ck158 = 1.0 time = 795
.meas tran vdout1_11ck158 FIND v(dout1_11) AT=795.025n

* CHECK dout1_12 Vdout1_12ck158 = 0 time = 795
.meas tran vdout1_12ck158 FIND v(dout1_12) AT=795.025n

* CHECK dout1_13 Vdout1_13ck158 = 0 time = 795
.meas tran vdout1_13ck158 FIND v(dout1_13) AT=795.025n

* CHECK dout1_14 Vdout1_14ck158 = 0 time = 795
.meas tran vdout1_14ck158 FIND v(dout1_14) AT=795.025n

* CHECK dout1_15 Vdout1_15ck158 = 0 time = 795
.meas tran vdout1_15ck158 FIND v(dout1_15) AT=795.025n

* CHECK dout1_16 Vdout1_16ck158 = 0 time = 795
.meas tran vdout1_16ck158 FIND v(dout1_16) AT=795.025n

* CHECK dout1_0 Vdout1_0ck159 = 0 time = 800
.meas tran vdout1_0ck159 FIND v(dout1_0) AT=800.025n

* CHECK dout1_1 Vdout1_1ck159 = 1.0 time = 800
.meas tran vdout1_1ck159 FIND v(dout1_1) AT=800.025n

* CHECK dout1_2 Vdout1_2ck159 = 0 time = 800
.meas tran vdout1_2ck159 FIND v(dout1_2) AT=800.025n

* CHECK dout1_3 Vdout1_3ck159 = 0 time = 800
.meas tran vdout1_3ck159 FIND v(dout1_3) AT=800.025n

* CHECK dout1_4 Vdout1_4ck159 = 1.0 time = 800
.meas tran vdout1_4ck159 FIND v(dout1_4) AT=800.025n

* CHECK dout1_5 Vdout1_5ck159 = 1.0 time = 800
.meas tran vdout1_5ck159 FIND v(dout1_5) AT=800.025n

* CHECK dout1_6 Vdout1_6ck159 = 0 time = 800
.meas tran vdout1_6ck159 FIND v(dout1_6) AT=800.025n

* CHECK dout1_7 Vdout1_7ck159 = 0 time = 800
.meas tran vdout1_7ck159 FIND v(dout1_7) AT=800.025n

* CHECK dout1_8 Vdout1_8ck159 = 0 time = 800
.meas tran vdout1_8ck159 FIND v(dout1_8) AT=800.025n

* CHECK dout1_9 Vdout1_9ck159 = 1.0 time = 800
.meas tran vdout1_9ck159 FIND v(dout1_9) AT=800.025n

* CHECK dout1_10 Vdout1_10ck159 = 1.0 time = 800
.meas tran vdout1_10ck159 FIND v(dout1_10) AT=800.025n

* CHECK dout1_11 Vdout1_11ck159 = 1.0 time = 800
.meas tran vdout1_11ck159 FIND v(dout1_11) AT=800.025n

* CHECK dout1_12 Vdout1_12ck159 = 1.0 time = 800
.meas tran vdout1_12ck159 FIND v(dout1_12) AT=800.025n

* CHECK dout1_13 Vdout1_13ck159 = 0 time = 800
.meas tran vdout1_13ck159 FIND v(dout1_13) AT=800.025n

* CHECK dout1_14 Vdout1_14ck159 = 1.0 time = 800
.meas tran vdout1_14ck159 FIND v(dout1_14) AT=800.025n

* CHECK dout1_15 Vdout1_15ck159 = 1.0 time = 800
.meas tran vdout1_15ck159 FIND v(dout1_15) AT=800.025n

* CHECK dout1_16 Vdout1_16ck159 = 0 time = 800
.meas tran vdout1_16ck159 FIND v(dout1_16) AT=800.025n

* CHECK dout1_0 Vdout1_0ck164 = 0 time = 825
.meas tran vdout1_0ck164 FIND v(dout1_0) AT=825.025n

* CHECK dout1_1 Vdout1_1ck164 = 1.0 time = 825
.meas tran vdout1_1ck164 FIND v(dout1_1) AT=825.025n

* CHECK dout1_2 Vdout1_2ck164 = 0 time = 825
.meas tran vdout1_2ck164 FIND v(dout1_2) AT=825.025n

* CHECK dout1_3 Vdout1_3ck164 = 0 time = 825
.meas tran vdout1_3ck164 FIND v(dout1_3) AT=825.025n

* CHECK dout1_4 Vdout1_4ck164 = 1.0 time = 825
.meas tran vdout1_4ck164 FIND v(dout1_4) AT=825.025n

* CHECK dout1_5 Vdout1_5ck164 = 1.0 time = 825
.meas tran vdout1_5ck164 FIND v(dout1_5) AT=825.025n

* CHECK dout1_6 Vdout1_6ck164 = 0 time = 825
.meas tran vdout1_6ck164 FIND v(dout1_6) AT=825.025n

* CHECK dout1_7 Vdout1_7ck164 = 0 time = 825
.meas tran vdout1_7ck164 FIND v(dout1_7) AT=825.025n

* CHECK dout1_8 Vdout1_8ck164 = 0 time = 825
.meas tran vdout1_8ck164 FIND v(dout1_8) AT=825.025n

* CHECK dout1_9 Vdout1_9ck164 = 1.0 time = 825
.meas tran vdout1_9ck164 FIND v(dout1_9) AT=825.025n

* CHECK dout1_10 Vdout1_10ck164 = 1.0 time = 825
.meas tran vdout1_10ck164 FIND v(dout1_10) AT=825.025n

* CHECK dout1_11 Vdout1_11ck164 = 1.0 time = 825
.meas tran vdout1_11ck164 FIND v(dout1_11) AT=825.025n

* CHECK dout1_12 Vdout1_12ck164 = 1.0 time = 825
.meas tran vdout1_12ck164 FIND v(dout1_12) AT=825.025n

* CHECK dout1_13 Vdout1_13ck164 = 0 time = 825
.meas tran vdout1_13ck164 FIND v(dout1_13) AT=825.025n

* CHECK dout1_14 Vdout1_14ck164 = 1.0 time = 825
.meas tran vdout1_14ck164 FIND v(dout1_14) AT=825.025n

* CHECK dout1_15 Vdout1_15ck164 = 1.0 time = 825
.meas tran vdout1_15ck164 FIND v(dout1_15) AT=825.025n

* CHECK dout1_16 Vdout1_16ck164 = 0 time = 825
.meas tran vdout1_16ck164 FIND v(dout1_16) AT=825.025n

* CHECK dout1_0 Vdout1_0ck168 = 0 time = 845
.meas tran vdout1_0ck168 FIND v(dout1_0) AT=845.025n

* CHECK dout1_1 Vdout1_1ck168 = 1.0 time = 845
.meas tran vdout1_1ck168 FIND v(dout1_1) AT=845.025n

* CHECK dout1_2 Vdout1_2ck168 = 0 time = 845
.meas tran vdout1_2ck168 FIND v(dout1_2) AT=845.025n

* CHECK dout1_3 Vdout1_3ck168 = 0 time = 845
.meas tran vdout1_3ck168 FIND v(dout1_3) AT=845.025n

* CHECK dout1_4 Vdout1_4ck168 = 0 time = 845
.meas tran vdout1_4ck168 FIND v(dout1_4) AT=845.025n

* CHECK dout1_5 Vdout1_5ck168 = 0 time = 845
.meas tran vdout1_5ck168 FIND v(dout1_5) AT=845.025n

* CHECK dout1_6 Vdout1_6ck168 = 0 time = 845
.meas tran vdout1_6ck168 FIND v(dout1_6) AT=845.025n

* CHECK dout1_7 Vdout1_7ck168 = 1.0 time = 845
.meas tran vdout1_7ck168 FIND v(dout1_7) AT=845.025n

* CHECK dout1_8 Vdout1_8ck168 = 1.0 time = 845
.meas tran vdout1_8ck168 FIND v(dout1_8) AT=845.025n

* CHECK dout1_9 Vdout1_9ck168 = 1.0 time = 845
.meas tran vdout1_9ck168 FIND v(dout1_9) AT=845.025n

* CHECK dout1_10 Vdout1_10ck168 = 0 time = 845
.meas tran vdout1_10ck168 FIND v(dout1_10) AT=845.025n

* CHECK dout1_11 Vdout1_11ck168 = 1.0 time = 845
.meas tran vdout1_11ck168 FIND v(dout1_11) AT=845.025n

* CHECK dout1_12 Vdout1_12ck168 = 1.0 time = 845
.meas tran vdout1_12ck168 FIND v(dout1_12) AT=845.025n

* CHECK dout1_13 Vdout1_13ck168 = 0 time = 845
.meas tran vdout1_13ck168 FIND v(dout1_13) AT=845.025n

* CHECK dout1_14 Vdout1_14ck168 = 0 time = 845
.meas tran vdout1_14ck168 FIND v(dout1_14) AT=845.025n

* CHECK dout1_15 Vdout1_15ck168 = 1.0 time = 845
.meas tran vdout1_15ck168 FIND v(dout1_15) AT=845.025n

* CHECK dout1_16 Vdout1_16ck168 = 1.0 time = 845
.meas tran vdout1_16ck168 FIND v(dout1_16) AT=845.025n

* CHECK dout1_0 Vdout1_0ck170 = 0 time = 855
.meas tran vdout1_0ck170 FIND v(dout1_0) AT=855.025n

* CHECK dout1_1 Vdout1_1ck170 = 1.0 time = 855
.meas tran vdout1_1ck170 FIND v(dout1_1) AT=855.025n

* CHECK dout1_2 Vdout1_2ck170 = 0 time = 855
.meas tran vdout1_2ck170 FIND v(dout1_2) AT=855.025n

* CHECK dout1_3 Vdout1_3ck170 = 0 time = 855
.meas tran vdout1_3ck170 FIND v(dout1_3) AT=855.025n

* CHECK dout1_4 Vdout1_4ck170 = 0 time = 855
.meas tran vdout1_4ck170 FIND v(dout1_4) AT=855.025n

* CHECK dout1_5 Vdout1_5ck170 = 0 time = 855
.meas tran vdout1_5ck170 FIND v(dout1_5) AT=855.025n

* CHECK dout1_6 Vdout1_6ck170 = 0 time = 855
.meas tran vdout1_6ck170 FIND v(dout1_6) AT=855.025n

* CHECK dout1_7 Vdout1_7ck170 = 1.0 time = 855
.meas tran vdout1_7ck170 FIND v(dout1_7) AT=855.025n

* CHECK dout1_8 Vdout1_8ck170 = 1.0 time = 855
.meas tran vdout1_8ck170 FIND v(dout1_8) AT=855.025n

* CHECK dout1_9 Vdout1_9ck170 = 1.0 time = 855
.meas tran vdout1_9ck170 FIND v(dout1_9) AT=855.025n

* CHECK dout1_10 Vdout1_10ck170 = 0 time = 855
.meas tran vdout1_10ck170 FIND v(dout1_10) AT=855.025n

* CHECK dout1_11 Vdout1_11ck170 = 1.0 time = 855
.meas tran vdout1_11ck170 FIND v(dout1_11) AT=855.025n

* CHECK dout1_12 Vdout1_12ck170 = 1.0 time = 855
.meas tran vdout1_12ck170 FIND v(dout1_12) AT=855.025n

* CHECK dout1_13 Vdout1_13ck170 = 0 time = 855
.meas tran vdout1_13ck170 FIND v(dout1_13) AT=855.025n

* CHECK dout1_14 Vdout1_14ck170 = 0 time = 855
.meas tran vdout1_14ck170 FIND v(dout1_14) AT=855.025n

* CHECK dout1_15 Vdout1_15ck170 = 1.0 time = 855
.meas tran vdout1_15ck170 FIND v(dout1_15) AT=855.025n

* CHECK dout1_16 Vdout1_16ck170 = 1.0 time = 855
.meas tran vdout1_16ck170 FIND v(dout1_16) AT=855.025n

* CHECK dout1_0 Vdout1_0ck172 = 0 time = 865
.meas tran vdout1_0ck172 FIND v(dout1_0) AT=865.025n

* CHECK dout1_1 Vdout1_1ck172 = 0 time = 865
.meas tran vdout1_1ck172 FIND v(dout1_1) AT=865.025n

* CHECK dout1_2 Vdout1_2ck172 = 1.0 time = 865
.meas tran vdout1_2ck172 FIND v(dout1_2) AT=865.025n

* CHECK dout1_3 Vdout1_3ck172 = 1.0 time = 865
.meas tran vdout1_3ck172 FIND v(dout1_3) AT=865.025n

* CHECK dout1_4 Vdout1_4ck172 = 1.0 time = 865
.meas tran vdout1_4ck172 FIND v(dout1_4) AT=865.025n

* CHECK dout1_5 Vdout1_5ck172 = 1.0 time = 865
.meas tran vdout1_5ck172 FIND v(dout1_5) AT=865.025n

* CHECK dout1_6 Vdout1_6ck172 = 0 time = 865
.meas tran vdout1_6ck172 FIND v(dout1_6) AT=865.025n

* CHECK dout1_7 Vdout1_7ck172 = 0 time = 865
.meas tran vdout1_7ck172 FIND v(dout1_7) AT=865.025n

* CHECK dout1_8 Vdout1_8ck172 = 0 time = 865
.meas tran vdout1_8ck172 FIND v(dout1_8) AT=865.025n

* CHECK dout1_9 Vdout1_9ck172 = 1.0 time = 865
.meas tran vdout1_9ck172 FIND v(dout1_9) AT=865.025n

* CHECK dout1_10 Vdout1_10ck172 = 0 time = 865
.meas tran vdout1_10ck172 FIND v(dout1_10) AT=865.025n

* CHECK dout1_11 Vdout1_11ck172 = 1.0 time = 865
.meas tran vdout1_11ck172 FIND v(dout1_11) AT=865.025n

* CHECK dout1_12 Vdout1_12ck172 = 1.0 time = 865
.meas tran vdout1_12ck172 FIND v(dout1_12) AT=865.025n

* CHECK dout1_13 Vdout1_13ck172 = 1.0 time = 865
.meas tran vdout1_13ck172 FIND v(dout1_13) AT=865.025n

* CHECK dout1_14 Vdout1_14ck172 = 0 time = 865
.meas tran vdout1_14ck172 FIND v(dout1_14) AT=865.025n

* CHECK dout1_15 Vdout1_15ck172 = 1.0 time = 865
.meas tran vdout1_15ck172 FIND v(dout1_15) AT=865.025n

* CHECK dout1_16 Vdout1_16ck172 = 0 time = 865
.meas tran vdout1_16ck172 FIND v(dout1_16) AT=865.025n

* CHECK dout1_0 Vdout1_0ck175 = 0 time = 880
.meas tran vdout1_0ck175 FIND v(dout1_0) AT=880.025n

* CHECK dout1_1 Vdout1_1ck175 = 0 time = 880
.meas tran vdout1_1ck175 FIND v(dout1_1) AT=880.025n

* CHECK dout1_2 Vdout1_2ck175 = 0 time = 880
.meas tran vdout1_2ck175 FIND v(dout1_2) AT=880.025n

* CHECK dout1_3 Vdout1_3ck175 = 1.0 time = 880
.meas tran vdout1_3ck175 FIND v(dout1_3) AT=880.025n

* CHECK dout1_4 Vdout1_4ck175 = 1.0 time = 880
.meas tran vdout1_4ck175 FIND v(dout1_4) AT=880.025n

* CHECK dout1_5 Vdout1_5ck175 = 0 time = 880
.meas tran vdout1_5ck175 FIND v(dout1_5) AT=880.025n

* CHECK dout1_6 Vdout1_6ck175 = 1.0 time = 880
.meas tran vdout1_6ck175 FIND v(dout1_6) AT=880.025n

* CHECK dout1_7 Vdout1_7ck175 = 1.0 time = 880
.meas tran vdout1_7ck175 FIND v(dout1_7) AT=880.025n

* CHECK dout1_8 Vdout1_8ck175 = 1.0 time = 880
.meas tran vdout1_8ck175 FIND v(dout1_8) AT=880.025n

* CHECK dout1_9 Vdout1_9ck175 = 0 time = 880
.meas tran vdout1_9ck175 FIND v(dout1_9) AT=880.025n

* CHECK dout1_10 Vdout1_10ck175 = 0 time = 880
.meas tran vdout1_10ck175 FIND v(dout1_10) AT=880.025n

* CHECK dout1_11 Vdout1_11ck175 = 0 time = 880
.meas tran vdout1_11ck175 FIND v(dout1_11) AT=880.025n

* CHECK dout1_12 Vdout1_12ck175 = 0 time = 880
.meas tran vdout1_12ck175 FIND v(dout1_12) AT=880.025n

* CHECK dout1_13 Vdout1_13ck175 = 1.0 time = 880
.meas tran vdout1_13ck175 FIND v(dout1_13) AT=880.025n

* CHECK dout1_14 Vdout1_14ck175 = 0 time = 880
.meas tran vdout1_14ck175 FIND v(dout1_14) AT=880.025n

* CHECK dout1_15 Vdout1_15ck175 = 0 time = 880
.meas tran vdout1_15ck175 FIND v(dout1_15) AT=880.025n

* CHECK dout1_16 Vdout1_16ck175 = 0 time = 880
.meas tran vdout1_16ck175 FIND v(dout1_16) AT=880.025n

* CHECK dout1_0 Vdout1_0ck177 = 0 time = 890
.meas tran vdout1_0ck177 FIND v(dout1_0) AT=890.025n

* CHECK dout1_1 Vdout1_1ck177 = 0 time = 890
.meas tran vdout1_1ck177 FIND v(dout1_1) AT=890.025n

* CHECK dout1_2 Vdout1_2ck177 = 0 time = 890
.meas tran vdout1_2ck177 FIND v(dout1_2) AT=890.025n

* CHECK dout1_3 Vdout1_3ck177 = 0 time = 890
.meas tran vdout1_3ck177 FIND v(dout1_3) AT=890.025n

* CHECK dout1_4 Vdout1_4ck177 = 0 time = 890
.meas tran vdout1_4ck177 FIND v(dout1_4) AT=890.025n

* CHECK dout1_5 Vdout1_5ck177 = 1.0 time = 890
.meas tran vdout1_5ck177 FIND v(dout1_5) AT=890.025n

* CHECK dout1_6 Vdout1_6ck177 = 0 time = 890
.meas tran vdout1_6ck177 FIND v(dout1_6) AT=890.025n

* CHECK dout1_7 Vdout1_7ck177 = 1.0 time = 890
.meas tran vdout1_7ck177 FIND v(dout1_7) AT=890.025n

* CHECK dout1_8 Vdout1_8ck177 = 1.0 time = 890
.meas tran vdout1_8ck177 FIND v(dout1_8) AT=890.025n

* CHECK dout1_9 Vdout1_9ck177 = 1.0 time = 890
.meas tran vdout1_9ck177 FIND v(dout1_9) AT=890.025n

* CHECK dout1_10 Vdout1_10ck177 = 0 time = 890
.meas tran vdout1_10ck177 FIND v(dout1_10) AT=890.025n

* CHECK dout1_11 Vdout1_11ck177 = 0 time = 890
.meas tran vdout1_11ck177 FIND v(dout1_11) AT=890.025n

* CHECK dout1_12 Vdout1_12ck177 = 1.0 time = 890
.meas tran vdout1_12ck177 FIND v(dout1_12) AT=890.025n

* CHECK dout1_13 Vdout1_13ck177 = 1.0 time = 890
.meas tran vdout1_13ck177 FIND v(dout1_13) AT=890.025n

* CHECK dout1_14 Vdout1_14ck177 = 1.0 time = 890
.meas tran vdout1_14ck177 FIND v(dout1_14) AT=890.025n

* CHECK dout1_15 Vdout1_15ck177 = 1.0 time = 890
.meas tran vdout1_15ck177 FIND v(dout1_15) AT=890.025n

* CHECK dout1_16 Vdout1_16ck177 = 1.0 time = 890
.meas tran vdout1_16ck177 FIND v(dout1_16) AT=890.025n

* CHECK dout1_0 Vdout1_0ck178 = 0 time = 895
.meas tran vdout1_0ck178 FIND v(dout1_0) AT=895.025n

* CHECK dout1_1 Vdout1_1ck178 = 0 time = 895
.meas tran vdout1_1ck178 FIND v(dout1_1) AT=895.025n

* CHECK dout1_2 Vdout1_2ck178 = 0 time = 895
.meas tran vdout1_2ck178 FIND v(dout1_2) AT=895.025n

* CHECK dout1_3 Vdout1_3ck178 = 0 time = 895
.meas tran vdout1_3ck178 FIND v(dout1_3) AT=895.025n

* CHECK dout1_4 Vdout1_4ck178 = 0 time = 895
.meas tran vdout1_4ck178 FIND v(dout1_4) AT=895.025n

* CHECK dout1_5 Vdout1_5ck178 = 1.0 time = 895
.meas tran vdout1_5ck178 FIND v(dout1_5) AT=895.025n

* CHECK dout1_6 Vdout1_6ck178 = 0 time = 895
.meas tran vdout1_6ck178 FIND v(dout1_6) AT=895.025n

* CHECK dout1_7 Vdout1_7ck178 = 1.0 time = 895
.meas tran vdout1_7ck178 FIND v(dout1_7) AT=895.025n

* CHECK dout1_8 Vdout1_8ck178 = 1.0 time = 895
.meas tran vdout1_8ck178 FIND v(dout1_8) AT=895.025n

* CHECK dout1_9 Vdout1_9ck178 = 1.0 time = 895
.meas tran vdout1_9ck178 FIND v(dout1_9) AT=895.025n

* CHECK dout1_10 Vdout1_10ck178 = 0 time = 895
.meas tran vdout1_10ck178 FIND v(dout1_10) AT=895.025n

* CHECK dout1_11 Vdout1_11ck178 = 0 time = 895
.meas tran vdout1_11ck178 FIND v(dout1_11) AT=895.025n

* CHECK dout1_12 Vdout1_12ck178 = 1.0 time = 895
.meas tran vdout1_12ck178 FIND v(dout1_12) AT=895.025n

* CHECK dout1_13 Vdout1_13ck178 = 1.0 time = 895
.meas tran vdout1_13ck178 FIND v(dout1_13) AT=895.025n

* CHECK dout1_14 Vdout1_14ck178 = 1.0 time = 895
.meas tran vdout1_14ck178 FIND v(dout1_14) AT=895.025n

* CHECK dout1_15 Vdout1_15ck178 = 1.0 time = 895
.meas tran vdout1_15ck178 FIND v(dout1_15) AT=895.025n

* CHECK dout1_16 Vdout1_16ck178 = 1.0 time = 895
.meas tran vdout1_16ck178 FIND v(dout1_16) AT=895.025n

* CHECK dout1_0 Vdout1_0ck180 = 0 time = 905
.meas tran vdout1_0ck180 FIND v(dout1_0) AT=905.025n

* CHECK dout1_1 Vdout1_1ck180 = 0 time = 905
.meas tran vdout1_1ck180 FIND v(dout1_1) AT=905.025n

* CHECK dout1_2 Vdout1_2ck180 = 0 time = 905
.meas tran vdout1_2ck180 FIND v(dout1_2) AT=905.025n

* CHECK dout1_3 Vdout1_3ck180 = 0 time = 905
.meas tran vdout1_3ck180 FIND v(dout1_3) AT=905.025n

* CHECK dout1_4 Vdout1_4ck180 = 0 time = 905
.meas tran vdout1_4ck180 FIND v(dout1_4) AT=905.025n

* CHECK dout1_5 Vdout1_5ck180 = 1.0 time = 905
.meas tran vdout1_5ck180 FIND v(dout1_5) AT=905.025n

* CHECK dout1_6 Vdout1_6ck180 = 0 time = 905
.meas tran vdout1_6ck180 FIND v(dout1_6) AT=905.025n

* CHECK dout1_7 Vdout1_7ck180 = 1.0 time = 905
.meas tran vdout1_7ck180 FIND v(dout1_7) AT=905.025n

* CHECK dout1_8 Vdout1_8ck180 = 1.0 time = 905
.meas tran vdout1_8ck180 FIND v(dout1_8) AT=905.025n

* CHECK dout1_9 Vdout1_9ck180 = 1.0 time = 905
.meas tran vdout1_9ck180 FIND v(dout1_9) AT=905.025n

* CHECK dout1_10 Vdout1_10ck180 = 0 time = 905
.meas tran vdout1_10ck180 FIND v(dout1_10) AT=905.025n

* CHECK dout1_11 Vdout1_11ck180 = 0 time = 905
.meas tran vdout1_11ck180 FIND v(dout1_11) AT=905.025n

* CHECK dout1_12 Vdout1_12ck180 = 1.0 time = 905
.meas tran vdout1_12ck180 FIND v(dout1_12) AT=905.025n

* CHECK dout1_13 Vdout1_13ck180 = 1.0 time = 905
.meas tran vdout1_13ck180 FIND v(dout1_13) AT=905.025n

* CHECK dout1_14 Vdout1_14ck180 = 1.0 time = 905
.meas tran vdout1_14ck180 FIND v(dout1_14) AT=905.025n

* CHECK dout1_15 Vdout1_15ck180 = 1.0 time = 905
.meas tran vdout1_15ck180 FIND v(dout1_15) AT=905.025n

* CHECK dout1_16 Vdout1_16ck180 = 1.0 time = 905
.meas tran vdout1_16ck180 FIND v(dout1_16) AT=905.025n

* CHECK dout1_0 Vdout1_0ck186 = 1.0 time = 935
.meas tran vdout1_0ck186 FIND v(dout1_0) AT=935.025n

* CHECK dout1_1 Vdout1_1ck186 = 0 time = 935
.meas tran vdout1_1ck186 FIND v(dout1_1) AT=935.025n

* CHECK dout1_2 Vdout1_2ck186 = 0 time = 935
.meas tran vdout1_2ck186 FIND v(dout1_2) AT=935.025n

* CHECK dout1_3 Vdout1_3ck186 = 1.0 time = 935
.meas tran vdout1_3ck186 FIND v(dout1_3) AT=935.025n

* CHECK dout1_4 Vdout1_4ck186 = 0 time = 935
.meas tran vdout1_4ck186 FIND v(dout1_4) AT=935.025n

* CHECK dout1_5 Vdout1_5ck186 = 1.0 time = 935
.meas tran vdout1_5ck186 FIND v(dout1_5) AT=935.025n

* CHECK dout1_6 Vdout1_6ck186 = 0 time = 935
.meas tran vdout1_6ck186 FIND v(dout1_6) AT=935.025n

* CHECK dout1_7 Vdout1_7ck186 = 0 time = 935
.meas tran vdout1_7ck186 FIND v(dout1_7) AT=935.025n

* CHECK dout1_8 Vdout1_8ck186 = 0 time = 935
.meas tran vdout1_8ck186 FIND v(dout1_8) AT=935.025n

* CHECK dout1_9 Vdout1_9ck186 = 0 time = 935
.meas tran vdout1_9ck186 FIND v(dout1_9) AT=935.025n

* CHECK dout1_10 Vdout1_10ck186 = 0 time = 935
.meas tran vdout1_10ck186 FIND v(dout1_10) AT=935.025n

* CHECK dout1_11 Vdout1_11ck186 = 0 time = 935
.meas tran vdout1_11ck186 FIND v(dout1_11) AT=935.025n

* CHECK dout1_12 Vdout1_12ck186 = 1.0 time = 935
.meas tran vdout1_12ck186 FIND v(dout1_12) AT=935.025n

* CHECK dout1_13 Vdout1_13ck186 = 1.0 time = 935
.meas tran vdout1_13ck186 FIND v(dout1_13) AT=935.025n

* CHECK dout1_14 Vdout1_14ck186 = 0 time = 935
.meas tran vdout1_14ck186 FIND v(dout1_14) AT=935.025n

* CHECK dout1_15 Vdout1_15ck186 = 1.0 time = 935
.meas tran vdout1_15ck186 FIND v(dout1_15) AT=935.025n

* CHECK dout1_16 Vdout1_16ck186 = 1.0 time = 935
.meas tran vdout1_16ck186 FIND v(dout1_16) AT=935.025n

* CHECK dout1_0 Vdout1_0ck187 = 1.0 time = 940
.meas tran vdout1_0ck187 FIND v(dout1_0) AT=940.025n

* CHECK dout1_1 Vdout1_1ck187 = 0 time = 940
.meas tran vdout1_1ck187 FIND v(dout1_1) AT=940.025n

* CHECK dout1_2 Vdout1_2ck187 = 0 time = 940
.meas tran vdout1_2ck187 FIND v(dout1_2) AT=940.025n

* CHECK dout1_3 Vdout1_3ck187 = 1.0 time = 940
.meas tran vdout1_3ck187 FIND v(dout1_3) AT=940.025n

* CHECK dout1_4 Vdout1_4ck187 = 0 time = 940
.meas tran vdout1_4ck187 FIND v(dout1_4) AT=940.025n

* CHECK dout1_5 Vdout1_5ck187 = 1.0 time = 940
.meas tran vdout1_5ck187 FIND v(dout1_5) AT=940.025n

* CHECK dout1_6 Vdout1_6ck187 = 0 time = 940
.meas tran vdout1_6ck187 FIND v(dout1_6) AT=940.025n

* CHECK dout1_7 Vdout1_7ck187 = 0 time = 940
.meas tran vdout1_7ck187 FIND v(dout1_7) AT=940.025n

* CHECK dout1_8 Vdout1_8ck187 = 0 time = 940
.meas tran vdout1_8ck187 FIND v(dout1_8) AT=940.025n

* CHECK dout1_9 Vdout1_9ck187 = 0 time = 940
.meas tran vdout1_9ck187 FIND v(dout1_9) AT=940.025n

* CHECK dout1_10 Vdout1_10ck187 = 0 time = 940
.meas tran vdout1_10ck187 FIND v(dout1_10) AT=940.025n

* CHECK dout1_11 Vdout1_11ck187 = 0 time = 940
.meas tran vdout1_11ck187 FIND v(dout1_11) AT=940.025n

* CHECK dout1_12 Vdout1_12ck187 = 1.0 time = 940
.meas tran vdout1_12ck187 FIND v(dout1_12) AT=940.025n

* CHECK dout1_13 Vdout1_13ck187 = 1.0 time = 940
.meas tran vdout1_13ck187 FIND v(dout1_13) AT=940.025n

* CHECK dout1_14 Vdout1_14ck187 = 0 time = 940
.meas tran vdout1_14ck187 FIND v(dout1_14) AT=940.025n

* CHECK dout1_15 Vdout1_15ck187 = 1.0 time = 940
.meas tran vdout1_15ck187 FIND v(dout1_15) AT=940.025n

* CHECK dout1_16 Vdout1_16ck187 = 1.0 time = 940
.meas tran vdout1_16ck187 FIND v(dout1_16) AT=940.025n

* CHECK dout1_0 Vdout1_0ck188 = 0 time = 945
.meas tran vdout1_0ck188 FIND v(dout1_0) AT=945.025n

* CHECK dout1_1 Vdout1_1ck188 = 1.0 time = 945
.meas tran vdout1_1ck188 FIND v(dout1_1) AT=945.025n

* CHECK dout1_2 Vdout1_2ck188 = 0 time = 945
.meas tran vdout1_2ck188 FIND v(dout1_2) AT=945.025n

* CHECK dout1_3 Vdout1_3ck188 = 0 time = 945
.meas tran vdout1_3ck188 FIND v(dout1_3) AT=945.025n

* CHECK dout1_4 Vdout1_4ck188 = 0 time = 945
.meas tran vdout1_4ck188 FIND v(dout1_4) AT=945.025n

* CHECK dout1_5 Vdout1_5ck188 = 0 time = 945
.meas tran vdout1_5ck188 FIND v(dout1_5) AT=945.025n

* CHECK dout1_6 Vdout1_6ck188 = 0 time = 945
.meas tran vdout1_6ck188 FIND v(dout1_6) AT=945.025n

* CHECK dout1_7 Vdout1_7ck188 = 1.0 time = 945
.meas tran vdout1_7ck188 FIND v(dout1_7) AT=945.025n

* CHECK dout1_8 Vdout1_8ck188 = 1.0 time = 945
.meas tran vdout1_8ck188 FIND v(dout1_8) AT=945.025n

* CHECK dout1_9 Vdout1_9ck188 = 1.0 time = 945
.meas tran vdout1_9ck188 FIND v(dout1_9) AT=945.025n

* CHECK dout1_10 Vdout1_10ck188 = 0 time = 945
.meas tran vdout1_10ck188 FIND v(dout1_10) AT=945.025n

* CHECK dout1_11 Vdout1_11ck188 = 1.0 time = 945
.meas tran vdout1_11ck188 FIND v(dout1_11) AT=945.025n

* CHECK dout1_12 Vdout1_12ck188 = 1.0 time = 945
.meas tran vdout1_12ck188 FIND v(dout1_12) AT=945.025n

* CHECK dout1_13 Vdout1_13ck188 = 0 time = 945
.meas tran vdout1_13ck188 FIND v(dout1_13) AT=945.025n

* CHECK dout1_14 Vdout1_14ck188 = 0 time = 945
.meas tran vdout1_14ck188 FIND v(dout1_14) AT=945.025n

* CHECK dout1_15 Vdout1_15ck188 = 1.0 time = 945
.meas tran vdout1_15ck188 FIND v(dout1_15) AT=945.025n

* CHECK dout1_16 Vdout1_16ck188 = 1.0 time = 945
.meas tran vdout1_16ck188 FIND v(dout1_16) AT=945.025n

* CHECK dout1_0 Vdout1_0ck190 = 0 time = 955
.meas tran vdout1_0ck190 FIND v(dout1_0) AT=955.025n

* CHECK dout1_1 Vdout1_1ck190 = 1.0 time = 955
.meas tran vdout1_1ck190 FIND v(dout1_1) AT=955.025n

* CHECK dout1_2 Vdout1_2ck190 = 0 time = 955
.meas tran vdout1_2ck190 FIND v(dout1_2) AT=955.025n

* CHECK dout1_3 Vdout1_3ck190 = 0 time = 955
.meas tran vdout1_3ck190 FIND v(dout1_3) AT=955.025n

* CHECK dout1_4 Vdout1_4ck190 = 0 time = 955
.meas tran vdout1_4ck190 FIND v(dout1_4) AT=955.025n

* CHECK dout1_5 Vdout1_5ck190 = 0 time = 955
.meas tran vdout1_5ck190 FIND v(dout1_5) AT=955.025n

* CHECK dout1_6 Vdout1_6ck190 = 0 time = 955
.meas tran vdout1_6ck190 FIND v(dout1_6) AT=955.025n

* CHECK dout1_7 Vdout1_7ck190 = 1.0 time = 955
.meas tran vdout1_7ck190 FIND v(dout1_7) AT=955.025n

* CHECK dout1_8 Vdout1_8ck190 = 1.0 time = 955
.meas tran vdout1_8ck190 FIND v(dout1_8) AT=955.025n

* CHECK dout1_9 Vdout1_9ck190 = 1.0 time = 955
.meas tran vdout1_9ck190 FIND v(dout1_9) AT=955.025n

* CHECK dout1_10 Vdout1_10ck190 = 0 time = 955
.meas tran vdout1_10ck190 FIND v(dout1_10) AT=955.025n

* CHECK dout1_11 Vdout1_11ck190 = 1.0 time = 955
.meas tran vdout1_11ck190 FIND v(dout1_11) AT=955.025n

* CHECK dout1_12 Vdout1_12ck190 = 1.0 time = 955
.meas tran vdout1_12ck190 FIND v(dout1_12) AT=955.025n

* CHECK dout1_13 Vdout1_13ck190 = 0 time = 955
.meas tran vdout1_13ck190 FIND v(dout1_13) AT=955.025n

* CHECK dout1_14 Vdout1_14ck190 = 0 time = 955
.meas tran vdout1_14ck190 FIND v(dout1_14) AT=955.025n

* CHECK dout1_15 Vdout1_15ck190 = 1.0 time = 955
.meas tran vdout1_15ck190 FIND v(dout1_15) AT=955.025n

* CHECK dout1_16 Vdout1_16ck190 = 1.0 time = 955
.meas tran vdout1_16ck190 FIND v(dout1_16) AT=955.025n

* CHECK dout1_0 Vdout1_0ck191 = 1.0 time = 960
.meas tran vdout1_0ck191 FIND v(dout1_0) AT=960.025n

* CHECK dout1_1 Vdout1_1ck191 = 1.0 time = 960
.meas tran vdout1_1ck191 FIND v(dout1_1) AT=960.025n

* CHECK dout1_2 Vdout1_2ck191 = 0 time = 960
.meas tran vdout1_2ck191 FIND v(dout1_2) AT=960.025n

* CHECK dout1_3 Vdout1_3ck191 = 1.0 time = 960
.meas tran vdout1_3ck191 FIND v(dout1_3) AT=960.025n

* CHECK dout1_4 Vdout1_4ck191 = 1.0 time = 960
.meas tran vdout1_4ck191 FIND v(dout1_4) AT=960.025n

* CHECK dout1_5 Vdout1_5ck191 = 1.0 time = 960
.meas tran vdout1_5ck191 FIND v(dout1_5) AT=960.025n

* CHECK dout1_6 Vdout1_6ck191 = 0 time = 960
.meas tran vdout1_6ck191 FIND v(dout1_6) AT=960.025n

* CHECK dout1_7 Vdout1_7ck191 = 1.0 time = 960
.meas tran vdout1_7ck191 FIND v(dout1_7) AT=960.025n

* CHECK dout1_8 Vdout1_8ck191 = 1.0 time = 960
.meas tran vdout1_8ck191 FIND v(dout1_8) AT=960.025n

* CHECK dout1_9 Vdout1_9ck191 = 1.0 time = 960
.meas tran vdout1_9ck191 FIND v(dout1_9) AT=960.025n

* CHECK dout1_10 Vdout1_10ck191 = 1.0 time = 960
.meas tran vdout1_10ck191 FIND v(dout1_10) AT=960.025n

* CHECK dout1_11 Vdout1_11ck191 = 0 time = 960
.meas tran vdout1_11ck191 FIND v(dout1_11) AT=960.025n

* CHECK dout1_12 Vdout1_12ck191 = 0 time = 960
.meas tran vdout1_12ck191 FIND v(dout1_12) AT=960.025n

* CHECK dout1_13 Vdout1_13ck191 = 0 time = 960
.meas tran vdout1_13ck191 FIND v(dout1_13) AT=960.025n

* CHECK dout1_14 Vdout1_14ck191 = 1.0 time = 960
.meas tran vdout1_14ck191 FIND v(dout1_14) AT=960.025n

* CHECK dout1_15 Vdout1_15ck191 = 1.0 time = 960
.meas tran vdout1_15ck191 FIND v(dout1_15) AT=960.025n

* CHECK dout1_16 Vdout1_16ck191 = 0 time = 960
.meas tran vdout1_16ck191 FIND v(dout1_16) AT=960.025n

* CHECK dout1_0 Vdout1_0ck194 = 1.0 time = 975
.meas tran vdout1_0ck194 FIND v(dout1_0) AT=975.025n

* CHECK dout1_1 Vdout1_1ck194 = 0 time = 975
.meas tran vdout1_1ck194 FIND v(dout1_1) AT=975.025n

* CHECK dout1_2 Vdout1_2ck194 = 0 time = 975
.meas tran vdout1_2ck194 FIND v(dout1_2) AT=975.025n

* CHECK dout1_3 Vdout1_3ck194 = 1.0 time = 975
.meas tran vdout1_3ck194 FIND v(dout1_3) AT=975.025n

* CHECK dout1_4 Vdout1_4ck194 = 0 time = 975
.meas tran vdout1_4ck194 FIND v(dout1_4) AT=975.025n

* CHECK dout1_5 Vdout1_5ck194 = 1.0 time = 975
.meas tran vdout1_5ck194 FIND v(dout1_5) AT=975.025n

* CHECK dout1_6 Vdout1_6ck194 = 0 time = 975
.meas tran vdout1_6ck194 FIND v(dout1_6) AT=975.025n

* CHECK dout1_7 Vdout1_7ck194 = 0 time = 975
.meas tran vdout1_7ck194 FIND v(dout1_7) AT=975.025n

* CHECK dout1_8 Vdout1_8ck194 = 0 time = 975
.meas tran vdout1_8ck194 FIND v(dout1_8) AT=975.025n

* CHECK dout1_9 Vdout1_9ck194 = 0 time = 975
.meas tran vdout1_9ck194 FIND v(dout1_9) AT=975.025n

* CHECK dout1_10 Vdout1_10ck194 = 0 time = 975
.meas tran vdout1_10ck194 FIND v(dout1_10) AT=975.025n

* CHECK dout1_11 Vdout1_11ck194 = 0 time = 975
.meas tran vdout1_11ck194 FIND v(dout1_11) AT=975.025n

* CHECK dout1_12 Vdout1_12ck194 = 1.0 time = 975
.meas tran vdout1_12ck194 FIND v(dout1_12) AT=975.025n

* CHECK dout1_13 Vdout1_13ck194 = 1.0 time = 975
.meas tran vdout1_13ck194 FIND v(dout1_13) AT=975.025n

* CHECK dout1_14 Vdout1_14ck194 = 0 time = 975
.meas tran vdout1_14ck194 FIND v(dout1_14) AT=975.025n

* CHECK dout1_15 Vdout1_15ck194 = 1.0 time = 975
.meas tran vdout1_15ck194 FIND v(dout1_15) AT=975.025n

* CHECK dout1_16 Vdout1_16ck194 = 1.0 time = 975
.meas tran vdout1_16ck194 FIND v(dout1_16) AT=975.025n

* CHECK dout1_0 Vdout1_0ck196 = 0 time = 985
.meas tran vdout1_0ck196 FIND v(dout1_0) AT=985.025n

* CHECK dout1_1 Vdout1_1ck196 = 1.0 time = 985
.meas tran vdout1_1ck196 FIND v(dout1_1) AT=985.025n

* CHECK dout1_2 Vdout1_2ck196 = 0 time = 985
.meas tran vdout1_2ck196 FIND v(dout1_2) AT=985.025n

* CHECK dout1_3 Vdout1_3ck196 = 0 time = 985
.meas tran vdout1_3ck196 FIND v(dout1_3) AT=985.025n

* CHECK dout1_4 Vdout1_4ck196 = 0 time = 985
.meas tran vdout1_4ck196 FIND v(dout1_4) AT=985.025n

* CHECK dout1_5 Vdout1_5ck196 = 1.0 time = 985
.meas tran vdout1_5ck196 FIND v(dout1_5) AT=985.025n

* CHECK dout1_6 Vdout1_6ck196 = 0 time = 985
.meas tran vdout1_6ck196 FIND v(dout1_6) AT=985.025n

* CHECK dout1_7 Vdout1_7ck196 = 0 time = 985
.meas tran vdout1_7ck196 FIND v(dout1_7) AT=985.025n

* CHECK dout1_8 Vdout1_8ck196 = 0 time = 985
.meas tran vdout1_8ck196 FIND v(dout1_8) AT=985.025n

* CHECK dout1_9 Vdout1_9ck196 = 1.0 time = 985
.meas tran vdout1_9ck196 FIND v(dout1_9) AT=985.025n

* CHECK dout1_10 Vdout1_10ck196 = 0 time = 985
.meas tran vdout1_10ck196 FIND v(dout1_10) AT=985.025n

* CHECK dout1_11 Vdout1_11ck196 = 0 time = 985
.meas tran vdout1_11ck196 FIND v(dout1_11) AT=985.025n

* CHECK dout1_12 Vdout1_12ck196 = 0 time = 985
.meas tran vdout1_12ck196 FIND v(dout1_12) AT=985.025n

* CHECK dout1_13 Vdout1_13ck196 = 0 time = 985
.meas tran vdout1_13ck196 FIND v(dout1_13) AT=985.025n

* CHECK dout1_14 Vdout1_14ck196 = 0 time = 985
.meas tran vdout1_14ck196 FIND v(dout1_14) AT=985.025n

* CHECK dout1_15 Vdout1_15ck196 = 1.0 time = 985
.meas tran vdout1_15ck196 FIND v(dout1_15) AT=985.025n

* CHECK dout1_16 Vdout1_16ck196 = 0 time = 985
.meas tran vdout1_16ck196 FIND v(dout1_16) AT=985.025n

* CHECK dout1_0 Vdout1_0ck197 = 0 time = 990
.meas tran vdout1_0ck197 FIND v(dout1_0) AT=990.025n

* CHECK dout1_1 Vdout1_1ck197 = 1.0 time = 990
.meas tran vdout1_1ck197 FIND v(dout1_1) AT=990.025n

* CHECK dout1_2 Vdout1_2ck197 = 0 time = 990
.meas tran vdout1_2ck197 FIND v(dout1_2) AT=990.025n

* CHECK dout1_3 Vdout1_3ck197 = 0 time = 990
.meas tran vdout1_3ck197 FIND v(dout1_3) AT=990.025n

* CHECK dout1_4 Vdout1_4ck197 = 0 time = 990
.meas tran vdout1_4ck197 FIND v(dout1_4) AT=990.025n

* CHECK dout1_5 Vdout1_5ck197 = 1.0 time = 990
.meas tran vdout1_5ck197 FIND v(dout1_5) AT=990.025n

* CHECK dout1_6 Vdout1_6ck197 = 0 time = 990
.meas tran vdout1_6ck197 FIND v(dout1_6) AT=990.025n

* CHECK dout1_7 Vdout1_7ck197 = 0 time = 990
.meas tran vdout1_7ck197 FIND v(dout1_7) AT=990.025n

* CHECK dout1_8 Vdout1_8ck197 = 0 time = 990
.meas tran vdout1_8ck197 FIND v(dout1_8) AT=990.025n

* CHECK dout1_9 Vdout1_9ck197 = 1.0 time = 990
.meas tran vdout1_9ck197 FIND v(dout1_9) AT=990.025n

* CHECK dout1_10 Vdout1_10ck197 = 0 time = 990
.meas tran vdout1_10ck197 FIND v(dout1_10) AT=990.025n

* CHECK dout1_11 Vdout1_11ck197 = 0 time = 990
.meas tran vdout1_11ck197 FIND v(dout1_11) AT=990.025n

* CHECK dout1_12 Vdout1_12ck197 = 0 time = 990
.meas tran vdout1_12ck197 FIND v(dout1_12) AT=990.025n

* CHECK dout1_13 Vdout1_13ck197 = 0 time = 990
.meas tran vdout1_13ck197 FIND v(dout1_13) AT=990.025n

* CHECK dout1_14 Vdout1_14ck197 = 0 time = 990
.meas tran vdout1_14ck197 FIND v(dout1_14) AT=990.025n

* CHECK dout1_15 Vdout1_15ck197 = 1.0 time = 990
.meas tran vdout1_15ck197 FIND v(dout1_15) AT=990.025n

* CHECK dout1_16 Vdout1_16ck197 = 0 time = 990
.meas tran vdout1_16ck197 FIND v(dout1_16) AT=990.025n

* CHECK dout1_0 Vdout1_0ck198 = 0 time = 995
.meas tran vdout1_0ck198 FIND v(dout1_0) AT=995.025n

* CHECK dout1_1 Vdout1_1ck198 = 1.0 time = 995
.meas tran vdout1_1ck198 FIND v(dout1_1) AT=995.025n

* CHECK dout1_2 Vdout1_2ck198 = 1.0 time = 995
.meas tran vdout1_2ck198 FIND v(dout1_2) AT=995.025n

* CHECK dout1_3 Vdout1_3ck198 = 0 time = 995
.meas tran vdout1_3ck198 FIND v(dout1_3) AT=995.025n

* CHECK dout1_4 Vdout1_4ck198 = 1.0 time = 995
.meas tran vdout1_4ck198 FIND v(dout1_4) AT=995.025n

* CHECK dout1_5 Vdout1_5ck198 = 0 time = 995
.meas tran vdout1_5ck198 FIND v(dout1_5) AT=995.025n

* CHECK dout1_6 Vdout1_6ck198 = 1.0 time = 995
.meas tran vdout1_6ck198 FIND v(dout1_6) AT=995.025n

* CHECK dout1_7 Vdout1_7ck198 = 1.0 time = 995
.meas tran vdout1_7ck198 FIND v(dout1_7) AT=995.025n

* CHECK dout1_8 Vdout1_8ck198 = 0 time = 995
.meas tran vdout1_8ck198 FIND v(dout1_8) AT=995.025n

* CHECK dout1_9 Vdout1_9ck198 = 0 time = 995
.meas tran vdout1_9ck198 FIND v(dout1_9) AT=995.025n

* CHECK dout1_10 Vdout1_10ck198 = 0 time = 995
.meas tran vdout1_10ck198 FIND v(dout1_10) AT=995.025n

* CHECK dout1_11 Vdout1_11ck198 = 1.0 time = 995
.meas tran vdout1_11ck198 FIND v(dout1_11) AT=995.025n

* CHECK dout1_12 Vdout1_12ck198 = 1.0 time = 995
.meas tran vdout1_12ck198 FIND v(dout1_12) AT=995.025n

* CHECK dout1_13 Vdout1_13ck198 = 1.0 time = 995
.meas tran vdout1_13ck198 FIND v(dout1_13) AT=995.025n

* CHECK dout1_14 Vdout1_14ck198 = 1.0 time = 995
.meas tran vdout1_14ck198 FIND v(dout1_14) AT=995.025n

* CHECK dout1_15 Vdout1_15ck198 = 0 time = 995
.meas tran vdout1_15ck198 FIND v(dout1_15) AT=995.025n

* CHECK dout1_16 Vdout1_16ck198 = 1.0 time = 995
.meas tran vdout1_16ck198 FIND v(dout1_16) AT=995.025n

* CHECK dout1_0 Vdout1_0ck199 = 1.0 time = 1000
.meas tran vdout1_0ck199 FIND v(dout1_0) AT=1000.025n

* CHECK dout1_1 Vdout1_1ck199 = 1.0 time = 1000
.meas tran vdout1_1ck199 FIND v(dout1_1) AT=1000.025n

* CHECK dout1_2 Vdout1_2ck199 = 1.0 time = 1000
.meas tran vdout1_2ck199 FIND v(dout1_2) AT=1000.025n

* CHECK dout1_3 Vdout1_3ck199 = 0 time = 1000
.meas tran vdout1_3ck199 FIND v(dout1_3) AT=1000.025n

* CHECK dout1_4 Vdout1_4ck199 = 1.0 time = 1000
.meas tran vdout1_4ck199 FIND v(dout1_4) AT=1000.025n

* CHECK dout1_5 Vdout1_5ck199 = 1.0 time = 1000
.meas tran vdout1_5ck199 FIND v(dout1_5) AT=1000.025n

* CHECK dout1_6 Vdout1_6ck199 = 0 time = 1000
.meas tran vdout1_6ck199 FIND v(dout1_6) AT=1000.025n

* CHECK dout1_7 Vdout1_7ck199 = 1.0 time = 1000
.meas tran vdout1_7ck199 FIND v(dout1_7) AT=1000.025n

* CHECK dout1_8 Vdout1_8ck199 = 1.0 time = 1000
.meas tran vdout1_8ck199 FIND v(dout1_8) AT=1000.025n

* CHECK dout1_9 Vdout1_9ck199 = 1.0 time = 1000
.meas tran vdout1_9ck199 FIND v(dout1_9) AT=1000.025n

* CHECK dout1_10 Vdout1_10ck199 = 1.0 time = 1000
.meas tran vdout1_10ck199 FIND v(dout1_10) AT=1000.025n

* CHECK dout1_11 Vdout1_11ck199 = 0 time = 1000
.meas tran vdout1_11ck199 FIND v(dout1_11) AT=1000.025n

* CHECK dout1_12 Vdout1_12ck199 = 0 time = 1000
.meas tran vdout1_12ck199 FIND v(dout1_12) AT=1000.025n

* CHECK dout1_13 Vdout1_13ck199 = 0 time = 1000
.meas tran vdout1_13ck199 FIND v(dout1_13) AT=1000.025n

* CHECK dout1_14 Vdout1_14ck199 = 0 time = 1000
.meas tran vdout1_14ck199 FIND v(dout1_14) AT=1000.025n

* CHECK dout1_15 Vdout1_15ck199 = 1.0 time = 1000
.meas tran vdout1_15ck199 FIND v(dout1_15) AT=1000.025n

* CHECK dout1_16 Vdout1_16ck199 = 1.0 time = 1000
.meas tran vdout1_16ck199 FIND v(dout1_16) AT=1000.025n

* CHECK dout1_0 Vdout1_0ck200 = 0 time = 1005
.meas tran vdout1_0ck200 FIND v(dout1_0) AT=1005.025n

* CHECK dout1_1 Vdout1_1ck200 = 1.0 time = 1005
.meas tran vdout1_1ck200 FIND v(dout1_1) AT=1005.025n

* CHECK dout1_2 Vdout1_2ck200 = 1.0 time = 1005
.meas tran vdout1_2ck200 FIND v(dout1_2) AT=1005.025n

* CHECK dout1_3 Vdout1_3ck200 = 1.0 time = 1005
.meas tran vdout1_3ck200 FIND v(dout1_3) AT=1005.025n

* CHECK dout1_4 Vdout1_4ck200 = 0 time = 1005
.meas tran vdout1_4ck200 FIND v(dout1_4) AT=1005.025n

* CHECK dout1_5 Vdout1_5ck200 = 0 time = 1005
.meas tran vdout1_5ck200 FIND v(dout1_5) AT=1005.025n

* CHECK dout1_6 Vdout1_6ck200 = 1.0 time = 1005
.meas tran vdout1_6ck200 FIND v(dout1_6) AT=1005.025n

* CHECK dout1_7 Vdout1_7ck200 = 1.0 time = 1005
.meas tran vdout1_7ck200 FIND v(dout1_7) AT=1005.025n

* CHECK dout1_8 Vdout1_8ck200 = 0 time = 1005
.meas tran vdout1_8ck200 FIND v(dout1_8) AT=1005.025n

* CHECK dout1_9 Vdout1_9ck200 = 0 time = 1005
.meas tran vdout1_9ck200 FIND v(dout1_9) AT=1005.025n

* CHECK dout1_10 Vdout1_10ck200 = 1.0 time = 1005
.meas tran vdout1_10ck200 FIND v(dout1_10) AT=1005.025n

* CHECK dout1_11 Vdout1_11ck200 = 1.0 time = 1005
.meas tran vdout1_11ck200 FIND v(dout1_11) AT=1005.025n

* CHECK dout1_12 Vdout1_12ck200 = 0 time = 1005
.meas tran vdout1_12ck200 FIND v(dout1_12) AT=1005.025n

* CHECK dout1_13 Vdout1_13ck200 = 0 time = 1005
.meas tran vdout1_13ck200 FIND v(dout1_13) AT=1005.025n

* CHECK dout1_14 Vdout1_14ck200 = 1.0 time = 1005
.meas tran vdout1_14ck200 FIND v(dout1_14) AT=1005.025n

* CHECK dout1_15 Vdout1_15ck200 = 0 time = 1005
.meas tran vdout1_15ck200 FIND v(dout1_15) AT=1005.025n

* CHECK dout1_16 Vdout1_16ck200 = 0 time = 1005
.meas tran vdout1_16ck200 FIND v(dout1_16) AT=1005.025n

* probe is used for hspice/xa, while plot is used in ngspice
*.probe V(*)
*.plot V(*)
.end

