#Trigger
- change delay array to us!!!
- save setting in delay array in .txt after closing of program, read from that file and compare to array save in delay generator
	
- get correct values for necessary timing (eg. min duration between Power AMP on & AWG on)
	- maybe add more cases that are very important in the check_and_correct_input.vi 
- use Burst mode for multiple measurements with one nozzle spray
	- not neccesarly, just triple trigger


#Power Amp
- active low -> change trigger settings accordingly

#OSC
- scan background with every measurement (before nozzle is activated

#FTMS General
- trigger from labview
	- change trigger speed via LabVIEW
	- turn on only if everything is working
- add Background scan option (i.e. turn off nozzle but leave everything else switch on)
- add nozzle purge option (all off but nozzle)
