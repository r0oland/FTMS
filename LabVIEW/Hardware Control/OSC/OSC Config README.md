# TDS6124C Digital Storage Oscilloscopes
# Settings and Considerations

Source: User Manual TDS6000B & TDS6000C Series, Digital Storage Oscilloscopes, 071-1658-02 and 
Commands and descriptions: TDS6000B and TDS6000C Series Online Programmer Guide

-------------------------------------------------------------------------
# Specifications
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

-------------------------------------------------------------------------
# Acquiring Waveforms
Acquired waveform data uses eight or more bits to represent each data point. The number of bits used depends on the acquisition mode specified when you acquired the data. Data acquired in SAMple or ENVelope mode uses eight bits per waveform data point. Data acquired in AVERage mode uses up to 14 bits per point. 

## Synchronization Methods
Although most GPIB commands are completed almost immediately after being received by the oscilloscope, some commands start a process that requires more time. For example, once a single sequence acquisition command is executed, it may be a few seconds before the acquisition is complete. Rather than remain idle while the operation is in process, the oscilloscope will continue processing other commands.

Sometimes the result of an operation depends on the result of an earlier operation. A first operation must complete before the next one gets processed. The oscilloscope status and event reporting system provides ways to do this.

You can use four commands to synchronize the operation of the oscilloscope with your application program: *WAI, BUSY?, *OPC, and *OPC?
- *WAI:
  - forces completion of the previous commands that generate an OPC message before processing new ones
  - *WAI is one of the easiest ways to achieve synchronization, it is also the most costly one. The processing time of the oscilloscope is slowed since it is processing a single command at a time. This time could be spent doing other tasks
  - The controller can continue to write commands to the input buffer of the oscilloscope, but the commands will not be processed by the oscilloscope until all (OPC related) operations in process are complete. If the input buffer becomes full, the controller will be unable to write more commands to the buffer. This can cause a time-out
- BUSY? 
  - If 0 is returned, the oscilloscope is not busy processing a command whose execution time is extensive
  - If 1 is returned, the oscilloscope is busy processing 
  - This command lets you create your own wait loop rather than using the *WAI command. The BUSY? query helps you avoid time-outs caused by writing too many commands to the input buffer
  - The controller is still tied up, though, and **the repeated BUSY? query will result in more bus traffic**.
  
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

## Acquisition Timing
Fastest repeated trigger interval for various record lengths (waveform time always 40us), triggered by PC, no waveform data saved:
	- 800k points = 130us
	- 400k points = 70us
	- 200k points = 40us
	- 100k points = 30us

Timing for reading waveform data from OSC on PC for various record lengths (waveform time always 40us), no triggering, no further processing of waveform data:
	- 800k points = 
	- 400k points = 1963ms
	- 200k points = 1783ms
	- 100k points = 1700ms

### GPIB commands
- ACQuire:NUMACq? 
  - returns the number of waveform acquisitions that have occurred since starting acquisition
  - In FastFrame mode, the oscilloscope updates the acquisition count in groups of counts
  - is only reset when acq. mode is change (timebase, etc) or instrument is reset
    - measure difference rather then absolute value!
- *STB?
  - returns the contents of the Status Byte Register (SBR) using the Master Summary Status (MSS) bit
  - The Status Byte Register (SBR) records whether output is available in the Output Queue, whether the oscilloscope requests service, and whether the SESR has recorded any events 

## Time Bases
- recording time used: 20us (2us/div, 10div)
	-equals 50 kHz resolution
- sampling rate used: 500-250 ps/point
- resulting point number: 40k - 80k

## Horizontal Acquisition Window Considerations
The instrument lets you define the horizontal acquisition window, that is, set several parameters that determine the segment of an incoming signal that becomes the waveform record when acquired.

### GPIB commands
- HORizontal:SCAle <NR3>
  - sets or queries the time per division for the time base
  - <NR3> is the time per division. The range is from 200 ps to 40 s
  - e.g. HORizontal:SCAle 2E-6 sets the main scale to 2 ms per division
- HORizontal:MAIn:SAMPLERate <NR3>
  - sets the horizontal sample rate to the desired number of samples per second 
- HORizontal:RECOrdlength <NR1>
  - sets the horizontal record length to the number of data points in each frame
  - <NR1> represents the supported values for horizontal record lengths, which ranges from 500 through the maximum record length
  - e.g. HORizontal:RECOrdlength 50000 specifies that 50000 data points will be acquired for each record

## Using Fast Frame
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

## Triggering
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

-------------------------------------------------------------------------
# Status and Events
**Source:**
* http://radio.feld.cvut.cz/matlab/toolbox/instrument/ch_gpib4.html
* TDS6000B and TDS6000C Series Online Programmer Guide

