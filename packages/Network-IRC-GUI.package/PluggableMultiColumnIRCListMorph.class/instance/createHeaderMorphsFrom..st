as yet unclassified
createHeaderMorphsFrom: collection 
	| strMorph result headerFont |
	headerFont := Preferences windowTitleFont.
	result := OrderedCollection new.
	headerHeight := 0.
	collection
		do: [:str | 
			strMorph := str isText
						ifTrue: [StringMorph
								contents: str
								font: headerFont
								emphasis: (str emphasisAt: 1)]
						ifFalse: [StringMorph
								contents: str
								font: headerFont
								emphasis: 1].
			headerHeight < strMorph height
				ifTrue: [headerHeight := strMorph height].
			result add: strMorph].
	headerHeight := headerHeight + 4.
	^ result