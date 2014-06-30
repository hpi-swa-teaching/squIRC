as yet unclassified
setText: aText 
	"The only way we differ from our parent is by specifying a unique  
	edit view class."
	scrollBar setValue: 0.0.
	textMorph
		ifNil: [textMorph := TextMorphForInterceptingIRCEditView new contents: aText wrappedTo: self innerBounds width - 6.
			textMorph setEditView: self.
			scroller addMorph: textMorph]
		ifNotNil: [textMorph newContents: aText].
	self hasUnacceptedEdits: false.
	self setScrollDeltas