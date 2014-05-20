as yet unclassified
radioButton
	"Answer a button pre-initialized with radiobutton images."
	| f |
	^ self new onImage: (f := ScriptingSystem formAtKey: 'IrcRadioButtonOn');
		
		pressedImage: (ScriptingSystem formAtKey: 'IrcRadioButtonPressed');
		
		offImage: (ScriptingSystem formAtKey: 'IrcRadioButtonOff');
		 extent: f extent + (2 @ 0);
		 yourself