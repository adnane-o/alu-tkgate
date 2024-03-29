//: version "1.8.7"

module v(S, V, Y, ADDSUB, X);
//: interface  /sz:(128, 112) /bd:[ Li0>ADDSUB(24/112) Li1>S(96/112) Li2>Y(73/112) Li3>X(46/112) Ro0<V(60/112) ]
input X;    //: /sn:0 {0}(356,224)(489,224)(489,219)(499,219){1}
//: {2}(501,217)(501,172)(550,172){3}
//: {4}(501,221)(501,238)(550,238){5}
output V;    //: /sn:0 {0}(665,212)(630,212){1}
input ADDSUB;    //: /sn:0 {0}(356,183)(424,183){1}
//: {2}(426,181)(426,161)(456,161){3}
//: {4}(426,185)(426,261)(449,261){5}
input S;    //: /sn:0 {0}(383,239)(478,239)(478,238)(488,238){1}
//: {2}(490,236)(490,177)(550,177){3}
//: {4}(490,240)(490,243)(550,243){5}
input Y;    //: /sn:0 {0}(353,214)(430,214){1}
//: {2}(432,212)(432,156)(456,156){3}
//: {4}(432,216)(432,266)(449,266){5}
wire w1;    //: /sn:0 /dp:1 {0}(609,214)(582,214)(582,243)(571,243){1}
wire w8;    //: /sn:0 {0}(571,172)(599,172)(599,209)(609,209){1}
wire w2;    //: /sn:0 {0}(477,159)(540,159)(540,167)(550,167){1}
wire w5;    //: /sn:0 {0}(470,264)(533,264)(533,248)(550,248){1}
//: enddecls

  //: joint g8 (ADDSUB) @(426, 183) /w:[ -1 2 1 4 ]
  //: input g4 (S) @(381,239) /sn:0 /w:[ 0 ]
  //: output g13 (V) @(662,212) /sn:0 /w:[ 0 ]
  and g3 (.I0(!X), .I1(S), .I2(w5), .Z(w1));   //: @(561,243) /sn:0 /w:[ 5 5 1 1 ]
  and g2 (.I0(w2), .I1(X), .I2(!S), .Z(w8));   //: @(561,172) /sn:0 /w:[ 1 3 3 0 ]
  xnor g1 (.I0(ADDSUB), .I1(Y), .Z(w5));   //: @(460,264) /sn:0 /w:[ 5 5 0 ]
  //: joint g11 (X) @(501, 219) /w:[ -1 2 1 4 ]
  //: joint g10 (S) @(490, 238) /w:[ -1 2 1 4 ]
  //: input g6 (Y) @(351,214) /sn:0 /w:[ 0 ]
  //: joint g9 (Y) @(432, 214) /w:[ -1 2 1 4 ]
  //: input g7 (ADDSUB) @(354,183) /sn:0 /w:[ 0 ]
  //: input g5 (X) @(354,224) /sn:0 /w:[ 0 ]
  xor g0 (.I0(Y), .I1(ADDSUB), .Z(w2));   //: @(467,159) /sn:0 /w:[ 3 3 0 ]
  or g12 (.I0(w8), .I1(w1), .Z(V));   //: @(620,212) /sn:0 /w:[ 1 0 1 ]

endmodule

module Z(Z, S);
//: interface  /sz:(68, 48) /bd:[ Li0>S[3:0](20/48) Ro0<Z(22/48) ]
output Z;    //: /sn:0 {0}(426,400)(426,349){1}
input [7:0] S;    //: /sn:0 {0}(423,84)(423,51){1}
wire w6;    //: /sn:0 {0}(398,90)(398,127)(413,127)(413,328){1}
wire w7;    //: /sn:0 {0}(388,90)(388,133)(408,133)(408,328){1}
wire w4;    //: /sn:0 {0}(428,328)(428,90){1}
wire w3;    //: /sn:0 {0}(433,328)(433,106)(438,106)(438,90){1}
wire w0;    //: /sn:0 {0}(443,328)(443,199)(458,199)(458,90){1}
wire w1;    //: /sn:0 {0}(438,328)(438,162)(448,162)(448,90){1}
wire w8;    //: /sn:0 {0}(423,328)(423,100)(418,100)(418,90){1}
wire w5;    //: /sn:0 {0}(408,90)(408,120)(418,120)(418,328){1}
//: enddecls

  //: output g3 (Z) @(426,397) /sn:0 /R:3 /w:[ 0 ]
  concat g2 (.I0(w0), .I1(w1), .I2(w3), .I3(w4), .I4(w8), .I5(w5), .I6(w6), .I7(w7), .Z(S));   //: @(423,85) /sn:0 /R:1 /w:[ 1 1 1 1 1 0 0 0 0 ] /dr:0
  //: input g1 (S) @(423,49) /sn:0 /R:3 /w:[ 1 ]
  nor g0 (.I0(w0), .I1(w1), .I2(w3), .I3(w4), .I4(w8), .I5(w5), .I6(w6), .I7(w7), .Z(Z));   //: @(426,339) /sn:0 /R:3 /w:[ 0 0 0 0 0 1 1 1 1 ]

endmodule