The oscilloscope provides a status and event reporting system for the GPIB interfaces. This system informs you of certain significant events that occur within the oscilloscope.

The oscilloscope status handling system consists of five 8-bit registers and two queues for each interface. The remaining Status subtopics describe these registers and components. They also explain how the event handling system operates.

## Internal Registers
The registers in the event handling system fall into two functional groups:

* *Status Registers* contain information about the status of the oscilloscope. They include the *Standard Event Status Register* (SESR) and the *Status Byte Register* (SBR).
* *Enable Registers* determine whether selected types of events are reported to the Status Registers and the Event Queue. They include the Device Event Status Enable Register (DESER), the Event Status Enable Register (ESER), and the Service Request Enable Register (SRER).

## Status Registers 
Status Registers contain information about the status of the oscilloscope. 
- They include:
  - Standard Event Status Register (SESR) 
  - Status Byte Register (SBR)
- Each bit in a Status Register records a particular type of event, such as an execution error or message available
- When an event of a given type occurs, the oscilloscope sets the bit that represents that type of event to a value of one. 
- You can disable bits so that they ignore events and remain at zero (See Enable Registers)
- Reading the status registers tells you what types of events have occurred

### (SESR) Standard Event Status Register 
* use the *ESR? query to read the SESR register
* **Reading the register clears the bits of the register** so that the register can accumulate information about new events

**SESR Bits: (number, label, descriptiom)**
* 0, OPC, The Operation Complete bit indicates that all commands have completed.
* 1, RQC, Not used.
* 2, QYE, Query Error bit indicates attempt to read an empty output buffer, or that data in the output buffer was lost.
* 3, DDE, Device Dependent Error bit indicates a device error.
* 4, EXE, Execution Error bit indicates that an error occurred when the device was executing a command or query.
* 5, CME, Command Error bit indicates a command syntax error.
* 6, URQ, User Request bit indicates several events, including some front panel actions
* 7, PON, Power On bit indicates that the device is powered on.

### (SBR) Status Byte Register
* Records whether output is available in the Output Queue, whether the oscilloscope requests service, and whether the SESR has recorded any events
* Use *STB? query to read the contents of the SBR
* bits in the SBR are set and cleared depending on the contents of the SESR, the Event Status Enable Register (ESER), and the Output Queue 
* when you use the *STB? query to obtain the SBR, bit 6 is the MSS bit
* **Reading the SBR does not clear the bits**

**SBR Bits: (number, label, descriptiom)**
* 0-3 & 7 are not used
* 4, MAV, Message Available bit 
    - indicates if data is available in the Output Queue
    - MAV is 1 if the Output Queue contains data
    - MAV is 0 if the Output Queue is empty
* 5, ESB, Event Status Bit 
    - indicates if one or more enabled events have occurred in the SESR
    - You enable events with the Standard Event Status Enable Register
* 6, MSS, Master Summary Status summarizes the ESB and MAV bits
    - MSS is 1 if either MAV or ESB is 1
    - MSS is 0 if both MAV and ESB are 0

## Enable Registers
* includes 
    - Device Event Status Enable Register (DESER)
    - Event Status Enable Register (ESER)
    - Service Request Enable Register (SRER)
* each Enable Register acts as a filter to a Status Register (the DESER also acts as a filter to the Event Queue) and can prevent information from being recorded in the register or queue
* each bit in an Enable Register corresponds to a bit in the Status   Register it controls
**In order for an event to be reported to a bit in the Status Register, the corresponding bit in the Enable Register must be set to one.** 
* If the bit in the Enable Register is set to zero, the event is not recorded

### (DESER) Device Event Status Enable Register 
- this register controls which types of events are reported to the SESR and the Event Queue
- The bits in the **DESER** correspond to those in the **SESR** (see SESR for description of individual bits)
- Use the DESE command to enable and disable the bits in the DESER
- Use the DESE? query to read the DESER

### (ESER) Event Status Enable Register 
- controls which types of events are summarized by the **Event Status Bit (ESB)** in the **SBR**
- Use the *ESE command to set the bits in the ESER
- Use the *ESE? query to read it

### (SRER) Service Request Enable Register
- controls which bits in the **SBR** generate a Service Request and are summarized by the **Master Status Summary (MSS)** bit
- Use the *SRE command to set the SRER
- Use the *SRE? query to read the register
The RQS bit remains set to one until either the **Status Byte Register** is read with a Serial Poll or the **MSS** bit changes back to a zero.

### default register settings:
DESER = 255 = 11111111
ESE 61 = 111101
SRE 48 = 110000
