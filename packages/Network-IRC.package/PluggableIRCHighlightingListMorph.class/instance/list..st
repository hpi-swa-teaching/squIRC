as yet unclassified
list: listOfStrings 
	"Set the receiver's list as specified"
	"sbw - special handling. If the list contains StringMorphs use them as-is."
	| morphList h loc index converter item aSelector font |
	scroller removeAllMorphs.
	list := listOfStrings
				ifNil: [Array new].
	list isEmpty
		ifTrue: [self setScrollDeltas.
			^ self selectedMorph: nil].
	"NOTE: we will want a quick StringMorph init message, possibly even  
	combined with event install and positioning"
	font := Preferences standardListFont.
	converter := self valueOfProperty: #itemConversionMethod.
	converter
		ifNil: [converter := #asStringOrText].
	morphList := list
				collect: [:each | 
					item := each.
					item isStringMorph
						ifFalse: [item := item perform: converter].
					item isText
						ifTrue: [StringMorph
								contents: item
								font: font
								emphasis: (item emphasisAt: 1)]
						ifFalse: [item isStringMorph
								ifTrue: [item]
								ifFalse: [StringMorph contents: item font: font]]].
	(aSelector := self valueOfProperty: #balloonTextSelectorForSubMorphs)
		ifNotNil: [morphList
				do: [:m | m balloonTextSelector: aSelector]].
	self highlightSelector
		ifNotNil: [model
				perform: self highlightSelector
				with: list
				with: morphList].
	"Lay items out vertically and install them in the scroller"
	h := morphList first height.
	"self listItemHeight"
	loc := 0 @ 0.
	morphList
		do: [:m | 
			m
				bounds: (loc extent: 9999 @ h).
			loc := loc + (0 @ h)].
	scroller addAllMorphs: morphList.
	index := self getCurrentSelectionIndex.
	self
		selectedMorph: ((index = 0
					or: [index > morphList size])
				ifFalse: [morphList at: index]).
	self setScrollDeltas.
	scrollBar setValue: 0.0.
	"The following line of code enables us to work both with and without  
	Skins II."
	(Smalltalk includesKey: #ImportedSkin)
		ifTrue: [self perform: #setColorsFromSkin]