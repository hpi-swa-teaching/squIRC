interface
addChannelListTo: win fractions: fractions offsets: offsets 
	multiColumnMorph := PluggableMultiColumnIRCListMorph
				on: self
				list: #channelDescriptions
				selected: #channelIndex
				changeSelected: #channelIndex:
				headerStrings: #('Name' '#' 'Channel Topic' ).
	multiColumnMorph color: Color white.
	multiColumnMorph headerBackColor: Color paleTan muchLighter.
	win
		addMorph: multiColumnMorph
		fullFrame: (LayoutFrame fractions: fractions offsets: offsets)