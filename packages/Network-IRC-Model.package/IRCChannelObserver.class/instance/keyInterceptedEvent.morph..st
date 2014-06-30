as yet unclassified
keyInterceptedEvent: evt morph: morph 
	"Answer true if we want the pane to have the event anyway.  
	There are 3 classes involved here.  
	TextMorphForInterceptingIRCEditView intercepts the keystrokes.  
	PluggableInterceptingIRCTextMorph is the morph holding the text.  
	IRCChannelObserver (this class) decides what to do with the  
	intercepts.  
	Once an intercept is tripped we will recieve ALL keystrokes until we  
	tell the text morph #clearInterceptActive"
	| char |
	char _ evt keyCharacter.
	char = Character tab
		ifTrue: [^ self checkForNickCompletionOn: morph].
	char = Character arrowUp
		ifTrue: [^ self checkForScrollPlaybackUpOn: morph].
	char = Character arrowDown
		ifTrue: [^ self checkForScrollPlaybackDownOn: morph].
	self keyInterceptEndedFrom: morph.
	^ true