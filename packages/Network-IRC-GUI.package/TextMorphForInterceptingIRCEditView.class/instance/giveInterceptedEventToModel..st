as yet unclassified
giveInterceptedEventToModel: evt 
	"Give event to model. If model returns true then pass evt to super as  
	keystroke."
	| rcvr |
	rcvr _ interceptor isNil
		ifTrue: [self editView model ]
		ifFalse: [interceptor].
	(rcvr keyInterceptedEvent: evt morph: self editView)
		ifTrue: [super keyStroke: evt]