module Compare(E, S, A, B, I);
//: interface  /sz:(100, 89) /bd:[ Li0>B[7:0](62/89) Li1>A[7:0](33/89) Ro0<I(47/89) Ro1<E(29/89) Ro2<S(67/89) ]
input [7:0] B;    //: /sn:0 {0}(26,334)(78,334)(78,344)(88,344){1}
output I;    //: /sn:0 {0}(1030,280)(956,280){1}
//: {2}(952,280)(938,280){3}
//: {4}(954,282)(954,358)(964,358){5}
input [7:0] A;    //: /sn:0 {0}(37,139)(66,139)(66,132)(81,132){1}
output E;    //: /sn:0 {0}(1031,92)(946,92){1}
//: {2}(942,92)(795,92){3}
//: {4}(944,94)(944,363)(964,363){5}
output S;    //: /sn:0 {0}(1027,361)(985,361){1}
wire w6;    //: /sn:0 {0}(398,337)(600,337)(600,184)(732,184){1}
wire w73;    //: /sn:0 /dp:1 {0}(754,301)(838,301)(838,278)(917,278){1}
wire w7;    //: /sn:0 {0}(774,75)(398,75){1}
wire w56;    //: /sn:0 {0}(753,383)(882,383)(882,288)(917,288){1}
wire w14;    //: /sn:0 {0}(774,85)(419,85)(419,138){1}
//: {2}(417,140)(398,140){3}
//: {4}(419,142)(419,154)(710,154){5}
//: {6}(714,154)(732,154){7}
//: {8}(712,156)(712,198)(732,198){9}
wire w16;    //: /sn:0 {0}(774,90)(411,90)(411,157){1}
//: {2}(413,159)(695,159){3}
//: {4}(699,159)(732,159){5}
//: {6}(697,161)(697,201){7}
//: {8}(699,203)(732,203){9}
//: {10}(697,205)(697,248)(732,248){11}
//: {12}(411,161)(411,175)(398,175){13}
wire w19;    //: /sn:0 {0}(94,379)(140,379){1}
//: {2}(142,377)(142,297)(378,297){3}
//: {4}(142,381)(142,552)(379,552){5}
wire w15;    //: /sn:0 /dp:1 {0}(377,234)(184,234)(184,357){1}
//: {2}(182,359)(94,359){3}
//: {4}(184,361)(184,491)(377,491){5}
wire w38;    //: /sn:0 {0}(398,430)(624,430)(624,311)(733,311){1}
wire w69;    //: /sn:0 {0}(398,494)(662,494)(662,388)(732,388){1}
wire w3;    //: /sn:0 /dp:1 {0}(94,319)(237,319){1}
//: {2}(239,317)(239,104)(377,104){3}
//: {4}(239,321)(239,363)(377,363){5}
wire w37;    //: /sn:0 {0}(94,369)(187,369){1}
//: {2}(189,367)(189,264)(377,264){3}
//: {4}(189,371)(189,522)(379,522){5}
wire w21;    //: /sn:0 {0}(398,398)(616,398)(616,273)(732,273){1}
wire w75;    //: /sn:0 {0}(753,410)(889,410)(889,293)(917,293){1}
wire w67;    //: /sn:0 /dp:1 {0}(753,166)(896,166)(896,263)(917,263){1}
wire w31;    //: /sn:0 {0}(87,157)(101,157)(101,261)(348,261){1}
//: {2}(352,261)(364,261)(364,269)(377,269){3}
//: {4}(350,263)(350,527)(379,527){5}
wire w41;    //: /sn:0 {0}(398,462)(654,462)(654,351)(733,351){1}
wire w23;    //: /sn:0 {0}(774,105)(428,105)(428,172){1}
//: {2}(430,174)(637,174){3}
//: {4}(641,174)(732,174){5}
//: {6}(639,176)(639,216){7}
//: {8}(641,218)(732,218){9}
//: {10}(639,220)(639,261){11}
//: {12}(641,263)(732,263){13}
//: {14}(639,265)(639,299){15}
//: {16}(641,301)(733,301){17}
//: {18}(639,303)(639,339){19}
//: {20}(641,341)(733,341){21}
//: {22}(639,343)(639,378)(732,378){23}
//: {24}(428,176)(428,267)(398,267){25}
wire w24;    //: /sn:0 {0}(774,110)(435,110)(435,177){1}
//: {2}(437,179)(619,179){3}
//: {4}(623,179)(732,179){5}
//: {6}(621,181)(621,221){7}
//: {8}(623,223)(732,223){9}
//: {10}(621,225)(621,266){11}
//: {12}(623,268)(732,268){13}
//: {14}(621,270)(621,304){15}
//: {16}(623,306)(733,306){17}
//: {18}(621,308)(621,344){19}
//: {20}(623,346)(733,346){21}
//: {22}(621,348)(621,381){23}
//: {24}(623,383)(732,383){25}
//: {26}(621,385)(621,408)(732,408){27}
//: {28}(435,181)(435,300)(399,300){29}
wire w1;    //: /sn:0 {0}(87,167)(95,167)(95,281)(338,281){1}
//: {2}(342,281)(360,281)(360,302)(378,302){3}
//: {4}(340,283)(340,557)(379,557){5}
wire w25;    //: /sn:0 {0}(87,117)(224,117)(224,165)(354,165){1}
//: {2}(358,165)(367,165)(367,142)(377,142){3}
//: {4}(356,167)(356,400)(377,400){5}
wire w35;    //: /sn:0 {0}(94,349)(249,349){1}
//: {2}(251,347)(251,204)(377,204){3}
//: {4}(251,351)(251,459)(377,459){5}
wire w18;    //: /sn:0 {0}(774,95)(415,95)(415,162){1}
//: {2}(417,164)(674,164){3}
//: {4}(678,164)(732,164){5}
//: {6}(676,166)(676,206){7}
//: {8}(678,208)(732,208){9}
//: {10}(676,210)(676,251){11}
//: {12}(678,253)(732,253){13}
//: {14}(676,255)(676,291)(733,291){15}
//: {16}(415,166)(415,207)(398,207){17}
wire w30;    //: /sn:0 {0}(87,147)(175,147)(175,237)(353,237){1}
//: {2}(357,237)(367,237)(367,239)(377,239){3}
//: {4}(355,239)(355,496)(377,496){5}
wire w71;    //: /sn:0 /dp:1 {0}(753,260)(883,260)(883,273)(917,273){1}
wire w22;    //: /sn:0 {0}(774,100)(422,100)(422,167){1}
//: {2}(424,169)(653,169){3}
//: {4}(657,169)(732,169){5}
//: {6}(655,171)(655,211){7}
//: {8}(657,213)(732,213){9}
//: {10}(655,215)(655,256){11}
//: {12}(657,258)(732,258){13}
//: {14}(655,260)(655,294){15}
//: {16}(657,296)(733,296){17}
//: {18}(655,298)(655,336)(733,336){19}
//: {20}(422,171)(422,237)(398,237){21}
wire w12;    //: /sn:0 {0}(398,366)(606,366)(606,228)(732,228){1}
wire w11;    //: /sn:0 {0}(87,107)(230,107)(230,142)(357,142){1}
//: {2}(361,142)(369,142)(369,109)(377,109){3}
//: {4}(359,144)(359,368)(377,368){5}
wire w2;    //: /sn:0 {0}(87,97)(270,97)(270,121)(361,121){1}
//: {2}(365,121)(371,121)(371,77)(377,77){3}
//: {4}(363,123)(363,339)(377,339){5}
wire w70;    //: /sn:0 /dp:1 {0}(753,213)(888,213)(888,268)(917,268){1}
wire w13;    //: /sn:0 {0}(94,309)(319,309){1}
//: {2}(323,309)(350,309)(350,334)(377,334){3}
//: {4}(321,307)(321,72)(377,72){5}
wire w27;    //: /sn:0 {0}(87,127)(107,127)(107,189)(328,189){1}
//: {2}(332,189)(354,189)(354,177)(377,177){3}
//: {4}(330,191)(330,432)(377,432){5}
wire w72;    //: /sn:0 /dp:1 {0}(754,343)(875,343)(875,283)(917,283){1}
wire w33;    //: /sn:0 {0}(94,329)(281,329){1}
//: {2}(283,327)(283,137)(377,137){3}
//: {4}(283,331)(283,395)(377,395){5}
wire w5;    //: /sn:0 {0}(398,107)(423,107){1}
//: {2}(425,105)(425,80)(774,80){3}
//: {4}(425,109)(425,149)(732,149){5}
wire w47;    //: /sn:0 {0}(400,525)(670,525)(670,413)(732,413){1}
wire w29;    //: /sn:0 {0}(87,137)(192,137)(192,214)(335,214){1}
//: {2}(339,214)(358,214)(358,209)(377,209){3}
//: {4}(337,216)(337,464)(377,464){5}
wire w50;    //: /sn:0 {0}(400,555)(903,555)(903,298)(917,298){1}
wire w9;    //: /sn:0 /dp:1 {0}(377,172)(264,172)(264,337){1}
//: {2}(262,339)(94,339){3}
//: {4}(264,341)(264,427)(377,427){5}
//: enddecls

  xnor E7 (.I0(w19), .I1(w1), .Z(w24));   //: @(389,300) /w:[ 3 3 29 ]
  or g8 (.I0(w67), .I1(w70), .I2(w71), .I3(w73), .I4(w72), .I5(w56), .I6(w75), .I7(w50), .Z(I));   //: @(928,280) /sn:0 /w:[ 1 1 1 1 1 1 1 1 3 ]
  //: joint g4 (w23) @(639, 174) /w:[ 4 -1 3 6 ]
  //: joint g61 (I) @(954, 280) /w:[ 1 -1 2 4 ]
  and S1 (.I0(w3), .I1(!w11), .Z(w12));   //: @(388,366) /w:[ 5 5 0 ]
  //: joint g34 (w33) @(283, 329) /w:[ -1 2 1 4 ]
  //: joint g3 (w22) @(655, 169) /w:[ 4 -1 3 6 ]
  //: joint g13 (w24) @(621, 223) /w:[ 8 7 -1 10 ]
  //: joint g37 (w23) @(639, 301) /w:[ 16 15 -1 18 ]
  //: joint g51 (w5) @(425, 107) /w:[ -1 2 1 4 ]
  //: joint g55 (w22) @(422, 169) /w:[ 2 1 -1 20 ]
  //: output g58 (E) @(1028,92) /sn:0 /w:[ 0 ]
  //: joint g2 (w18) @(676, 164) /w:[ 4 -1 3 6 ]
  and S7 (.I0(w19), .I1(!w1), .Z(w50));   //: @(390,555) /w:[ 5 5 0 ]
  and S6 (.I0(w37), .I1(!w31), .Z(w47));   //: @(390,525) /w:[ 5 5 0 ]
  //: output g59 (S) @(1024,361) /sn:0 /w:[ 0 ]
  xnor E1 (.I0(w3), .I1(w11), .Z(w5));   //: @(388,107) /w:[ 3 3 0 ]
  //: joint g1 (w16) @(697, 159) /w:[ 4 -1 3 6 ]
  concat g11 (.I0(w13), .I1(w3), .I2(w33), .I3(w9), .I4(w35), .I5(w15), .I6(w37), .I7(w19), .Z(B));   //: @(89,344) /sn:0 /R:2 /w:[ 0 0 0 3 0 3 0 0 1 ] /dr:0
  //: joint g16 (w23) @(639, 263) /w:[ 12 11 -1 14 ]
  xnor E2 (.I0(w33), .I1(w25), .Z(w14));   //: @(388,140) /w:[ 3 3 3 ]
  //: joint g28 (w2) @(363, 121) /w:[ 2 -1 1 4 ]
  //: joint g10 (w22) @(655, 213) /w:[ 8 7 -1 10 ]
  and g50 (.I0(w7), .I1(w5), .I2(w14), .I3(w16), .I4(w18), .I5(w22), .I6(w23), .I7(w24), .Z(E));   //: @(785,92) /sn:0 /w:[ 0 3 0 0 0 0 0 0 3 ]
  xnor E0 (.I0(w13), .I1(w2), .Z(w7));   //: @(388,75) /w:[ 5 3 1 ]
  //: joint g32 (w35) @(251, 349) /w:[ -1 2 1 4 ]
  //: joint g27 (w11) @(359, 142) /w:[ 2 -1 1 4 ]
  //: input g19 (A) @(35,139) /sn:0 /w:[ 0 ]
  and S4 (.I0(w35), .I1(!w29), .Z(w41));   //: @(388,462) /w:[ 5 5 0 ]
  //: joint g6 (w16) @(697, 203) /w:[ 8 7 -1 10 ]
  //: joint g38 (w24) @(621, 306) /w:[ 16 15 -1 18 ]
  concat g9 (.I0(w2), .I1(w11), .I2(w25), .I3(w27), .I4(w29), .I5(w30), .I6(w31), .I7(w1), .Z(A));   //: @(82,132) /sn:0 /R:2 /w:[ 0 0 0 0 0 0 0 0 1 ] /dr:0
  //: joint g7 (w18) @(676, 208) /w:[ 8 7 -1 10 ]
  //: joint g53 (w16) @(411, 159) /w:[ 2 1 -1 12 ]
  //: joint g57 (w24) @(435, 179) /w:[ 2 1 -1 28 ]
  //: joint g31 (w15) @(184, 359) /w:[ -1 1 2 4 ]
  //: input g20 (B) @(24,334) /sn:0 /w:[ 0 ]
  //: joint g15 (w22) @(655, 258) /w:[ 12 11 -1 14 ]
  and g39 (.I0(w18), .I1(w22), .I2(w23), .I3(w24), .I4(w38), .Z(w73));   //: @(744,301) /sn:0 /w:[ 15 17 17 17 1 0 ]
  and S0 (.I0(w13), .I1(!w2), .Z(w6));   //: @(388,337) /w:[ 3 5 0 ]
  and g43 (.I0(w22), .I1(w23), .I2(w24), .I3(w41), .Z(w72));   //: @(744,343) /sn:0 /w:[ 19 21 21 1 0 ]
  //: joint g48 (w24) @(621, 383) /w:[ 24 23 -1 26 ]
  and S5 (.I0(w15), .I1(!w30), .Z(w69));   //: @(388,494) /w:[ 5 5 0 ]
  //: joint g29 (w19) @(142, 379) /w:[ -1 2 1 4 ]
  //: joint g25 (w27) @(330, 189) /w:[ 2 -1 1 4 ]
  //: joint g17 (w24) @(621, 268) /w:[ 12 11 -1 14 ]
  //: joint g62 (E) @(944, 92) /w:[ 1 -1 2 4 ]
  and g42 (.I0(w5), .I1(w14), .I2(w16), .I3(w18), .I4(w22), .I5(w23), .I6(w24), .I7(w6), .Z(w67));   //: @(743,166) /sn:0 /w:[ 5 7 5 5 5 5 5 1 0 ]
  //: joint g52 (w14) @(419, 140) /w:[ -1 1 2 4 ]
  xnor E4 (.I0(w35), .I1(w29), .Z(w18));   //: @(388,207) /w:[ 3 3 17 ]
  //: joint g5 (w24) @(621, 179) /w:[ 4 -1 3 6 ]
  //: joint g14 (w18) @(676, 253) /w:[ 12 11 -1 14 ]
  //: joint g56 (w23) @(428, 174) /w:[ 2 1 -1 24 ]
  and g44 (.I0(w24), .I1(w47), .Z(w75));   //: @(743,410) /sn:0 /w:[ 27 1 0 ]
  //: joint g47 (w24) @(621, 346) /w:[ 20 19 -1 22 ]
  xnor E3 (.I0(w9), .I1(w27), .Z(w16));   //: @(388,175) /w:[ 0 3 13 ]
  //: joint g36 (w3) @(239, 319) /w:[ -1 2 1 4 ]
  //: joint g24 (w29) @(337, 214) /w:[ 2 -1 1 4 ]
  //: joint g21 (w1) @(340, 281) /w:[ 2 -1 1 4 ]
  xnor E5 (.I0(w15), .I1(w30), .Z(w22));   //: @(388,237) /w:[ 0 3 21 ]
  and g41 (.I0(w16), .I1(w18), .I2(w22), .I3(w23), .I4(w24), .I5(w21), .Z(w71));   //: @(743,260) /sn:0 /w:[ 11 13 13 13 13 1 0 ]
  //: joint g23 (w30) @(355, 237) /w:[ 2 -1 1 4 ]
  and g40 (.I0(w14), .I1(w16), .I2(w18), .I3(w22), .I4(w23), .I5(w24), .I6(w12), .Z(w70));   //: @(743,213) /sn:0 /w:[ 9 9 9 9 9 9 1 0 ]
  //: joint g54 (w18) @(415, 164) /w:[ 2 1 -1 16 ]
  nor g60 (.I0(I), .I1(E), .Z(S));   //: @(975,361) /sn:0 /w:[ 5 5 1 ]
  and g45 (.I0(w23), .I1(w24), .I2(w69), .Z(w56));   //: @(743,383) /sn:0 /w:[ 23 25 1 0 ]
  //: joint g35 (w13) @(321, 309) /w:[ 2 4 1 -1 ]
  //: joint g26 (w25) @(356, 165) /w:[ 2 -1 1 4 ]
  //: joint g22 (w31) @(350, 261) /w:[ 2 -1 1 4 ]
  //: joint g0 (w14) @(712, 154) /w:[ 6 -1 5 8 ]
  //: joint g46 (w23) @(639, 341) /w:[ 20 19 -1 22 ]
  xnor E6 (.I0(w37), .I1(w31), .Z(w23));   //: @(388,267) /w:[ 3 3 25 ]
  and S3 (.I0(w9), .I1(!w27), .Z(w38));   //: @(388,430) /w:[ 5 5 0 ]
  //: joint g12 (w23) @(639, 218) /w:[ 8 7 -1 10 ]
  //: joint g18 (w22) @(655, 296) /w:[ 16 15 -1 18 ]
  //: joint g33 (w9) @(264, 339) /w:[ -1 1 2 4 ]
  //: joint g30 (w37) @(189, 369) /w:[ -1 2 1 4 ]
  and S2 (.I0(w33), .I1(!w25), .Z(w21));   //: @(388,398) /w:[ 5 5 0 ]
  //: output g49 (I) @(1027,280) /sn:0 /w:[ 0 ]

