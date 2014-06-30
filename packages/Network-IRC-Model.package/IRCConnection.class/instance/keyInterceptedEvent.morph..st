keys intercept management
keyInterceptedEvent: evt morph: morph 
	"Answer true if we want the pane to have the event anyway.  
	There are 3 classes involved here.  
	TextMorphForInterceptingIRCEditView intercepts the keystrokes.  
	PluggableInterceptingIRCTextMorph is the morph holding the text.  
	IRCConnection (this class) decides what to do with  
	the intercepts.  
	Once an intercept is tripped we will recieve ALL keystrokes until we  
	tell the text morph #clearInterceptActive"
	| char |
	char := evt keyCharacter.
	char = Character arrowUp
		ifTrue: [^ self checkForScrollPlaybackUpOn: morph].
	char = Character arrowDown
		ifTrue: [^ self checkForScrollPlaybackDownOn: morph].
	self keyInterceptEndedFrom: morph.
	^ true