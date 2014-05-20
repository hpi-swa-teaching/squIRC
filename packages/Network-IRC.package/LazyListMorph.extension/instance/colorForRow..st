*network-irc-gui
colorForRow: row 
	^ (selectedRow notNil
			and: [row = selectedRow])
		ifTrue: [self rowHighlightColor]
		ifFalse: [self color]