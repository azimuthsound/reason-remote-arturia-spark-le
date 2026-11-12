g_bars_display_index = -1
g_current_bar = -1
g_delivered_bar = -1

function remote_init()
	init_items()
	init_inputs()
	init_outputs()
end

function init_items()

	local items={

		{name="Record Button"           , input="button" ,  output="value" },
		{name="Stop Button"             , input="button" ,  output="value" },
		{name="Stop Release"            , input="button" ,  output="value" },
		{name="PausePlay Button"        , input="button" ,  output="value" },

--		{name="Tempo Encoder"           , input="delta",    output="value" , min=0,max=127},
--		{name="Volume Encoder"          , input="delta",    output="value" , min=0,max=127},

		{name="Select Button"           , input="button" ,  output="value" },
		{name="Select Button Light"     , input="noinput",  output="value", min=0,max=1 },
		{name="Pad Switch Button"       , input="button" ,  output="value" },
		{name="Mute Button"             , input="button" ,  output="value" },
		{name="Solo Button"             , input="button" ,  output="value" },

		{name="Touchpad"                , input="button" ,  output="value" },
		{name="Touchpad X"              , input="value"  ,  output="value" , min=0,max=127},
		{name="Touchpad Y"              , input="value"  ,  output="value" , min=0,max=127},

		{name="Global Filter Button"    , input="button" ,  output="value" },
		{name="Global Slicer Button"    , input="button" ,  output="value" },
		{name="Global Roller Button"    , input="button" ,  output="value" },
		{name="Instr Filter Button"     , input="button" ,  output="value" },
		{name="Instr Send Button"       , input="button" ,  output="value" },
		{name="Instr Pan Level Button"  , input="button" ,  output="value" },

		{name="Dial"                    , input="delta",    output="value" , min=0,max=127},
		{name="Dial Click"              , input="button" ,  output="value" },
		{name="Proj Button"             , input="button" ,  output="value" },
		{name="Kit Button"              , input="button" ,  output="value" },
		{name="Instr Button"            , input="button" ,  output="value" },

--		{name="Encoder P1"              , input="delta",    output="value" , min=0,max=127},
--		{name="Encoder P2"              , input="delta",    output="value" , min=0,max=127},
--		{name="Encoder P3"              , input="delta",    output="value" , min=0,max=127},

		{name="Bank Button"             , input="button" ,  output="value" },
		{name="Patt Button"             , input="button" ,  output="value" },
		{name="Seq Button"              , input="button" ,  output="value" },
		{name="Tune Button"             , input="button" ,  output="value" },

		{name="Copy Button"             , input="button" ,  output="value" },
		{name="Erase Button"            , input="button" ,  output="value" },

		{name="Pattern LED 1"           , input="noinput",  output="value" , min=0,max=1},
		{name="Pattern LED 2"           , input="noinput",  output="value" , min=0,max=1},
		{name="Pattern LED 3"           , input="noinput",  output="value" , min=0,max=1},
		{name="Pattern LED 4"           , input="noinput",  output="value" , min=0,max=1},
		{name="Pattern Previous Button" , input="button" ,  output="value" },
		{name="Pattern Next Button"     , input="button" ,  output="value" },

		{name="Divide Encoder"          , input="delta",    output="value" , min=0,max=127},
		{name="Loop Button"             , input="button" ,  output="value" },
		{name="Move Encoder"            , input="delta",    output="value" , min=0,max=127},
		{name="Move Click"              , input="button" ,  output="value" },

		{name="Sequencer Button 1"      , input="button" ,  output="value" },
		{name="Sequencer Button 2"      , input="button" ,  output="value" },
		{name="Sequencer Button 3"      , input="button" ,  output="value" },
		{name="Sequencer Button 4"      , input="button" ,  output="value" },
		{name="Sequencer Button 5"      , input="button" ,  output="value" },
		{name="Sequencer Button 6"      , input="button" ,  output="value" },
		{name="Sequencer Button 7"      , input="button" ,  output="value" },
		{name="Sequencer Button 8"      , input="button" ,  output="value" },
		{name="Sequencer Button 9"      , input="button" ,  output="value" },
		{name="Sequencer Button 10"     , input="button" ,  output="value" },
		{name="Sequencer Button 11"     , input="button" ,  output="value" },
		{name="Sequencer Button 12"     , input="button" ,  output="value" },
		{name="Sequencer Button 13"     , input="button" ,  output="value" },
		{name="Sequencer Button 14"     , input="button" ,  output="value" },
		{name="Sequencer Button 15"     , input="button" ,  output="value" },
		{name="Sequencer Button 16"     , input="button" ,  output="value" },

		{name="Sequencer Light 1"      , input="noinput" ,  output="value" , min=0,max=1 },
		{name="Sequencer Light 2"      , input="noinput" ,  output="value" , min=0,max=1 },
		{name="Sequencer Light 3"      , input="noinput" ,  output="value" , min=0,max=1 },
		{name="Sequencer Light 4"      , input="noinput" ,  output="value" , min=0,max=1 },
		{name="Sequencer Light 5"      , input="noinput" ,  output="value" , min=0,max=1 },
		{name="Sequencer Light 6"      , input="noinput" ,  output="value" , min=0,max=1 },
		{name="Sequencer Light 7"      , input="noinput" ,  output="value" , min=0,max=1 },
		{name="Sequencer Light 8"      , input="noinput" ,  output="value" , min=0,max=1 },
		{name="Sequencer Light 9"      , input="noinput" ,  output="value" , min=0,max=1 },
		{name="Sequencer Light 10"     , input="noinput" ,  output="value" , min=0,max=1 },
		{name="Sequencer Light 11"     , input="noinput" ,  output="value" , min=0,max=1 },
		{name="Sequencer Light 12"     , input="noinput" ,  output="value" , min=0,max=1 },
		{name="Sequencer Light 13"     , input="noinput" ,  output="value" , min=0,max=1 },
		{name="Sequencer Light 14"     , input="noinput" ,  output="value" , min=0,max=1 },
		{name="Sequencer Light 15"     , input="noinput" ,  output="value" , min=0,max=1 },
		{name="Sequencer Light 16"     , input="noinput" ,  output="value" , min=0,max=1 },
		
		{name="Pad 1"           , input="button" ,  output="value" , min=0,max=1},
		{name="Pad 2"           , input="button" ,  output="value" , min=0,max=1},
		{name="Pad 3"           , input="button" ,  output="value" , min=0,max=1},
		{name="Pad 4"           , input="button" ,  output="value" , min=0,max=1},
		{name="Pad 5"           , input="button" ,  output="value" , min=0,max=1},
		{name="Pad 6"           , input="button" ,  output="value" , min=0,max=1},
		{name="Pad 7"           , input="button" ,  output="value" , min=0,max=1},
		{name="Pad 8"           , input="button" ,  output="value" , min=0,max=1},

		{name="Track Select LED 1"      , input="noinput",  output="value" , min=0,max=1},
		{name="Track Select LED 2"      , input="noinput",  output="value" , min=0,max=1},
		{name="Track Select LED 3"      , input="noinput",  output="value" , min=0,max=1},
		{name="Track Select LED 4"      , input="noinput",  output="value" , min=0,max=1},
		{name="Track Select LED 5"      , input="noinput",  output="value" , min=0,max=1},
		{name="Track Select LED 6"      , input="noinput",  output="value" , min=0,max=1},
		{name="Track Select LED 7"      , input="noinput",  output="value" , min=0,max=1},
		{name="Track Select LED 8"      , input="noinput",  output="value" , min=0,max=1},
	}
	
	table.insert(items, { name="Bars Display", input="noinput", output="text" })
	g_bars_display_index = table.getn(items)

	remote.define_items(items)
