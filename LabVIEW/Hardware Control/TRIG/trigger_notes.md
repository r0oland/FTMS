# TRIG
## Application notes on Stanford Research System 
## DG645 Digital Delay Generator 
source: http://www.thinksrs.com/products/DG645.htm

## General Info
There are five front-panel outputs: T0, AB, CD, EF and GH. The T0 output is asserted for the duration of the timing cycle. The leading edge of T0 is the zero time reference. The programmed delays (A, B, C, D, E, F, G and H) are set from 0 s to 2000 s, with 5 ps resolution, to control the timing of the leading and trailing edges of the four pulse outputs.

Each front-panel output can drive a 50 Ω load and has a 50 Ω source impedance. Output amplitudes can be set from 0.5 to 5.0V, and output offsets can range over ±2 VDC to source virtually any logic level (NIM, ECL, PECL, CMOS, etc.). Output transition times are less than 2 ns at any output amplitude.

## Chirp Setup Specific Info
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
- hence the duration has no meaning, however, the duration should not be to short to give the instrument enough time to actually recognize the trigger signal (good value???)

### Output Polarity
The power amp polarity MUST be 1, otherwise it will be ON all the time which will DESTROY the setup! The power amp TTL input is active LOW, hence the trigger signal from the delay generator must be inverted. This is done by a polarity of 0, which means the polarity is negative. See chapter "Levels" in the DG645 manual for mor info on polarity.

### Burst Mode
In order to optimize the SNR of the experiment one can measure more than one waveform for a single nozzle pulse. The amount of measurements per pulse has to be tested for a given preasure and chemical by you!

### Restrictions 
In order to measure something and not to destroy the delicate amplifiers, the following restrictions must be met when setting up the delay times and durations:
- T0 is always zero, you can't change that...
- T has no influence on the actual duration the nozzle is open, since the nozzle time is controlled by the nozzle controller and must be set manually
- the AWG trigger must start after the power amp is activated, otherwise the AWG signal will not be send to the chamber since the power amp is still switch off
- the power amp must be switched on for the full duration of the AWG signal (check waveform length using the *"ArbExpress Application"*, approx. 4us) 
  - C = AWG START > A = power AMP START
- the SWITCH must NOT be switched on before the power amp is switched off 
  - E = SWITCH ON > B = power AMP STOP
- OSC must be activated with or shortly after SWITCH is turned on to measure the complete and exp. decaying waveform 

## Notes to LabVIEW Software 
- the timing info stored in the TRIG is read and display during the startup of *"config_TRIG.vi"*
- when the timing data is written to the trigger (via the "write" button), it is checked for gross violation of the timing info (see valid timing data), corrected and then send to the trigger. It is then immediately read from the trigger and displayed to ensure a correct write process
- the data displayed in *"delay data in delay generator"* is displayed in seconds and if necessary with a correspondig suffix (m-milli,u-micro,...) 
- the *"display resolution"* sets the number of points displayed in the graph and has NO INFLUENCE on the resolution of the trigger itself

### valid data entry
- all start times are referenced to T0 = start of the nozzle pulse
- all durations are referenced to their correspondig start time (otherwise it wouldn't be a duration...)
- you're entered values for start time and duration have to match the restrictions (see **Restrictions** section above)

### internal data handling
- the data that is send to and read from the trigger is in seconds
- internal data handling is also done in seconds 
- the displayed time unit can be chosen freely, it is then converted to seconds internally and send to the trigger

### timing graph
The timing graph does not show the actual TTL signal for all signals. For signals with negative polarity it shows the inverse of the signal, that is it shows when the signal is "active".

## Communication to Device
via GPIB Bus, Address 7

### VISA Commands
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
