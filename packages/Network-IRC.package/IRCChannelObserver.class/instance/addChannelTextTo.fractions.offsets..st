panel building
addChannelTextTo: win fractions: fractions offsets: offsets 
	| textArea |
	textArea := PluggableIRCTextMorph
				on: self
				text: #chatText
				accept: nil
				readSelection: #chatTextSelection
				menu: #channelTextMenu:.
	win
		addMorph: textArea
		fullFrame: (LayoutFrame fractions: fractions offsets: offsets).
	^ textArea