end

function init_inputs()

	local inputs={
		{pattern="<100x>0 18 40", name="Record Button"},
		{pattern="<100x>0 19 40", name="Stop Button"},
		{pattern="80 19 40", name="Stop Release"},
		{pattern="<100x>0 1A 40", name="PausePlay Button"},

--		{pattern="b0 30 xx"     , name="Tempo Encoder",           value="x-64"},
--		{pattern="b0 2F xx"     , name="Volume Encoder",          value="x-64"},

		{pattern="<100x>0 14 40", name="Select Button", value="1"}, --to force a momentary behavior to use as Shift
		{pattern="<100x>0 15 40", name="Pad Switch Button"},
		{pattern="<100x>0 16 40", name="Mute Button"},
		{pattern="<100x>0 17 40", name="Solo Button"},

		{pattern="<100x>0 39 40", name="Touchpad",                value="x"},
		{pattern="b0 3B xx"     , name="Touchpad X",              value="x"},
		{pattern="b0 3A xx"     , name="Touchpad Y",              value="x"},

		{pattern="<100x>0 1E 40", name="Global Filter Button"},
		{pattern="<100x>0 1F 40", name="Global Slicer Button"},
		{pattern="<100x>0 20 40", name="Global Roller Button"},
		{pattern="<100x>0 21 40", name="Instr Filter Button"},
		{pattern="<100x>0 22 40", name="Instr Send Button"},
		{pattern="<100x>0 23 40", name="Instr Pan Level Button"},

		{pattern="b0 36 xx"     , name="Dial",                    value="x-64"},
		{pattern="<100x>0 38 40", name="Dial Click"},
		{pattern="<100x>0 28 40", name="Proj Button"},
		{pattern="<100x>0 27 40", name="Kit Button"},
		{pattern="<100x>0 26 40", name="Instr Button"},

--		{pattern="b0 31 xx"     , name="Encoder P1",              value="x-64"},
--		{pattern="b0 32 xx"     , name="Encoder P2",              value="x-64"},
--		{pattern="b0 33 xx"     , name="Encoder P3",              value="x-64"},

		{pattern="<100x>0 10 40", name="Bank Button"},
		{pattern="<100x>0 11 40", name="Patt Button"},
		{pattern="<100x>0 12 40", name="Seq Button"},
		{pattern="<100x>0 13 40", name="Tune Button"},

		{pattern="<100x>0 1C 40", name="Copy Button"},
		{pattern="<100x>0 1D 40", name="Erase Button"},

		{pattern="<100x>0 24 40", name="Pattern Previous Button"},
		{pattern="<100x>0 25 40", name="Pattern Next Button"},

		{pattern="b0 34 xx"     , name="Divide Encoder",          value="x-64"},
		{pattern="<100x>0 1B 40", name="Loop Button"},
		{pattern="b0 35 xx"     , name="Move Encoder",            value="x-64"},
		{pattern="<100x>0 37 40", name="Move Click"},

		{pattern="<100x>0 3c ??", name="Pad 1"},
		{pattern="<100x>0 3d ??", name="Pad 2"},
		{pattern="<100x>0 3e ??", name="Pad 3"},
		{pattern="<100x>0 3f ??", name="Pad 4"},
		{pattern="<100x>0 40 ??", name="Pad 5"},
		{pattern="<100x>0 41 ??", name="Pad 6"},
		{pattern="<100x>0 42 ??", name="Pad 7"},
		{pattern="<100x>0 43 ??", name="Pad 8"},

		{pattern="<100x>0 00 40", name="Sequencer Button 1"},
		{pattern="<100x>0 01 40", name="Sequencer Button 2"},
		{pattern="<100x>0 02 40", name="Sequencer Button 3"},
		{pattern="<100x>0 03 40", name="Sequencer Button 4"},
		{pattern="<100x>0 04 40", name="Sequencer Button 5"},
		{pattern="<100x>0 05 40", name="Sequencer Button 6"},
		{pattern="<100x>0 06 40", name="Sequencer Button 7"},
		{pattern="<100x>0 07 40", name="Sequencer Button 8"},
		{pattern="<100x>0 08 40", name="Sequencer Button 9"},
		{pattern="<100x>0 09 40", name="Sequencer Button 10"},
		{pattern="<100x>0 0A 40", name="Sequencer Button 11"},
		{pattern="<100x>0 0B 40", name="Sequencer Button 12"},
		{pattern="<100x>0 0C 40", name="Sequencer Button 13"},
		{pattern="<100x>0 0D 40", name="Sequencer Button 14"},
		{pattern="<100x>0 0E 40", name="Sequencer Button 15"},
		{pattern="<100x>0 0F 40", name="Sequencer Button 16"},

		
	}
	remote.define_auto_inputs(inputs)
