#FTMS 
##Fourier Transfrom Microwave Spectroscopy Measurement and Control Suite 
##Hardware 

**Contributors**: Johannes Rebling

**Tags:** FTMS, LabVIEW, Fourier Transfrom, Microwave Spectroscopy 

**Requirements Software:** LabVIEW 2011 or newer

**Requirements Hardware:** OSC, Trigger, Signal Generator, AWG, GPIB interface,...

This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
To view a copy of this license, visit:
http://creativecommons.org/licenses/by-nc-sa/3.0/ 


This LabVIEW program provides all necessary software tools to control and measure microwave spectra using a fourier transform microwave setup as described below. 

! ## Installation
###LabVIEW Driver and Libaries
To use this software suite just install the provided LBB file or download the following device drivers:
* OSC driver
	link
* Trigger driver
	link
* PSG driver
	link

# Trigger Setup
# Application notes on Stanford Research System 
# DG535 & DG645 Digital Delay Generator 
source: http://www.thinksrs.com/products/DG645.htm

## TRIG1 - specific informations
Model: SRS DG535

##Default settings after calling init_TRIG1.vi
- delay 
  - referenced to t0
  - set to 0
- output AB & CD
  - TTL levels
  - impedance 50 Ohm
  - no inversion (TRIG1 has both inverted and noninverted outputs, so one can choose the polarity by taking the other output)
- trigger mode
  - SS = single shot
  - can be triggered via GPIB command SS

## Setting delays for TRIG1
**- Output AB (nozzle pulse):**
  - The nozzle pulse defines the start of one measurement with n bursts, both for the background and the experiment scan
  - delay A referenced to T0
  - delay A is always 0
  - delay B is referenced to A
  - delay B always equals 5us (nozzle controlled by rising edge, not by duration)
**- Output CD (TRIG2 pulse)**
  - starts n burstes after the molecular delay time passed by triggering TRIG2 which then triggers the AMP, AWG, SWITCH and OSC n times and with a delay equal to the burst period
  - delay C referenced to T0
  - delay C sets the molecular delay time 
  - delay D referenced to C
  - delay D always equals 5us (TRIG2 controlled by rising edge, not by duration)

## TRIG2 - specific informations
There are five front-panel outputs: T0, AB, CD, EF and GH. The T0 output is asserted for the duration of the timing cycle. The leading edge of T0 is the zero time reference. The programmed delays (A, B, C, D, E, F, G and H) are set from 0 s to 2000 s, with 5 ps resolution, to control the timing of the leading and trailing edges of the four pulse outputs.

Each front-panel output can drive a 50 Ω load and has a 50 Ω source impedance. Output amplitudes can be set from 0.5 to 5.0V, and output offsets can range over ±2 VDC to source virtually any logic level (NIM, ECL, PECL, CMOS, etc.). Output transition times are less than 2 ns at any output amplitude.

### Delay Index
- 0 - T0 = nozzle start (TTL) = 0
- 1 - T = overall duration + 25ns (can't be changed)
- 2 - A = power AMP START
- 3 - B = power AMP STOP
- 4 - C = AWG START (TTL)
- 5 - D = AWG STOP (NA)
- 6 - E = SWITCH ON 
- 7 - F = SWITCH OFF
- 8 - G = OSC START (TTL)
- 9 - H = OSC STOP (NA)
notes:
- for signals marked as (TTL), only the rising flank of the signal is of interest, since it is used as a trigger (valid for AWG, OSC and the nozzle)
- hence the duration has no meaning, however, the duration should not be to short (not shorter than 100ns) to give the instrument enough time to actually recognize the trigger signal 

### Output Polarity
The power amp polarity MUST be 1, otherwise it will be ON all the time which will DESTROY the setup! The power amp TTL input is active LOW, hence the trigger signal from the delay generator must be inverted. This is done by a polarity of 0, which means the polarity is negative. See chapter "Levels" in the DG645 manual for mor info on polarity.

### Burst Mode
In order to optimize the SNR of the experiment one can measure more than one waveform for a single nozzle pulse. The amount of measurements per pulse has to be tested for a given preasure and chemical by you!

### Communication to TRIG2
! via GPIB Bus, Address 7

### VISA Commands for TRIG2
- TSRC(?){i} **Trigger Source** 
  - Set (query) the trigger source {to i}.
- DLAY(?)c{,d,t} **Delay**
  - Set (query) the delay for channel c {to t relative to channel d}
- LAMP(?)b{,v} **Level Amplitude**
  - Set (query) the amplitude for output b {to v}.
- LPOL(?)b{,i} **Level Polarity** 
  - Set (query) the polarity for output b {to i}. If i is 1, the polarity is positive. If i is 0, the polarity is negative.
- BURC(?){i} **Burst Count**
   - Set (query) the burst count {to i}. When burst mode is enabled, the DG645 outputs burst count delay cycles per trigger.
- BURP(?){t} **Burst Period**
  - Set (query) the burst period {to t}. The burst period sets the time between delay cycles during a burst. The burst period may range from 100 ns to 2000 – 10 ns in 10 ns steps.
- BURM(?){i} **Burst Mode**
  - Set (query) the burst mode {to i}. If i is 0, burst mode is disabled. If i is 1, burst mode is enabled.
- BURT(?){i} **Burst T0 Configuration**
  - Set (query) the burst T0 configuration {to i}. If i is 0, the T0 output is enabled for all delay cycles of the burst. If i is 1, the T0 output is enabled for first delay cycle of the burst only.
