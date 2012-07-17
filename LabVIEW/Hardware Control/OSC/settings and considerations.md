#TDS6124C Digital Storage Oscilloscopes
#Settings and Considerations

Source: User Manual TDS6000B & TDS6000C Series, Digital Storage Oscilloscopes, 071-1658-02 and 
Commands and descriptions: TDS6000B and TDS6000C Series Online Programmer Guide

## Specifications
full under:
http://www.tek.com/datasheet/digital-storage-oscilloscope-0
Timebase Range: 
	- 25 ps to 40 s/div
	- Interpolation down to 500 fs/pt
Max Sample Rate: 
	- 40 GS/s on 2 channels
Equivalent Time Sample Rate (max):
	- 2 TS/s
Maximum Record Length per Channel:
	- 64 M on two channels
	- 4 M on two channels standard
Maximum Time Duration Captured at Highest Real-time Resolution: 
	- 100 μs
WAVEFORM PROCESSING/MATH:
	- Frequency Domain Functions - Spectral magnitude and phase, real and imaginary spectra
GPIB Port - IEEE 488.2 standard
LAN Port - RJ-45 connector, supports 10BaseT, 100BaseT, and 1000BaseT

##Acquiring Waveforms
Acquired waveform data uses eight or more bits to represent each data point. The number of bits used depends on the acquisition mode specified when you acquired the data. Data acquired in SAMple or ENVelope mode uses eight bits per waveform data point. Data acquired in AVERage mode uses up to 14 bits per point. 

###Time Bases
- recording time used: 20us (2us/div, 10div)
	-equals 50 kHz resolution
- sampling rate used: 500-250 ps/point
- resulting point number: 40k - 80k

	####Horizontal Acquisition Window Considerations
The instrument lets you define the horizontal acquisition window, that is, set several parameters that determine the segment of an incoming signal that becomes the waveform record when acquired.

####GPIB Interfacing
You can set the time per division (or time per point) of the main time base.
Commands:
	- HORizontal:SCAle <NR3>
		- sets or queries the time per division for the time base
		- <NR3> is the time per division. The range is from 200 ps to 40 s
		- e.g. HORizontal:SCAle 2E-6 sets the main scale to 2 ms per division
	- HORizontal:MAIn:SAMPLERate <NR3>
		- sets the horizontal sample rate to the desired number of samples per second
		- 
	- HORizontal:RECOrdlength <NR1>
		- sets the horizontal record length to the number of data points in each frame
		- <NR1> represents the supported values for horizontal record lengths, which ranges from 500 through the maximum record length
		- e.g. HORizontal:RECOrdlength 50000 specifies that 50000 data points will be acquired for each record

###Using Fast Frame
FastFrame, also known as memory segmentation, lets users capture a series of triggered acquisitions with minimal time between them. Horizontal Fastframe (also known as memory segmentation) commands are designed for situations where you want to capture a series of triggered acquisitions with minimal dead time between them. 
Notes:
- lets you capture multiple acquisitions in the acquisition memory of a single channel
- FastFrame is not compatible with:
	- equivalent Time
	- Average
	- Waveform Database
- introduces additional processing time into the operation cycle of acquire, process, and display
	- it is best to use **Single Sequence Acquisition**
- reduces the time required before the trigger is rearmed, while preserving the individual subrecords
- can't find function for that in LabVIEW libary -> add manually
Commands:
	- HORizontal:FASTframe:STATE {ON|OFF|<NR1>}
		- sets or returns the state of FastFrame acquisition.

##Triggering
The trigger event establishes the time-zero point in the waveform record. All points in the record are located in time with respect to that point.
- **Trigger settings**:
	- Edge 
		- simplest and most commonly used trigger type
		- trigger event occurs when the trigger source (CH2) passes through a specified voltage level (1.4V)
		- see Slope and Level 
	- normal trigger mode
		- enables the instrument to acquire a waveform only when it is triggered
	- no holdoff time
	- horizontal delay is off
	- trigger on positive slope
		- otherwise OSC triggers much to late to capture signals comming from molecules
		- level control determines where on that edge the trigger point occurs
	- trigger with the A (Main) trigger system alone
- Once a trigger is recognized, the instrument will not accept another trigger until the acquisition is complete and the holdoff time has expired


## transfer waveform data from the oscilloscope
Transferring Waveform Data from the Oscilloscope  You can transfer waveforms from the oscilloscope to an external controller using the following sequence:  
1.	Select the waveform source(s) using DATa:SOUrce  
2.	Specify the waveform data format using DATa:ENCdg 
3.	Specify the number of bytes per data point using WFMOutpre:BYT_Nr. When MATH is involved, 32 bit floating point values are used that are four bytes in width. 
4.	Specify the portion of the waveform that you want to transfer using DATa:STARt and DATa:STOP  
5.	Transfer waveform preamble information using WFMOutpre?
6.	Transfer waveform data from the oscilloscope using CURVe?  
**commands**:
	- CURve?
		- Transfers waveform data from instrument specified by the DATa:SOUrce command
	- DATa:SOUrce CH1, MATH1
		- This command specifies that two waveforms will be transferred in the next CURVe? query. 

##Spectral Math in OSC
Probably not possible to transfer obtained waveforms, hence not really useful
- Spectral Averaging:
	- You can turn on averaging in the frequency domain
	for phase and magnitude waveforms 
- GPIB commands:
	- MATH<x>:SPECTral? 
		- returns the current spectral setups for the specified math waveform
