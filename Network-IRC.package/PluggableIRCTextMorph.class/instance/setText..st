as yet unclassified
setText: aText 
	scrollBar setValue: 0.0.
	textMorph
		ifNil: [textMorph := TextMorphIRCEditView new contents: aText wrappedTo: self innerBounds width - 6.
			textMorph setEditView: self.
			textMorph keysRecvr: self.
			scroller addMorph: textMorph]
		ifNotNil: [textMorph newContents: aText].
	self hasUnacceptedEdits: false.
	self setScrollDeltas