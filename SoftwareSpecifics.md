# FTMS 
## Fourier Transfrom Microwave Spectroscopy Measurement and Control Suite 
## Software Specifics

**Contributors**: Johannes Rebling

**Tags:** FTMS, LabVIEW, Fourier Transfrom, Microwave Spectroscopy 

**Requirements Software:** LabVIEW 2011 or newer

**Requirements Hardware:** OSC, Trigger, Signal Generator, AWG, GPIB interface,...

**License:** Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License

**License URL:** http://creativecommons.org/licenses/by-nc-sa/3.0/

This documents describes all software tools that are used to control and measure microwave spectra using a fourier transform microwave setup as described below. 

------------------------------------------------------------------------------------
# Installation
!
##LabVIEW Driver and Libraries
To use this software suite just install the provided LBB file or download the following device drivers:
* OSC driver
	link
* Trigger driver
	link
* PSG driver
	link

------------------------------------------------------------------------------------
# Notes to LabVIEW Software 
!
- the timing info stored in the TRIG is read and display during the startup of *"config_TRIG.vi"*
- when the timing data is written to the trigger (via the "write" button), it is checked for gross violation of the timing info (see valid timing data), corrected and then send to the trigger. It is then immediately read from the trigger and displayed to ensure a correct write process
- the data displayed in *"delay data in delay generator"* is displayed in seconds and if necessary with a corresponding suffix (m-milli,u-micro,...) 
- the *"display resolution"* sets the number of points displayed in the graph and has NO INFLUENCE on the resolution of the trigger itself

------------------------------------------------------------------------------------
# Config Timing
This paragraph will cover how all the instrument in the setup are triggered by the two Delay generators TRIG1 & TRIG2. It is strongly recommended to use the timing diagram together with this documentation to ensure valid timing values. 

The timing is configured using *[config_TRIG.vi]* or in the *Chirp FTMS* software main window by clicking *"Config Timing"*.

## Usage
!... initial values loaded from config file specified in the *Chirp FTMS* software 

### time unit
- the data that is send to and read from the trigger in seconds
- internal data handling is also done in seconds for all sub VIs 
- the displayed time unit can be chosen freely
- the entered time data (start time, duration, burst period, molecular delay) is converted to seconds internally and send to the triggers
- all data stored in global variables and the config files is also in second 

### timing diagram
!
The timing diagram does not show the actual TTL signal for all signals. For signals with negative polarity it shows the inverse of the signal, that is it shows when the signal is "active".

## Name Conventions & Dependencies
**N - averages**
number of times that the time domain signal obtained in one meas cycle is averaged to generate the final spectra
**n - burst count**
number of times that the time domain signal is measured and average DURING both the background cycle and the molecular cycle

**experiment time** 
duration = number of measurements * meas time

- time for a complete experiment
- might include several measurements 

**meas time** 
duration = N * meas cycle

- time for measurement of one spectrum (approx. 2GHz freq. range)
- includes several *meas cycles*

**meas cycle**
duration = background cycle + molec cycle
duration = 2 * (molecular delay + n * burst period)

- includes both a *background cycle* with no molecular pulse and a *molecular cycle* with a molecular pulse
- the averaged background signal is subtracted from the averaged molecular signal and gives the time domain signal for one meas cycle
- measures one spectra using one molecular pulse and is averaged over n *bursts* (applied to that one molecular pulse) and corrected by a background signal measured during the background cycle

**molecular cycle**
duration = molecular delay + n * burst period

- starts with a nozzle pulse that releases the sample into the chamber
- after the *molecular delay*, n *bursts* are measured with equal lengths of *burst period*

**background cycle**
duration = molecular delay + n * burst period

- exactly equals the molecular cycle, only there is NO a nozzle pulse, hence there is no sample in the chamber
- after the *molecular delay*, n *bursts* are measured with equal lengths of *burst period*

**burst period**

- sets the time between *delay cycles* during a burst
- one burst is the smallest unit that actually yields a time domain signal, with length *burst time* 
- the burst period is at least as long as one delay cycle, but might be setup to be longer
- the burst period is determined by the *delay cycle* and is a experimental specific timing value itself (see below)

**delay cycle**

- consists of the following steps:
  - activate AMP
  - trigger AWG signal
  - AWG signal is amplified and propagates into the probe chamber
  - deactivate AMP 
  - activate SWITCH
  - trigger OSC
  - time domain signal is measured 
  - deactivate SWITCH
- the signals within the *delay cycle* are defined by a individual start time (relative to the burst start) and an individual duration relative to the corresponding start times
- the length of the delay cycle is determined by the experimental specific timing values that it consists of (see below)

## Sample and Experimental Specific Timing Values & Restrictions
The timing values of a single burst depend on the sample that is used as well as other experimental conditions (pressure, temperatures,...) and should be determined experimentally before starting a full spectral measurement.
The burst timing values within are controlled by TRIG2 and can be configured by the *Config Timing* VI. Please refer to the timing diagram for a graphical display of the complex timing process. 

The experimental specific timing values include:
* molecular delay (A1 to B1 & C1 to D1) 
    - time between the nozzle trigger and the start of n-burst periods
    - this time is needed to allow the nozzle driver to actually open the nozzle, let the sample flush into the chamber and expand there so it can then be radiated by the MW chirp
* burst period
    - the burst period may range from 100 ns to 2000 – 10 ns in 10 ns steps (hardware limits) 
    - while the minimum burst period is restricted by the *delay cycle*, its maximum is limited by the experimental settings
    - you want to measure as many burst in one meas cycle as possible, since this will significantly improve your signal to noise ratio and will allow for faster measurements with/or a high resolution
    - hence you want to make the burst period as short as possible, however, it must be 
* delay cycle
    - the length of the delay cycle equals the end of the longest delay generated by TRIG2 (e.g. the end of the SWITCH pulse, F2) plus 25ns!

## Delay Cycle Durations and Start Times

- AMP start (A2) and duration (A2 to B2)  
    * activates the power amplifier for a specific duration
    * hast to be activated first, hence A2 is usually equal to 0
    * duration depends on the chirped pulse length created by the AWG, which depends on the experiment
- AWG start (C2) and duration (C2 to D2):
    * triggers the chirped pulse generated by the AWG
    * AWG is activated via a rising edge, hence the duration is not that important
    * the AMP must be switched on before the AWG, otherwise the chirp signal will not be send to the chamber since the power amp is still switch off
    * the power amp must be activated for the full duration of the AWG signal (check waveform length using the *"ArbExpress Application"*, approx. 4us)   
- SWITCH start (E2) and duration (E2 to F2):
    * activates the protective switch after the probe chamber
    * this switch protects the subsequent high gain MW amplifiers (which amplify the frequency signal radiated by the sample molecules), since they would be destroyed by the high power MW signal created by the AMP 
    * the AMP must be deactivated before the SWITCH can be activated
    * the switch must be activated long enough to allow the frequency signal to be measured by the OSC
- OSC start (G2) and duration (G2 to H2):
    * triggers a measurement of the OSC
    * triggered on the rising edge, hence the duration is not that important
    * the waveform length in the OSC must be set high enough to measure the complete   frequency signal
    * must  be set equal or less than the SWITCH duration, otherwise you don't measure anything anyways...

**Restrictions summarized:**

- C2(AWG trigger) >= A2(AMP start)
- B2(AMP stop) > Chirp Pulse in AWG
- E2(SWITCH start) > B2(AMP stop)
- OSC waveform length = SWITCH duration
- G2(OSC trigger) <= B2(SWITCH start)
- burst period >= delay cycle, as short as possible
