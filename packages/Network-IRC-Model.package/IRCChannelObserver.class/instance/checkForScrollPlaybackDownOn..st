as yet unclassified
checkForScrollPlaybackDownOn: morph 
	| previous |
	self messagePlayback rollIndexForward.
	previous _ self messagePlayback getIndexedMessage.
	previous isNil
		ifFalse: [morph setText: previous.
			morph
				setSelection: (previous size + 1 to: previous size + 1).
			morph hasUnacceptedEdits: true].
	^ false