keys intercept management
checkForScrollPlaybackUpOn: morph 
	| previous |
	previous _ self consoleMessagePlayback getIndexedMessage.
	self consoleMessagePlayback rollIndexBack.
	previous isNil
		ifFalse: [morph setText: previous.
			morph
				setSelection: (previous size + 1 to: previous size + 1).
			morph hasUnacceptedEdits: true].
	^ false