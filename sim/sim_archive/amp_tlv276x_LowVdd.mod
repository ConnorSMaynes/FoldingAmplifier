* TLV276x 1.8 V operational amplifier "macromodel" subcircuit
* updated using Model Editor release 9.1 on 05/15/00 at 09:17
* Model Editor is an OrCAD product.
*
* connections:             non-inverting input
*                          | inverting input
*                          | | positive power supply
*                          | | | negative power supply
*                          | | | | output
*                          | | | | |
.subckt amp_tlv276x_LowVdd 1 2 3 4 5
*
  c1   11 12 514.54E-15
  c2    6  7 5.0000E-12
  css  10 99 1.9136E-12
  dc    5 53 dy
  de   54  5 dy
  dlp  90 91 dx
  dln  92 90 dx
  dp    4  3 dx
  egnd 99  0 poly(2) (3,0) (4,0) 0 .5 .5
  fb    7 99 poly(5) vb vc ve vlp vln 0 61.456E6 -1E3 1E3 61E6 -61E6
  ga    6  0 11 12 16.272E-6
  gcm   0  6 10 99 11.001E-9
  iss  10  4 dc 1.1200E-6
  hlim 90  0 vlim 1K
  j1   11  2 10 jx1
  j2   12  1 10 jx2
  r2    6  9 100.00E3
  rd1   3 11 61.456E3
  rd2   3 12 61.456E3
  ro1   8  5 10
  ro2   7 99 10
  rp    3  4 118.42E3
  rss  10 99 178.57E6
  vb    9  0 dc 0
  vc    3 53 dc .76962
  ve   54  4 dc .76962
  vlim  7  8 dc 0
  vlp  91  0 dc 6.7000
  vln   0 92 dc 6.7000
.model dx D(Is=800.00E-18)
.model dy D(Is=800.00E-18 Rs=1m Cjo=10p)
.model jx1 NJF(Is=500.00E-15 Beta=236.41E-6 Vto=-1)
.model jx2 NJF(Is=500.00E-15 Beta=236.41E-6 Vto=-1)
.ends