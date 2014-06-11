actionButtons
updateButtonNamed: aString newTag: newTag 
	| btn |
	btns isNil
		ifTrue: [^ nil].
	(btns includesKey: aString)
		ifFalse: [^ nil].
	btn := btns at: aString.
	btn label: newTag.
	"Need to do something about the connect button and we could do that  
	here..."
	aString = 'connect'
		ifTrue: ["self updateIndicator."
			self notifyConfigDialogConnectState]