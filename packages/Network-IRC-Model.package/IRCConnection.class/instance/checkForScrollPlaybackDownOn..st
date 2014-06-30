keys intercept management
checkForScrollPlaybackDownOn: morph 
	| previous |
	self consoleMessagePlayback rollIndexForward.
	previous _ self consoleMessagePlayback getIndexedMessage.
	previous isNil
		ifFalse: [morph setText: previous.
			morph
				setSelection: (previous size + 1 to: previous size + 1).
			morph hasUnacceptedEdits: true].
	^ false