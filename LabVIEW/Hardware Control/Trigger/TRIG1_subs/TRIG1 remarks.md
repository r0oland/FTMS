#TRIG Remarks
#SRS DG535

##Default settings after calling init_TRIG1.vi
- delay 
  - referenced to t0
  - set to 0
- output AB & CD
  - TTL levels
  - impedance 50Ohm
  - no inversion (TRIG1 has both inverted and noninverted outputs, so one can choose the polarity by taking the other output)
- trigger mode
  - SS = single shot
  - can be triggered via GPIB command SS
