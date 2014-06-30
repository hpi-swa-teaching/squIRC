as yet unclassified
consoleMessagePlayback
	consoleMessagePlayback == nil
		ifTrue: [consoleMessagePlayback _ IRCMessagePlayback new].
	^ consoleMessagePlayback