* TLC252C OPERATIONAL AMPLIFIER "MACROMODEL" SUBCIRCUIT
* CREATED USING PARTS RELEASE 4.03 ON 07/25/90 AT 13:51
* REV (N/A)      SUPPLY VOLTAGE: 1.4V
* CONNECTIONS:   NON-INVERTING INPUT
*                | INVERTING INPUT
*                | | POSITIVE POWER SUPPLY
*                | | | NEGATIVE POWER SUPPLY
*                | | | | OUTPUT
*                | | | | |
.SUBCKT TLC252C  1 2 3 4 5
*
  C1   11 12 5.774E-12
  C2    6  7 20.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB 7 99 POLY(5) VB VC VE VLP VLN 0 4.655E6 -6E6 6E6 6E6 -6E6
  GA    6  0 11 12 6.321E-6
  GCM 0  6 10 99 185.6E-11
  ISS   3 10 DC 200.0E-9
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1 60 11 158.2E3
  RD2 60 12 158.2E3
  RO1   8  5 75
  RO2   7 99 175
  RP    3  4 9.333E3
  RSS  10 99 1.000E9
  VAD  60 4 -.4
  VB    9  0 DC 0
  VC 3 53 DC 1.2
  VE   54  4 DC .495
  VLIM  7  8 DC 0
  VLP  91  0 DC 15
  VLN   0 92 DC 15
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=500.0E-15 BETA=399.5E-6 VTO=-.009)
.ENDS
