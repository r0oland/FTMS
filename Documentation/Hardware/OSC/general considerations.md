#Acquiring Waveforms
##Using Fast Frame
FastFrame, also known as memory segmentation, lets users capture a series of triggered acquisitions with minimal time between them.
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
	- can be activated through LabVIEW:
		- HORizontal:FASTframe:STATE {ON|OFF|<NR1>}

#Triggering
The trigger event establishes the time-zero point in the waveform record. All points in the record are located in time with respect to that point.
- **Trigger settings**:
	- Edge 
		- simplest and most commonly used trigger type
		- trigger event occurs when the trigger source (CH2) passes through a specified voltage level (4.0V)
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
