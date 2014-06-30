as yet unclassified
checkForScrollPlaybackUpOn: morph 
	| previous |
	previous _ self messagePlayback getIndexedMessage.
	self messagePlayback rollIndexBack.
	previous isNil
		ifFalse: [morph setText: previous.
			morph
				setSelection: (previous size + 1 to: previous size + 1).
			morph hasUnacceptedEdits: true].
	^ false