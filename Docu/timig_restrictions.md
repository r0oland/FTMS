# Timing
This paragraph will cover how all the instrument in the setup are triggered by the two Delay generators TRIG1 & TRIG2. It is strongly recommended to use the timing diagram together with this documentation to ensure valid timig values. 

The timing is configured using *[config_TRIG.vi]* or via the standard experiment software by clicking *"Config Timing"*.

## Timing - name conventions & restrictions
**experiment time** 
= number of measurements * meas time
- time for a complete experiment
- might include several measurements 
**meas time**
= averages * meas cycle
- time for measurement of one spectrum (approx. 2GHz freq. range)
- includes several meas cycles
**averages** (symbol N)
- number of times that the time domain signal obtained in one meas cycle is averaged to generate the final spectra
**meas cycle**
= background cycle + molec cycle
= 2 * (molecular delay + burst count * burst period)
...to be continued
