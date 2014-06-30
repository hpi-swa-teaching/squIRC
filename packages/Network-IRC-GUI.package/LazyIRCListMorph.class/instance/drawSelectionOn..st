as yet unclassified
drawSelectionOn: aCanvas

" This is copied almost as is from our Super LazylistMorph. The only change is to the collor used for the highlighting. On Macs with display depth set to 16 the original highlighting was invisible."

	| selectionDrawBounds |
	selectedRow ifNil: [ ^self ].
	selectedRow = 0 ifTrue: [ ^self ].
	selectionDrawBounds := self drawBoundsForRow: selectedRow.
	selectionDrawBounds := selectionDrawBounds intersect: self bounds.
	aCanvas fillRectangle: selectionDrawBounds color: (TranslucentColor r:0 g:0 b:0 alpha: 0.15)