endmodule

module main;    //: root_module
supply0 w46;    //: /sn:0 {0}(273,-113)(290,-113)(290,-121){1}
//: {2}(290,-125)(290,-142){3}
//: {4}(288,-123)(273,-123){5}
supply0 w28;    //: /sn:0 {0}(797,-84)(811,-84)(811,-92){1}
//: {2}(813,-94)(829,-94)(829,-121){3}
//: {4}(811,-96)(811,-110){5}
//: {6}(811,-114)(811,-123)(708,-123){7}
//: {8}(809,-112)(759,-112)(759,-113)(708,-113){9}
//: {10}(809,-94)(797,-94){11}
supply0 [6:0] w59;    //: /sn:0 {0}(797,613)(797,633)(825,633){1}
//: {2}(829,633)(898,633)(898,691){3}
//: {4}(827,635)(827,692){5}
supply0 [2:0] w11;    //: /sn:0 {0}(1082,581)(1082,603){1}
//: {2}(1084,605)(1122,605){3}
//: {4}(1126,605)(1170,605)(1170,659){5}
//: {6}(1124,607)(1124,659){7}
//: {8}(1082,607)(1082,660){9}
supply1 w57;    //: /sn:0 /dp:1 {0}(955,778)(955,816){1}
//: {2}(957,818)(970,818)(970,876)(1001,876){3}
//: {4}(955,820)(955,864){5}
//: {6}(957,866)(980,866)(980,865)(1001,865){7}
//: {8}(953,866)(946,866)(946,860)(1001,860){9}
//: {10}(955,868)(955,871)(1001,871){11}
supply0 w44;    //: /sn:0 /dp:1 {0}(1203,-74)(1218,-74){1}
//: {2}(1220,-76)(1220,-106){3}
//: {4}(1220,-72)(1220,-64)(1203,-64){5}
supply0 w13;    //: /sn:0 /dp:1 {0}(918,691)(918,659)(910,659){1}
//: {2}(908,657)(908,643){3}
//: {4}(908,661)(908,691){5}
supply0 w5;    //: /sn:0 /dp:1 {0}(788,692)(788,647)(770,647){1}
//: {2}(768,645)(768,630)(719,630)(719,642){3}
//: {4}(721,644)(729,644)(729,693){5}
//: {6}(717,644)(672,644){7}
//: {8}(668,644)(652,644){9}
//: {10}(648,644)(565,644)(565,650){11}
//: {12}(567,652)(575,652)(575,693){13}
//: {14}(563,652)(516,652){15}
//: {16}(514,650)(514,637)(494,637)(494,649){17}
//: {18}(496,651)(504,651)(504,693){19}
//: {20}(492,651)(453,651){21}
//: {22}(449,651)(439,651){23}
//: {24}(437,653)(437,643)(447,643)(447,693){25}
//: {26}(435,651)(400,651){27}
//: {28}(396,651)(381,651){29}
//: {30}(379,653)(379,643)(389,643)(389,693){31}
//: {32}(377,651)(319,651){33}
//: {34}(317,649)(317,598){35}
//: {36}(315,651)(299,651)(299,666)(325,666){37}
//: {38}(329,666)(337,666)(337,693){39}
//: {40}(327,668)(327,693){41}
//: {42}(317,653)(317,693){43}
//: {44}(379,653)(379,693){45}
//: {46}(398,653)(398,663)(399,663)(399,693){47}
//: {48}(437,653)(437,693){49}
//: {50}(451,653)(451,663)(457,663)(457,693){51}
//: {52}(494,653)(494,693){53}
//: {54}(514,654)(514,693){55}
//: {56}(565,654)(565,693){57}
//: {58}(650,646)(650,693){59}
//: {60}(670,646)(670,693){61}
//: {62}(719,646)(719,693){63}
//: {64}(768,649)(768,692){65}
supply0 w9;    //: /sn:0 {0}(1001,854)(948,854)(948,852)(935,852){1}
//: {2}(933,850)(933,837){3}
//: {4}(935,835)(948,835)(948,843)(1001,843){5}
//: {6}(933,833)(933,823){7}
//: {8}(935,821)(948,821)(948,832)(1001,832){9}
//: {10}(933,819)(933,781){11}
//: {12}(931,821)(924,821)(924,827)(1001,827){13}
//: {14}(931,835)(924,835)(924,838)(1001,838){15}
//: {16}(931,852)(924,852)(924,849)(1001,849){17}
wire [7:0] w32;    //: /sn:0 /dp:1 {0}(1114,659)(1114,90){1}
wire w6;    //: /sn:0 {0}(762,131)(909,131)(909,385){1}
wire w7;    //: /sn:0 {0}(672,118)(890,118)(890,385){1}
wire w45;    //: /sn:0 {0}(969,270)(969,260){1}
wire [7:0] w61;    //: /sn:0 {0}(768,19)(768,40){1}
//: {2}(768,41)(768,69)(760,69){3}
//: {4}(756,69)(484,69){5}
//: {6}(480,69)(432,69){7}
//: {8}(428,69)(374,69){9}
//: {10}(370,69)(310,69)(310,431){11}
//: {12}(372,71)(372,429){13}
//: {14}(430,71)(430,431){15}
//: {16}(482,71)(482,431){17}
//: {18}(758,71)(758,86){19}
//: {20}(760,88)(815,88)(815,83){21}
//: {22}(758,90)(758,103){23}
//: {24}(760,105)(1001,105)(1001,183){25}
//: {26}(758,107)(758,130){27}
//: {28}(758,131)(758,172){29}
wire [2:0] w60;    //: /sn:0 {0}(772,41)(969,41){1}
//: {2}(973,41)(1035,41){3}
//: {4}(971,43)(971,79)(1027,79){5}
//: {6}(1031,79)(1077,79){7}
//: {8}(1029,81)(1029,116)(1123,116){9}
wire [7:0] w14;    //: /sn:0 {0}(427,452)(427,693){1}
wire [10:0] w16;    //: /sn:0 {0}(633,784)(633,759)(322,759)(322,699){1}
wire w56;    //: /sn:0 {0}(1030,852)(1033,852)(1033,140)(870,140){1}
//: {2}(866,140)(763,140)(763,172){3}
//: {4}(868,142)(868,225){5}
//: {6}(866,227)(768,227){7}
//: {8}(868,229)(868,244){9}
//: {10}(866,246)(686,246){11}
//: {12}(868,248)(868,385){13}
wire w19;    //: /sn:0 /dp:1 {0}(745,6)(234,6)(234,-44){1}
wire w4;    //: /sn:0 {0}(748,338)(925,338)(925,385){1}
wire [10:0] w15;    //: /sn:0 {0}(628,784)(628,754)(442,754)(442,699){1}
wire [10:0] w51;    //: /sn:0 {0}(837,698)(837,722)(654,722)(654,784){1}
wire [10:0] w3;    //: /sn:0 /dp:1 {0}(620,784)(620,747)(499,747)(499,699){1}
wire [10:0] w0;    //: /sn:0 /dp:1 {0}(384,699)(384,765)(624,765)(624,784){1}
wire [7:0] w37;    //: /sn:0 /dp:1 {0}(1160,659)(1160,127){1}
wire w64;    //: /sn:0 {0}(857,692)(857,546)(819,546){1}
//: {2}(815,546)(679,546)(679,358){3}
//: {4}(681,356)(739,356){5}
//: {6}(677,356)(640,356)(640,345){7}
//: {8}(817,548)(817,692){9}
wire D8;    //: /sn:0 {0}(651,881)(651,893)(1253,893)(1253,-90){1}
wire [7:0] w34;    //: /sn:0 /dp:1 {0}(1164,-79)(1164,-101)(1205,-101)(1205,643){1}
//: {2}(1207,645)(1276,645)(1276,637){3}
//: {4}(1205,647)(1205,947)(661,947)(661,881){5}
wire [7:0] w21;    //: /sn:0 {0}(307,693)(307,452){1}
wire [10:0] w43;    //: /sn:0 {0}(646,875)(646,813){1}
wire w54;    //: /sn:0 {0}(837,692)(837,470){1}
//: {2}(839,468)(895,468){3}
//: {4}(897,466)(897,451){5}
//: {6}(897,470)(897,490){7}
//: {8}(835,468)(711,468){9}
//: {10}(707,468)(555,468)(555,693){11}
//: {12}(709,470)(709,693){13}
wire [10:0] w31;    //: /sn:0 {0}(1077,666)(1077,736)(663,736)(663,784){1}
wire w58;    //: /sn:0 {0}(986,260)(986,559)(930,559){1}
//: {2}(926,559)(888,559)(888,691){3}
//: {4}(928,561)(928,691){5}
wire [10:0] w41;    //: /sn:0 {0}(1165,665)(1165,750)(671,750)(671,784){1}
wire [10:0] w20;    //: /sn:0 {0}(641,784)(641,707)(655,707)(655,699){1}
wire [10:0] w23;    //: /sn:0 {0}(650,784)(650,717)(773,717)(773,698){1}
wire w24;    //: /sn:0 {0}(1006,270)(1006,260){1}
wire [7:0] w36;    //: /sn:0 {0}(224,-44)(224,-21)(511,-21){1}
//: {2}(515,-21)(778,-21)(778,-10){3}
//: {4}(513,-23)(513,-28)(509,-28)(509,-45){5}
wire [7:0] w1;    //: /sn:0 {0}(758,692)(758,559)(701,559){1}
//: {2}(697,559)(642,559){3}
//: {4}(640,557)(640,371)(744,371)(744,356){5}
//: {6}(744,355)(744,338){7}
//: {8}(744,337)(744,279){9}
//: {10}(744,275)(744,242){11}
//: {12}(742,277)(611,277)(611,263){13}
//: {14}(638,559)(545,559)(545,693){15}
//: {16}(640,561)(640,693){17}
//: {18}(699,561)(699,693){19}
wire w25;    //: /sn:0 {0}(61,-118)(160,-118){1}
//: {2}(164,-118)(197,-118){3}
//: {4}(162,-116)(162,-89)(534,-89){5}
//: {6}(538,-89)(708,-89){7}
//: {8}(712,-89)(721,-89){9}
//: {10}(710,-87)(710,-69)(1127,-69){11}
//: {12}(536,-91)(536,-118)(632,-118){13}
wire [10:0] w65;    //: /sn:0 {0}(908,697)(908,729)(658,729)(658,784){1}
wire [10:0] w35;    //: /sn:0 {0}(1119,665)(1119,741)(667,741)(667,784){1}
wire [3:0] w18;    //: /sn:0 {0}(1017,875)(1017,955)(524,955)(524,802){1}
//: {2}(526,800)(623,800){3}
//: {4}(522,800)(244,800)(244,-44){5}
wire w8;    //: /sn:0 {0}(1282,-91)(1282,238)(1281,238)(1281,567){1}
wire [7:0] w40;    //: /sn:0 /dp:1 {0}(484,693)(484,452){1}
wire w68;    //: /sn:0 /dp:1 {0}(1306,-92)(1306,901)(641,901)(641,881){1}
wire [7:0] w30;    //: /sn:0 {0}(1164,-58)(1164,-51)(1241,-51)(1241,-166){1}
wire [7:0] w17;    //: /sn:0 {0}(369,450)(369,693){1}
wire [10:0] w22;    //: /sn:0 {0}(645,784)(645,711)(714,711)(714,699){1}
wire [7:0] w2;    //: /sn:0 {0}(973,183)(973,147)(670,147){1}
//: {2}(668,145)(668,118){3}
//: {4}(668,117)(668,76){5}
//: {6}(668,72)(668,28){7}
//: {8}(668,24)(668,23)(1070,23){9}
//: {10}(1074,23)(1112,23){11}
//: {12}(1116,23)(1160,23)(1160,106){13}
//: {14}(1114,25)(1114,69){15}
//: {16}(1072,25)(1072,31){17}
//: {18}(670,26)(669,26)(669,-107){19}
//: {20}(666,74)(489,74){21}
//: {22}(485,74)(427,74){23}
//: {24}(423,74)(369,74){25}
//: {26}(365,74)(305,74)(305,431){27}
//: {28}(367,76)(367,429){29}
//: {30}(425,76)(425,431){31}
//: {32}(487,76)(487,431){33}
//: {34}(666,147)(608,147)(608,142){35}
//: {36}(668,149)(668,167)(728,167)(728,213){37}
wire [12:0] w12;    //: /sn:0 {0}(234,-107)(234,-50){1}
wire [7:0] w10;    //: /sn:0 {0}(760,193)(760,213){1}
wire [7:0] w27;    //: /sn:0 {0}(758,-10)(758,-78){1}
wire w52;    //: /sn:0 {0}(778,692)(778,570)(662,570){1}
//: {2}(660,568)(660,545)(650,545)(650,245){3}
//: {4}(652,243)(663,243)(663,243)(665,243){5}
//: {6}(650,241)(650,226)(639,226)(639,213){7}
//: {8}(660,572)(660,693){9}
wire w48;    //: /sn:0 {0}(720,227)(696,227)(696,241)(686,241){1}
wire [7:0] w33;    //: /sn:0 {0}(758,-169)(758,-99){1}
wire [7:0] w29;    //: /sn:0 {0}(1072,52)(1072,660){1}
wire [7:0] w42;    //: /sn:0 {0}(669,-128)(669,-168){1}
wire [12:0] w50;    //: /sn:0 {0}(234,-164)(234,-128){1}
wire [10:0] w26;    //: /sn:0 /dp:1 {0}(560,699)(560,741)(637,741)(637,784){1}
wire w39;    //: /sn:0 {0}(631,881)(631,907)(1332,907)(1332,-92){1}
wire w55;    //: /sn:0 {0}(847,692)(847,682){1}
//: enddecls

  //: joint g8 (w56) @(868, 227) /w:[ -1 5 6 8 ]
  tran g4(.Z(w6), .I(w61[7]));   //: @(756,131) /sn:0 /R:2 /w:[ 0 28 27 ] /ss:1
  //: joint g61 (w58) @(928, 559) /w:[ 1 -1 2 4 ]
  led A0 (.I(w2));   //: @(608,135) /w:[ 35 ] /type:3
  concat g86 (.I0(w29), .I1(w11), .Z(w31));   //: @(1077,665) /sn:0 /R:3 /w:[ 1 9 0 ] /dr:0
  //: joint g51 (w9) @(933, 821) /w:[ 8 10 12 7 ]
  tran g3(.Z(w7), .I(w2[7]));   //: @(666,118) /sn:0 /R:2 /w:[ 0 3 4 ] /ss:1
  //: dip B (w33) @(758,-179) /w:[ 0 ] /st:3
  led g13 (.I(w64));   //: @(640,338) /sn:0 /w:[ 7 ] /type:0
  concat g34 (.I0(w1), .I1(w54), .I2(w5), .I3(w5), .Z(w26));   //: @(560,698) /sn:0 /R:3 /w:[ 15 11 57 13 0 ] /dr:0
  concat g37 (.I0(w1), .I1(w54), .I2(w5), .I3(w5), .Z(w22));   //: @(714,698) /sn:0 /R:3 /w:[ 19 13 63 5 1 ] /dr:0
  led g55 (.I(w30));   //: @(1226,-173) /sn:0 /w:[ 1 ] /type:3
  //: joint g58 (w54) @(837, 468) /w:[ 2 -1 8 1 ]
  //: joint g89 (w5) @(327, 666) /w:[ 38 -1 37 40 ]
  //: joint g112 (w25) @(162, -118) /w:[ 2 -1 1 4 ]
  //: joint g76 (w18) @(524, 800) /w:[ 2 -1 4 1 ]
  //: joint g65 (w2) @(668, 147) /w:[ 1 2 34 36 ]
  v g2 (.X(w7), .Y(w6), .S(w4), .ADDSUB(w56), .V(w54));   //: @(850, 386) /sz:(89, 64) /sn:0 /p:[ Ti0>1 Ti1>1 Ti2>1 Ti3>13 Bo0<5 ]
  lshift g77 (.I(w2), .Z(w29), .S(w60));   //: @(1072,41) /sn:0 /w:[ 17 0 3 ]
  //: supply0 g110 (w28) @(829,-127) /sn:0 /R:2 /w:[ 3 ]
  clock g111 (.Z(w25));   //: @(48,-118) /sn:0 /w:[ 0 ] /omega:100 /phi:0 /duty:50
  //: joint g59 (w59) @(827, 633) /w:[ 2 -1 1 4 ]
  led g1 (.I(w54));   //: @(897,497) /sn:0 /R:2 /w:[ 7 ] /type:0
  //: joint g72 (w5) @(437, 651) /w:[ 23 24 26 48 ]
  //: joint g64 (w5) @(317, 651) /w:[ 33 34 36 42 ]
  //: joint g98 (w5) @(768, 647) /w:[ 1 2 -1 64 ]
  //: joint g99 (w13) @(908, 659) /w:[ 1 2 -1 4 ]
  //: dip A (w42) @(669,-178) /w:[ 1 ] /st:8
  led g11 (.I(w52));   //: @(639,206) /sn:0 /w:[ 7 ] /type:0
  //: joint g16 (w1) @(744, 277) /w:[ -1 10 12 9 ]
  led V (.I(D8));   //: @(1253,-97) /w:[ 1 ] /type:0
  //: joint g96 (w5) @(670, 644) /w:[ 7 -1 8 60 ]
  register g103 (.Q(w12), .D(w50), .EN(w46), .CLR(!w46), .CK(w25));   //: @(234,-118) /sn:0 /w:[ 0 1 0 5 3 ]
  //: joint g10 (w34) @(1205, 645) /w:[ 2 1 -1 4 ]
  concat g87 (.I0(w32), .I1(w11), .Z(w35));   //: @(1119,664) /sn:0 /R:3 /w:[ 0 7 0 ] /dr:0
  //: joint g50 (w9) @(933, 835) /w:[ 4 6 14 3 ]
  //: joint g28 (w2) @(367, 74) /w:[ 25 -1 26 28 ]
  led Z (.I(w8));   //: @(1282,-98) /w:[ 0 ] /type:0
  rshift g78 (.I(w2), .Z(w37), .S(w60));   //: @(1160,116) /sn:0 /w:[ 13 1 9 ]
  mux g19 (.I0(w27), .I1(w36), .S(w19), .Z(w61));   //: @(768,6) /sn:0 /w:[ 0 3 0 0 ] /ss:0 /do:0
  //: joint g27 (w2) @(425, 74) /w:[ 23 -1 24 30 ]
  concat g32 (.I0(w14), .I1(w5), .I2(w5), .I3(w5), .Z(w15));   //: @(442,698) /sn:0 /R:3 /w:[ 1 49 25 51 1 ] /dr:0
  //: joint g113 (w25) @(536, -89) /w:[ 6 12 5 -1 ]
  //: joint g102 (w11) @(1124, 605) /w:[ 4 -1 3 6 ]
  //: joint g38 (w1) @(640, 559) /w:[ 3 4 14 16 ]
  tran g6(.Z(w4), .I(w1[7]));   //: @(742,338) /sn:0 /R:2 /w:[ 0 7 8 ] /ss:1
  xor g69 (.I0(w56), .I1(w48), .Z(w52));   //: @(675,243) /sn:0 /R:2 /w:[ 11 1 5 ]
  //: joint g115 (w25) @(710, -89) /w:[ 8 -1 7 10 ]
  //: joint g75 (w36) @(513, -21) /w:[ 2 4 1 -1 ]
  concat g53 (.I0(w18), .I1(w19), .I2(w36), .Z(w12));   //: @(234,-49) /sn:0 /R:1 /w:[ 5 1 0 1 ] /dr:0
  xor g7 (.I0(w56), .I1(w61), .Z(w10));   //: @(760,183) /sn:0 /R:3 /w:[ 3 29 0 ]
  //: supply0 g9 (w9) @(933,775) /sn:0 /R:2 /w:[ 11 ]
  //: joint g57 (w64) @(679, 356) /w:[ 4 -1 6 3 ]
  led g15 (.I(w1));   //: @(611,256) /sn:0 /w:[ 13 ] /type:3
  or g20 (.I0(w61), .I1(w2), .Z(w14));   //: @(427,442) /sn:0 /R:3 /w:[ 15 31 0 ]
  concat g31 (.I0(w17), .I1(w5), .I2(w5), .I3(w5), .Z(w0));   //: @(384,698) /sn:0 /R:3 /w:[ 1 45 31 47 0 ] /dr:0
  //: joint g71 (w61) @(758, 88) /w:[ 20 19 -1 22 ]
  //: joint g68 (w57) @(955, 818) /w:[ 2 1 -1 4 ]
  concat g39 (.I0(w1), .I1(w5), .I2(w52), .I3(w5), .Z(w23));   //: @(773,697) /sn:0 /R:3 /w:[ 0 65 0 0 1 ] /dr:0
  //: joint g67 (w61) @(758, 105) /w:[ 24 23 -1 26 ]
  //: joint g48 (w57) @(955, 866) /w:[ 6 5 8 10 ]
  //: joint g43 (w56) @(868, 246) /w:[ -1 9 10 12 ]
  concat g88 (.I0(w37), .I1(w11), .Z(w41));   //: @(1165,664) /sn:0 /R:3 /w:[ 0 5 0 ] /dr:0
  and g17 (.I0(w2), .I1(w61), .Z(w40));   //: @(484,442) /sn:0 /R:3 /w:[ 33 17 1 ]
  //: joint g25 (w61) @(372, 69) /w:[ 9 -1 10 12 ]
  mux g29 (.I0(w3), .I1(w0), .I2(w15), .I3(w16), .I4(w26), .I5(w20), .I6(w22), .I7(w23), .I8(w51), .I9(w65), .I10(w31), .I11(w35), .I12(w41), .S(w18), .Z(w43));   //: @(646,800) /sn:0 /w:[ 0 1 0 0 1 0 0 0 1 1 1 1 1 3 1 ] /ss:0 /do:0
  //: supply0 g62 (w5) @(317,592) /sn:0 /R:2 /w:[ 35 ]
  led g73 (.I(w36));   //: @(509,-52) /sn:0 /w:[ 5 ] /type:3
  register g104 (.Q(w2), .D(w42), .EN(w28), .CLR(!w28), .CK(w25));   //: @(669,-118) /sn:0 /w:[ 19 0 9 7 13 ]
  concat g52 (.I0(w58), .I1(w59), .I2(w13), .I3(w13), .I4(w58), .Z(w65));   //: @(908,696) /sn:0 /R:3 /w:[ 3 3 5 0 5 0 ] /dr:0
  //: joint g42 (w54) @(897, 468) /w:[ -1 4 3 6 ]
  Compare g63 (.B(w61), .A(w2), .I(w58), .E(w45), .S(w24));   //: @(941, 184) /sz:(87, 75) /sn:0 /p:[ Ti0>25 Ti1>0 Bo0<0 Bo1<1 Bo2<1 ]
  //: supply0 g106 (w46) @(290,-148) /sn:0 /R:2 /w:[ 3 ]
  //: joint g107 (w28) @(811, -94) /w:[ 2 4 10 1 ]
  //: joint g83 (w60) @(971, 41) /w:[ 2 -1 1 4 ]
  //: supply0 g100 (w11) @(1082,575) /sn:0 /R:2 /w:[ 0 ]
  //: joint g74 (w61) @(758, 69) /w:[ 3 -1 4 18 ]
  //: joint g109 (w46) @(290, -123) /w:[ -1 2 4 1 ]
  tran g14(.Z(w64), .I(w1[7]));   //: @(742,356) /sn:0 /R:2 /w:[ 5 5 6 ] /ss:0
  //: joint g5 (w56) @(868, 140) /w:[ 1 -1 2 4 ]
  //: dip OPCODE (w50) @(234,-174) /w:[ 0 ] /st:6
  //: supply0 g56 (w59) @(797,607) /sn:0 /R:2 /w:[ 0 ]
  //: joint g44 (w54) @(709, 468) /w:[ 9 -1 10 12 ]
  //: supply1 g47 (w57) @(966,778) /sn:0 /w:[ 0 ]
  arshift g79 (.I(w2), .Z(w32), .S(w60));   //: @(1114,79) /sn:0 /w:[ 15 1 7 ]
  //: joint g94 (w5) @(565, 652) /w:[ 12 11 14 56 ]
  //: joint g95 (w5) @(650, 644) /w:[ 9 -1 10 58 ]
  //: joint g80 (w2) @(668, 26) /w:[ -1 8 18 7 ]
  //: joint g117 (w44) @(1220, -74) /w:[ -1 2 1 4 ]
  nor g21 (.I0(w61), .I1(w2), .Z(w17));   //: @(369,440) /sn:0 /R:3 /w:[ 13 29 0 ]
  //: joint g24 (w61) @(430, 69) /w:[ 7 -1 8 14 ]
  //: supply0 g36 (w13) @(908,637) /sn:0 /R:2 /w:[ 3 ]
  //: joint g84 (w60) @(1029, 79) /w:[ 6 -1 5 8 ]
  //: joint g85 (w2) @(1114, 23) /w:[ 12 -1 11 14 ]
  led C (.I(w68));   //: @(1306,-99) /w:[ 0 ] /type:0
  //: joint g92 (w5) @(494, 651) /w:[ 18 17 20 52 ]
  register g105 (.Q(w27), .D(w33), .EN(w28), .CLR(!w28), .CK(w25));   //: @(758,-89) /sn:0 /w:[ 1 1 0 11 9 ]
  //: joint g23 (w61) @(482, 69) /w:[ 5 -1 6 16 ]
  //: joint g41 (w1) @(699, 559) /w:[ 1 -1 2 18 ]
  //: joint g101 (w11) @(1082, 605) /w:[ 2 1 -1 8 ]
  //: joint g60 (w64) @(817, 546) /w:[ 1 -1 2 8 ]
  concat g54 (.I0(w34), .I1(D8), .I2(w68), .I3(w39), .Z(w43));   //: @(646,876) /sn:0 /R:1 /w:[ 5 0 1 0 0 ] /dr:0
  concat g40 (.I0(w64), .I1(w59), .I2(w54), .I3(w55), .I4(w64), .Z(w51));   //: @(837,697) /sn:0 /R:3 /w:[ 9 5 0 0 0 0 ] /dr:0
  tran g81(.Z(w60), .I(w61[2:0]));   //: @(766,41) /sn:0 /R:2 /w:[ 0 2 1 ] /ss:1
  //: joint g93 (w5) @(514, 652) /w:[ 15 16 -1 54 ]
  //: supply0 g116 (w44) @(1220,-112) /sn:0 /R:2 /w:[ 3 ]
  add g0 (.A(w2), .B(w10), .S(w1), .CI(w56), .CO(w48));   //: @(744,229) /sn:0 /w:[ 37 1 11 7 0 ]
  xor g22 (.I0(w61), .I1(w2), .Z(w21));   //: @(307,442) /sn:0 /R:3 /w:[ 11 27 1 ]
  //: joint g26 (w2) @(487, 74) /w:[ 21 -1 22 32 ]
  concat g35 (.I0(w1), .I1(w5), .I2(w52), .I3(w5), .Z(w20));   //: @(655,698) /sn:0 /R:3 /w:[ 17 59 9 61 1 ] /dr:0
  mux g46 (.I0(w9), .I1(w9), .I2(w9), .I3(w9), .I4(w9), .I5(w9), .I6(w57), .I7(w57), .I8(w57), .I9(w57), .S(w18), .Z(w56));   //: @(1017,852) /sn:0 /R:1 /w:[ 13 9 15 5 17 0 9 7 11 3 0 0 ] /ss:0 /do:0
  //: joint g70 (w52) @(650, 243) /w:[ 4 6 -1 3 ]
  //: joint g45 (w52) @(660, 570) /w:[ 1 2 -1 8 ]
  //: joint g90 (w5) @(398, 651) /w:[ 27 -1 28 46 ]
  //: joint g66 (w5) @(379, 651) /w:[ 29 30 32 44 ]
  //: joint g82 (w2) @(1072, 23) /w:[ 10 -1 9 16 ]
  //: joint g97 (w5) @(719, 644) /w:[ 4 3 6 62 ]
  register g114 (.Q(w30), .D(w34), .EN(w44), .CLR(!w44), .CK(w25));   //: @(1164,-69) /sn:0 /w:[ 0 0 5 0 11 ]
  Z g12 (.S(w34), .Z(w8));   //: @(1256, 568) /sz:(50, 68) /sn:0 /p:[ Bi0>3 To0<1 ]
  //: joint g18 (w2) @(668, 74) /w:[ -1 6 20 5 ]
  concat g30 (.I0(w21), .I1(w5), .I2(w5), .I3(w5), .Z(w16));   //: @(322,698) /sn:0 /R:3 /w:[ 0 43 41 39 1 ] /dr:0
  concat g33 (.I0(w40), .I1(w5), .I2(w5), .I3(w5), .Z(w3));   //: @(499,698) /sn:0 /R:3 /w:[ 0 53 19 55 1 ] /dr:0
  led B0 (.I(w61));   //: @(815,76) /w:[ 21 ] /type:3
  //: joint g91 (w5) @(451, 651) /w:[ 21 -1 22 50 ]
  //: joint g108 (w28) @(811, -112) /w:[ -1 6 8 5 ]
  //: joint g49 (w9) @(933, 852) /w:[ 1 2 16 -1 ]
  led N (.I(w39));   //: @(1332,-99) /w:[ 1 ] /type:0

endmodule
