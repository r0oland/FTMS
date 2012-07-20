<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
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
		<Item Name="buffersize_test_optimized.vi" Type="VI" URL="../../SubVIs/buffersize_test_optimized.vi"/>
		<Item Name="buffersize_test_orig.vi" Type="VI" URL="../../SubVIs/buffersize_test_orig.vi"/>
		<Item Name="config_OSC.vi" Type="VI" URL="../../config_OSC.vi"/>
		<Item Name="Fetch_chirp_waveform_timing.vi" Type="VI" URL="../../SubVIs/Fetch_chirp_waveform_timing.vi"/>
		<Item Name="read_OSC.vi" Type="VI" URL="../../read_OSC.vi"/>
		<Item Name="read_OSC_optimized_timing.vi" Type="VI" URL="../../read_OSC_optimized_timing.vi"/>
		<Item Name="read_OSC_original_timing.vi" Type="VI" URL="../../read_OSC_original_timing.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="Tektronix 7000 Series.lvlib" Type="Library" URL="/&lt;instrlib&gt;/Tektronix 7000 Series/Tektronix 7000 Series.lvlib"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Open_Create_Replace File.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="config_timebase_OSC_new.vi" Type="VI" URL="../../SubVIs/config_timebase_OSC_new.vi"/>
			<Item Name="deafult_setup_OSC.vi" Type="VI" URL="../../SubVIs/deafult_setup_OSC.vi"/>
			<Item Name="default_config_OSC.vi" Type="VI" URL="../../SubVIs/default_config_OSC.vi"/>
			<Item Name="Fetch_chirp_waveform_optimized.vi" Type="VI" URL="../../SubVIs/Fetch_chirp_waveform_optimized.vi"/>
			<Item Name="Fetch_original_waveform_timing.vi" Type="VI" URL="../../SubVIs/Fetch_original_waveform_timing.vi"/>
			<Item Name="init_OSC.vi" Type="VI" URL="../../SubVIs/init_OSC.vi"/>
			<Item Name="lvanlys.dll" Type="Document" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/resource/lvanlys.dll"/>
			<Item Name="Read_Single_chirp_Waveform.vi" Type="VI" URL="../../SubVIs/Read_Single_chirp_Waveform.vi"/>
			<Item Name="Read_Single_chirp_Waveform_optimized.vi" Type="VI" URL="../../SubVIs/Read_Single_chirp_Waveform_optimized.vi"/>
			<Item Name="sampling_rate.ctl" Type="VI" URL="../../SubVIs/controls/sampling_rate.ctl"/>
			<Item Name="scale.ctl" Type="VI" URL="../../SubVIs/controls/scale.ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="buffersize_test_opt" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{3896422D-C550-4FE9-BC9E-7FF649828C78}</Property>
				<Property Name="App_INI_GUID" Type="Str">{9524158D-BD8E-4B9B-88C0-4C4848ED0BB7}</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{E6C51579-7324-43E6-A999-DF09A19E72D1}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">buffersize_test_opt</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{88C555F1-403E-45D5-8ADD-84F682317CF2}</Property>
				<Property Name="Destination[0].destName" Type="Str">buffersize_test_opt.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/buffersize_test_opt.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{B9B14B81-7866-4660-B5E4-09ED6ACAB9EF}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/buffersize_test_optimized.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_fileDescription" Type="Str">buffersize_test_opt</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">buffersize_test_opt</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 </Property>
				<Property Name="TgtF_productName" Type="Str">buffersize_test_opt</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{180B55A0-5281-47B9-A459-F55DDF786C85}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">buffersize_test_opt.exe</Property>
			</Item>
			<Item Name="buffersize_test_orig" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{473D1385-F81E-4AED-91D5-D3B200A6F1E2}</Property>
				<Property Name="App_INI_GUID" Type="Str">{35B877F8-D1AE-4F7C-B907-27489FA2F422}</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{3413EF4A-6A4A-4476-B5F1-30263CEC5C81}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">buffersize_test_orig</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{A3BABFBF-5AB1-4E47-822C-90313FEB1DEB}</Property>
				<Property Name="Destination[0].destName" Type="Str">buffersize_test_orig.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/buffersize_test_orig.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{47A777F1-A776-4BA6-B068-C6D6F598A1B5}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/read_OSC_original_timing.vi</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/buffersize_test_orig.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_fileDescription" Type="Str">buffersize_test_orig</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">buffersize_test_orig</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 </Property>
				<Property Name="TgtF_productName" Type="Str">buffersize_test_orig</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{034B0495-9C31-4EA6-B7E7-466169C17A3E}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">buffersize_test_orig.exe</Property>
			</Item>
			<Item Name="Config_OSC" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{DB926424-3179-4DDA-B53A-66D2D50B1D2B}</Property>
				<Property Name="App_INI_GUID" Type="Str">{A7E64BB1-04ED-487E-A295-DD4983DB92E2}</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{54B4126D-3965-49C9-9C29-6757FFEF4D3A}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Config_OSC</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../NI_AB_PROJECTNAME/builds/Config_OSC</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{BC5D8069-328D-4383-B572-B0AD96A940FC}</Property>
				<Property Name="Destination[0].destName" Type="Str">Config_OSC.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../NI_AB_PROJECTNAME/builds/Config_OSC/Config_OSC.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../NI_AB_PROJECTNAME/builds/Config_OSC/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{1B008345-AD3F-4BAA-9270-2282CA11131B}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/config_OSC.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_autoIncrement" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Config_OSC</Property>
				<Property Name="TgtF_fileVersion.build" Type="Int">1</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">Config_OSC</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 </Property>
				<Property Name="TgtF_productName" Type="Str">Config_OSC</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{79586196-FAC6-4E07-9F05-C18074A2A1D3}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Config_OSC.exe</Property>
			</Item>
			<Item Name="optimized_timing" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{80C1FBF8-C371-4CDF-BB82-1D5635CAD66B}</Property>
				<Property Name="App_INI_GUID" Type="Str">{DD5DB7F7-8AF5-4ABA-9900-192B9BB0CD83}</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{AA602BBB-BBD4-47D7-8CA5-3E0A81441957}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">optimized_timing</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{2A47DDD3-AFD4-4D50-BFA2-E66A7639C174}</Property>
				<Property Name="Destination[0].destName" Type="Str">optimized_timing.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/optimized_timing.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{60B66E10-B3D3-4B5C-9110-366257C0062B}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/read_OSC_optimized_timing.vi</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Run when opened</Property>
				<Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">1</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_fileDescription" Type="Str">optimized_timing</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">optimized_timing</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 </Property>
				<Property Name="TgtF_productName" Type="Str">optimized_timing</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{56A62421-51B0-4545-8B2D-259F330626DD}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">optimized_timing.exe</Property>
			</Item>
			<Item Name="original_timing" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{1141081F-0C14-43E9-946E-92C29803992A}</Property>
				<Property Name="App_INI_GUID" Type="Str">{C5191B59-C4BD-4C5F-ACDD-C572207B40CB}</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{7B9F86E1-5155-418B-90F5-982388F10153}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">original_timing</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{827FBFC6-8A88-4092-BBA7-B40B058E1F55}</Property>
				<Property Name="Destination[0].destName" Type="Str">original_timing.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/original_timing.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{60B66E10-B3D3-4B5C-9110-366257C0062B}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/read_OSC_original_timing.vi</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Run when opened</Property>
				<Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">1</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_fileDescription" Type="Str">original_timing</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">original_timing</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 </Property>
				<Property Name="TgtF_productName" Type="Str">original_timing</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{D1763AD0-2AB5-4EE8-894D-51C81E59B962}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">original_timing.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
