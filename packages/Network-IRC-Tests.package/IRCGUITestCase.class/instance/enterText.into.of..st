tests
enterText: aString into: aName of: aMorph
| textfield |
	
	textfield := self deepFindSubmorph: aName in: aMorph.
	
	self shouldnt: [textfield isNil].
	self should: [textfield className = PluggableTextMorph].
	
	textfield textMorph contents: aString.
	textfield accept.
	
	