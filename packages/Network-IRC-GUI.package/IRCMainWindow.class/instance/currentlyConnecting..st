actionButtons
currentlyConnecting: aBoolean

	connecting := aBoolean
		ifTrue: [self setLabel: IRCMainWindow baseWindowTitle, ' - connecting...']