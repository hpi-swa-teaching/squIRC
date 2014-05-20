as yet unclassified
messagePlayback
	messagePlayback == nil ifTrue: [messagePlayback _ IRCMessagePlayback new].
	^messagePlayback