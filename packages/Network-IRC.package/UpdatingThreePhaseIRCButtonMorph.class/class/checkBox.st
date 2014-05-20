as yet unclassified
checkBox
	"Answer a button pre-initialized with checkbox images."
	| f |
	^ self new onImage: (f := ScriptingSystem formAtKey: 'IrcCheckBoxOn');
		
		pressedImage: (ScriptingSystem formAtKey: 'IrcCheckBoxPressed');
		
		offImage: (ScriptingSystem formAtKey: 'IrcCheckBoxOff');
		 extent: f extent + (2 @ 0);
		 yourself