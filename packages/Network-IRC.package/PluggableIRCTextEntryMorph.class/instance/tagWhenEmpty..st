accessing
tagWhenEmpty: aTextMorph 
	tagWhenEmpty := aTextMorph.
	aTextMorph isNil
		ifFalse: [aTextMorph setToAdhereToEdge: #adjustedCenter.
			self addMorph: aTextMorph]