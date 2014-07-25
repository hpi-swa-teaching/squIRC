accessing
connection

	^ connection ifNil: [connection := IRCConnection basicNew]