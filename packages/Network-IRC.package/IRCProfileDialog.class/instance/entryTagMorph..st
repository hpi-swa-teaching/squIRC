common entry
entryTagMorph: aString
	| tagMorph |
	tagMorph := PluggableButtonMorph
				on: self
				getState: nil
				action: #doNothing.
	tagMorph hResizing: #spaceFill;
		 vResizing: #spaceFill;
		 label: aString;
		 color: Color white.
	tagMorph setBalloonText: 'This is not a real button.  Use the text entry field to the right to change the value.'.
	^ tagMorph