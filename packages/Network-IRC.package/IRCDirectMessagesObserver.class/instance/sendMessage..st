as yet unclassified
sendMessage: aString
	"send a message to the user we are talking to"
	| newLine |
	talkingTo ifNil: [Beeper beep. ^ self].

	connection privmsgFrom: nil  to: talkingTo  text: aString.

	newLine _ (Text string: 'me' attribute: TextEmphasis bold),
		': ', aString, String cr.
	self addToChatText: newLine.

	^true