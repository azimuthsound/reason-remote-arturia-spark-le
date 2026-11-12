function remote_init()
	init_items()
	init_inputs()
	init_outputs()
end

function init_items()

	local items={

		{name="Tempo Encoder"           , input="delta",    output="value" , min=0,max=127},
		{name="Volume Encoder"          , input="delta",    output="value" , min=0,max=127},

--		{name="Touchpad"                , input="button" ,  output="value" },
		{name="Touchpad X"              , input="value"  ,  output="value" , min=0,max=127},
		{name="Touchpad Y"              , input="value"  ,  output="value" , min=0,max=127},

		{name="Encoder P1"              , input="delta",    output="value" , min=0,max=127},
		{name="Encoder P2"              , input="delta",    output="value" , min=0,max=127},
		{name="Encoder P3"              , input="delta",    output="value" , min=0,max=127},
	}
	
	remote.define_items(items)
end

function init_inputs()

	local inputs={
	
		{pattern="b0 30 xx"     , name="Tempo Encoder",           value="x-64"},
		{pattern="b0 2F xx"     , name="Volume Encoder",          value="x-64"},

--		{pattern="<100x>0 39 40", name="Touchpad",                value="x"},
		{pattern="b0 3B xx"     , name="Touchpad X",              value="x"},
		{pattern="b0 3A xx"     , name="Touchpad Y",              value="x"},

		{pattern="b0 31 xx"     , name="Encoder P1",              value="x-64"},
		{pattern="b0 32 xx"     , name="Encoder P2",              value="x-64"},
		{pattern="b0 33 xx"     , name="Encoder P3",              value="x-64"},
			}
	remote.define_auto_inputs(inputs)
end

function init_outputs()

	local outputs={
	}
	remote.define_auto_outputs(outputs)
end