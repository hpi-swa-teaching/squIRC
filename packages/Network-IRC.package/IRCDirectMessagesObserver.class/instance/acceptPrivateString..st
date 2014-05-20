messages
acceptPrivateString: aString 
	"New send message logic."
	talkingTo isNil
		ifTrue: [^ true].
	^ connection
				sendPrivateString: aString
				from: self
				to: talkingTo