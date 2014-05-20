as yet unclassified
keyStroke: evt 
	"We're not going to let the pane have intercepted keys unless the model  
	says so."
	self interceptActive
		ifTrue: [^ self giveInterceptedEventToModel: evt].
	(self intercepts includes: evt keyCharacter)
		ifTrue: [self setInterceptActive.
			^self giveInterceptedEventToModel: evt].
	super keyStroke: evt