end

function init_outputs()

	local outputs={
		{name="Record Button",            pattern="<100x>0 18 ??"},
		{name="Stop Button",              pattern="<100x>0 19 ??"},
		{name="PausePlay Button",         pattern="<100x>0 1A ??"},

		{name="Select Button",            pattern="<100x>0 14 ??"},
		{name="Select Button Light",      pattern="<100x>0 14 ??"},
		{name="Pad Switch Button",        pattern="<100x>0 15 ??"},
		{name="Mute Button",              pattern="<100x>0 16 ??"},
		{name="Solo Button",              pattern="<100x>0 17 ??"},

		{name="Global Filter Button",     pattern="<100x>0 1E ??"},
		{name="Global Slicer Button",     pattern="<100x>0 1F ??"},
		{name="Global Roller Button",     pattern="<100x>0 20 ??"},
		{name="Instr Filter Button",      pattern="<100x>0 21 ??"},
		{name="Instr Send Button",        pattern="<100x>0 22 ??"},
		{name="Instr Pan Level Button",   pattern="<100x>0 23 ??"},

		{name="Proj Button",              pattern="<100x>0 28 ??"},
		{name="Kit Button",               pattern="<100x>0 27 ??"},
		{name="Instr Button",             pattern="<100x>0 26 ??"},

		{name="Bank Button",              pattern="<100x>0 10 ??"},
		{name="Patt Button",              pattern="<100x>0 11 ??"},
		{name="Seq Button",               pattern="<100x>0 12 ??"},
		{name="Tune Button",              pattern="<100x>0 13 ??"},

		{name="Copy Button",              pattern="<100x>0 1C ??"},
		{name="Erase Button",             pattern="<100x>0 1D ??"},

		{name="Pattern Previous Button",  pattern="<100x>0 24 ??"},
		{name="Pattern Next Button",      pattern="<100x>0 25 ??"},

		{name="Loop Button",              pattern="<100x>0 1B ??"},

		{name="Pad 1",                    pattern="<100x>0 3C ??"},
		{name="Pad 2",                    pattern="<100x>0 3D ??"},
		{name="Pad 3",                    pattern="<100x>0 3E ??"},
		{name="Pad 4",                    pattern="<100x>0 3F ??"},
		{name="Pad 5",                    pattern="<100x>0 40 ??"},
		{name="Pad 6",                    pattern="<100x>0 41 ??"},
		{name="Pad 7",                    pattern="<100x>0 42 ??"},
		{name="Pad 8",                    pattern="<100x>0 43 ??"},

		{name="Sequencer Button 1",       pattern="<100x>0 00 ??"},
		{name="Sequencer Button 2",       pattern="<100x>0 01 ??"},
		{name="Sequencer Button 3",       pattern="<100x>0 02 ??"},
		{name="Sequencer Button 4",       pattern="<100x>0 03 ??"},
		{name="Sequencer Button 5",       pattern="<100x>0 04 ??"},
		{name="Sequencer Button 6",       pattern="<100x>0 05 ??"},
		{name="Sequencer Button 7",       pattern="<100x>0 06 ??"},
		{name="Sequencer Button 8",       pattern="<100x>0 07 ??"},
		{name="Sequencer Button 9",       pattern="<100x>0 08 ??"},
		{name="Sequencer Button 10",      pattern="<100x>0 09 ??"},
		{name="Sequencer Button 11",      pattern="<100x>0 0A ??"},
		{name="Sequencer Button 12",      pattern="<100x>0 0B ??"},
		{name="Sequencer Button 13",      pattern="<100x>0 0C ??"},
		{name="Sequencer Button 14",      pattern="<100x>0 0D ??"},
		{name="Sequencer Button 15",      pattern="<100x>0 0E ??"},
		{name="Sequencer Button 16",      pattern="<100x>0 0F ??"},
		
		{name="Sequencer Light 1",       pattern="<100x>0 00 ??"},
		{name="Sequencer Light 2",       pattern="<100x>0 01 ??"},
		{name="Sequencer Light 3",       pattern="<100x>0 02 ??"},
		{name="Sequencer Light 4",       pattern="<100x>0 03 ??"},
		{name="Sequencer Light 5",       pattern="<100x>0 04 ??"},
		{name="Sequencer Light 6",       pattern="<100x>0 05 ??"},
		{name="Sequencer Light 7",       pattern="<100x>0 06 ??"},
		{name="Sequencer Light 8",       pattern="<100x>0 07 ??"},
		{name="Sequencer Light 9",       pattern="<100x>0 08 ??"},
		{name="Sequencer Light 10",      pattern="<100x>0 09 ??"},
		{name="Sequencer Light 11",      pattern="<100x>0 0A ??"},
		{name="Sequencer Light 12",      pattern="<100x>0 0B ??"},
		{name="Sequencer Light 13",      pattern="<100x>0 0C ??"},
		{name="Sequencer Light 14",      pattern="<100x>0 0D ??"},
		{name="Sequencer Light 15",      pattern="<100x>0 0E ??"},
		{name="Sequencer Light 16",      pattern="<100x>0 0F ??"},

		{name="Track Select LED 1",       pattern="<100x>0 44 ??"},
		{name="Track Select LED 2",       pattern="<100x>0 45 ??"},
		{name="Track Select LED 3",       pattern="<100x>0 46 ??"},
		{name="Track Select LED 4",       pattern="<100x>0 47 ??"},
		{name="Track Select LED 5",       pattern="<100x>0 48 ??"},
		{name="Track Select LED 6",       pattern="<100x>0 49 ??"},
		{name="Track Select LED 7",       pattern="<100x>0 4A ??"},
		{name="Track Select LED 8",       pattern="<100x>0 4B ??"},
	}
	remote.define_auto_outputs(outputs)
