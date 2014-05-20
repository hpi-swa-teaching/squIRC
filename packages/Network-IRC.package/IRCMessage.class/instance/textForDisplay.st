access
textForDisplay
	"text to display in a chat window"
	| senderToDisplay |
	senderToDisplay _ sender ifNil: [ 'me' ].
	(senderToDisplay includes: $!) ifTrue: [ senderToDisplay _ senderToDisplay copyFrom: 1 to: (sender indexOf: $!)-1 ].

	(text beginsWith: (Character value: 1) asString) ifTrue: [
		"an emote"
		| endMarker |
		endMarker := text indexOf: (Character space) startingAt: 2 ifAbsent: [ 0 ].
		endMarker > 0 ifTrue: [
			| emoteType |
			emoteType := text copyFrom: 2 to: endMarker-1.
			emoteType := emoteType asLowercase.
			emoteType = 'action' ifTrue: [
				"definitely an emote"
				| action |
				action := text copyFrom: endMarker +1 to: text size.
				^senderToDisplay, ' ', action ] ] ].

	^(Text string: senderToDisplay emphasis: (Array with: TextEmphasis bold)), 
		': ', self text