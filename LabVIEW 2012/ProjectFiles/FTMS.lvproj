<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="12008004">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="FTMS.vi" Type="VI" URL="../../FTMS.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Beep.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/Beep.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check for Equality.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Check for Equality.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
				<Item Name="compatWriteText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatWriteText.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="DTbl Boolean Array to Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Boolean Array to Digital.vi"/>
				<Item Name="DTbl Compress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Compress Digital.vi"/>
				<Item Name="DTbl Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Digital Size.vi"/>
				<Item Name="DWDT Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Digital Size.vi"/>
				<Item Name="DWDT Get Waveform Time Array.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Get Waveform Time Array.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Escape Characters for HTTP.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Escape Characters for HTTP.vi"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get Waveform Time Array.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Get Waveform Time Array.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="NI_MAPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MAPro.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Number of Waveform Samples.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Number of Waveform Samples.vi"/>
				<Item Name="Open URL in Default Browser (path).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser (path).vi"/>
				<Item Name="Open URL in Default Browser (string).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser (string).vi"/>
				<Item Name="Open URL in Default Browser core.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser core.vi"/>
				<Item Name="Open URL in Default Browser.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser.vi"/>
				<Item Name="Open_Create_Replace File.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
				<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Waveform Time to Date Time String.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTFileIO.llb/Waveform Time to Date Time String.vi"/>
				<Item Name="WDT Get Waveform Time Array DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Get Waveform Time Array DBL.vi"/>
				<Item Name="WDT Number of Waveform Samples CDB.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples CDB.vi"/>
				<Item Name="WDT Number of Waveform Samples DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples DBL.vi"/>
				<Item Name="WDT Number of Waveform Samples EXT.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples EXT.vi"/>
				<Item Name="WDT Number of Waveform Samples I8.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I8.vi"/>
				<Item Name="WDT Number of Waveform Samples I16.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I16.vi"/>
				<Item Name="WDT Number of Waveform Samples I32.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I32.vi"/>
				<Item Name="WDT Number of Waveform Samples SGL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples SGL.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Write File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write File+ (string).vi"/>
			</Item>
			<Item Name="2d_array_average.vi" Type="VI" URL="../../General/2d_array_average.vi"/>
			<Item Name="about.vi" Type="VI" URL="../../General/about.vi"/>
			<Item Name="Agilent PSG MXG Series.lvlib" Type="Library" URL="../../libaries/Agilent PSG MXG Series/Agilent PSG MXG Series.lvlib"/>
			<Item Name="array_unit_conversion.vi" Type="VI" URL="../../Hardware Control/Trigger/subs/array_unit_conversion.vi"/>
			<Item Name="average_meas_duration.vi" Type="VI" URL="../../General/average_meas_duration.vi"/>
			<Item Name="basic_settings.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG2_subs/basic_settings.vi"/>
			<Item Name="Build Path - File Names and Paths Arrays - path__ogtk.vi" Type="VI" URL="../../libaries/_OpenG.lib/file/file.llb/Build Path - File Names and Paths Arrays - path__ogtk.vi"/>
			<Item Name="Build Path - File Names and Paths Arrays__ogtk.vi" Type="VI" URL="../../libaries/_OpenG.lib/file/file.llb/Build Path - File Names and Paths Arrays__ogtk.vi"/>
			<Item Name="Build Path - File Names Array - path__ogtk.vi" Type="VI" URL="../../libaries/_OpenG.lib/file/file.llb/Build Path - File Names Array - path__ogtk.vi"/>
			<Item Name="Build Path - File Names Array__ogtk.vi" Type="VI" URL="../../libaries/_OpenG.lib/file/file.llb/Build Path - File Names Array__ogtk.vi"/>
			<Item Name="Build Path - Traditional - path__ogtk.vi" Type="VI" URL="../../libaries/_OpenG.lib/file/file.llb/Build Path - Traditional - path__ogtk.vi"/>
			<Item Name="Build Path - Traditional__ogtk.vi" Type="VI" URL="../../libaries/_OpenG.lib/file/file.llb/Build Path - Traditional__ogtk.vi"/>
			<Item Name="Build Path__ogtk.vi" Type="VI" URL="../../libaries/_OpenG.lib/file/file.llb/Build Path__ogtk.vi"/>
			<Item Name="burst_count_to_state.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG2_subs/burst_count_to_state.vi"/>
			<Item Name="calc_cycle_length.vi" Type="VI" URL="../../Hardware Control/Trigger/subs/calc_cycle_length.vi"/>
			<Item Name="check_and_correct_input.vi" Type="VI" URL="../../Hardware Control/Trigger/subs/check_and_correct_input.vi"/>
			<Item Name="config_burst.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG2_subs/config_burst.vi"/>
			<Item Name="config_timebase_OSC.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/config_timebase_OSC.vi"/>
			<Item Name="Configure Data Width.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/based_on_TEK/Configure Data Width.vi"/>
			<Item Name="Configure_PSG.vi" Type="VI" URL="../../Hardware Control/PSG/Configure_PSG.vi"/>
			<Item Name="Create Dir if Non-Existant__ogtk.vi" Type="VI" URL="../../libaries/_OpenG.lib/file/file.llb/Create Dir if Non-Existant__ogtk.vi"/>
			<Item Name="create_standardized_delay_array.vi" Type="VI" URL="../../Hardware Control/Trigger/subs/create_standardized_delay_array.vi"/>
			<Item Name="deafult_setup_OSC.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/deafult_setup_OSC.vi"/>
			<Item Name="default_config_OSC.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/default_config_OSC.vi"/>
			<Item Name="dg535 error handler.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG1_subs/dg535 example Folder/dg535 error handler.vi"/>
			<Item Name="DG535 Receive Message.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG1_subs/dg535 example Folder/DG535 Receive Message.vi"/>
			<Item Name="DG535 Send Message.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG1_subs/dg535 example Folder/DG535 Send Message.vi"/>
			<Item Name="DWDT_Boolean_Array_to_Digital.vi" Type="VI" URL="../../Hardware Control/Trigger/subs/DWDT_Boolean_Array_to_Digital.vi"/>
			<Item Name="enable_burst.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG2_subs/enable_burst.vi"/>
			<Item Name="enable_Output_PSG.vi" Type="VI" URL="../../Hardware Control/PSG/enable_Output_PSG.vi"/>
			<Item Name="fastFrame_config.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/fastFrame_config.vi"/>
			<Item Name="fastFrame_get_average.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/fastFrame_get_average.vi"/>
			<Item Name="fastFrame_wave_to_bg_and_mol_signal.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/fastFrame_wave_to_bg_and_mol_signal.vi"/>
			<Item Name="Fetch Waveform.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/based_on_TEK/Fetch Waveform.vi"/>
			<Item Name="FFT_averaging.vi" Type="VI" URL="../../General/FFT_averaging.vi"/>
			<Item Name="find_max_min_freq_in_spectra_cluster.vi" Type="VI" URL="../../General/find_max_min_freq_in_spectra_cluster.vi"/>
			<Item Name="float_unit_conversion.vi" Type="VI" URL="../../Hardware Control/Trigger/subs/float_unit_conversion.vi"/>
			<Item Name="get_acq_number.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/get_acq_number.vi"/>
			<Item Name="global.vi" Type="VI" URL="../../global.vi"/>
			<Item Name="init_OSC.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/init_OSC.vi"/>
			<Item Name="init_TRIG1.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG1_subs/init_TRIG1.vi"/>
			<Item Name="init_TRIG2.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG2_subs/init_TRIG2.vi"/>
			<Item Name="IO_create_frequency_array.vi" Type="VI" URL="../../FileIO/IO_create_frequency_array.vi"/>
			<Item Name="IO_Export_Spectra_To_Spreadsheet.vi" Type="VI" URL="../../FileIO/IO_Export_Spectra_To_Spreadsheet.vi"/>
			<Item Name="IO_Waveforms_To_Spreadsheet(1D).vi" Type="VI" URL="../../FileIO/IO_Waveforms_To_Spreadsheet(1D).vi"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="manual_single_trigger.vi" Type="VI" URL="../../Hardware Control/Trigger/manual_single_trigger.vi"/>
			<Item Name="meas_cycle_TD_FFT.vi" Type="VI" URL="../../General/meas_cycle_TD_FFT.vi"/>
			<Item Name="meas_timing.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/meas_timing.vi"/>
			<Item Name="OSC_config_UI.vi" Type="VI" URL="../../Hardware Control/OSC/OSC_config_UI.vi"/>
			<Item Name="output_on_PSG.vi" Type="VI" URL="../../Hardware Control/PSG/output_on_PSG.vi"/>
			<Item Name="peak_detection.vi" Type="VI" URL="../../General/peak_detection.vi"/>
			<Item Name="peak_detection_2d.vi" Type="VI" URL="../../General/peak_detection_2d.vi"/>
			<Item Name="prompt_file_saving.vi" Type="VI" URL="../../General/prompt_file_saving.vi"/>
			<Item Name="purge_nozzle.vi" Type="VI" URL="../../Hardware Control/Trigger/purge_nozzle.vi"/>
			<Item Name="Read Waveform.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/based_on_TEK/Read Waveform.vi"/>
			<Item Name="read_OSC.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/read_OSC.vi"/>
			<Item Name="read_timing_array.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG2_subs/read_timing_array.vi"/>
			<Item Name="reset_OSC.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/reset_OSC.vi"/>
			<Item Name="reset_TRIG1.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG1_subs/reset_TRIG1.vi"/>
			<Item Name="reset_TRIG2.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG2_subs/reset_TRIG2.vi"/>
			<Item Name="resolve_fast_frames.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/resolve_fast_frames.vi"/>
			<Item Name="restore_config.vi" Type="VI" URL="../../General/restore_config.vi"/>
			<Item Name="sampling_rate.ctl" Type="VI" URL="../../Hardware Control/OSC/SubVIs/controls/sampling_rate.ctl"/>
			<Item Name="save_config.vi" Type="VI" URL="../../General/save_config.vi"/>
			<Item Name="scale.ctl" Type="VI" URL="../../Hardware Control/OSC/SubVIs/controls/scale.ctl"/>
			<Item Name="seconds_to_time.vi" Type="VI" URL="../../General/seconds_to_time.vi"/>
			<Item Name="set_delay_chirp_TRIG1.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG1_subs/set_delay_chirp_TRIG1.vi"/>
			<Item Name="set_OSC.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/set_OSC.vi"/>
			<Item Name="set_PSG.vi" Type="VI" URL="../../Hardware Control/PSG/set_PSG.vi"/>
			<Item Name="set_single_output_TRIG1.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG1_subs/set_single_output_TRIG1.vi"/>
			<Item Name="set_TRIG.vi" Type="VI" URL="../../Hardware Control/Trigger/subs/set_TRIG.vi"/>
			<Item Name="Show Busy Indicator.vi" Type="VI" URL="../../General/Busy_Symbol/Show Busy Indicator.vi"/>
			<Item Name="single_shot_TRIG1.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG1_subs/single_shot_TRIG1.vi"/>
			<Item Name="Strip Path - Arrays__ogtk.vi" Type="VI" URL="../../libaries/_OpenG.lib/file/file.llb/Strip Path - Arrays__ogtk.vi"/>
			<Item Name="Strip Path - Traditional__ogtk.vi" Type="VI" URL="../../libaries/_OpenG.lib/file/file.llb/Strip Path - Traditional__ogtk.vi"/>
			<Item Name="Strip Path__ogtk.vi" Type="VI" URL="../../libaries/_OpenG.lib/file/file.llb/Strip Path__ogtk.vi"/>
			<Item Name="Tektronix 7000 Series.lvlib" Type="Library" URL="../../libaries/Tektronix 7000 Series/Tektronix 7000 Series.lvlib"/>
			<Item Name="timing_data_to_boolean_array.vi" Type="VI" URL="../../Hardware Control/Trigger/subs/timing_data_to_boolean_array.vi"/>
			<Item Name="timming_array_to_digital_waveform.vi" Type="VI" URL="../../Hardware Control/Trigger/subs/timming_array_to_digital_waveform.vi"/>
			<Item Name="TRIG_config_UI.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG_config_UI.vi"/>
			<Item Name="unit_to_multiplicator.vi" Type="VI" URL="../../Hardware Control/Trigger/subs/unit_to_multiplicator.vi"/>
			<Item Name="Wait for Operation Complete.vi" Type="VI" URL="../../Hardware Control/OSC/SubVIs/based_on_TEK/Wait for Operation Complete.vi"/>
			<Item Name="write_timing_array.vi" Type="VI" URL="../../Hardware Control/Trigger/TRIG2_subs/write_timing_array.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