end

function remote_deliver_midi()

	local ret_events={}

	if g_delivered_bar ~= g_current_bar then
	
		if g_current_bar < 1 then table.insert(ret_events, remote.make_midi("80 29 00")) end
		if g_current_bar < 5 then table.insert(ret_events, remote.make_midi("80 2A 00")) end
		if g_current_bar < 9 then table.insert(ret_events, remote.make_midi("80 2B 00")) end
		if g_current_bar < 12 then table.insert(ret_events, remote.make_midi("80 2C 00")) end
		
		if g_current_bar > 0 then table.insert(ret_events, remote.make_midi("90 29 64")) end
		if g_current_bar > 4 then table.insert(ret_events, remote.make_midi("90 2A 64")) end
		if g_current_bar > 8 then table.insert(ret_events, remote.make_midi("90 2B 64")) end
		if g_current_bar > 12 then table.insert(ret_events, remote.make_midi("90 2C 64")) end
	end
	
	g_delivered_bar = g_current_bar
	
	return ret_events
end

function remote_set_state(changed_items)
	for kk,item_index in ipairs(changed_items) do
		if item_index == g_bars_display_index then
			if remote.is_item_enabled(item_index) then
				g_current_bar = get_relative_bar(remote.get_item_text_value(item_index))
			else
				g_current_bar = -1
			end
		end
	end
	
	return false
end

function get_relative_bar(s)
	local n=tonumber(s)
	n = n - math.floor(n/16)*4
	return (n == 0) and 4 or n
end

function remote_probe()

	local controlRequest="F0 7E 7F 06 01 F7"

	local controlResponse="F0 7E 00 06 02 47 6C 00 19 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? F7"
return {
		request=controlRequest,
		response=controlResponse
	}
end