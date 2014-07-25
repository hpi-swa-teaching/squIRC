utility
enterText: aString into: aName of: aMorph
| textfield |
	
	textfield := self deepFindSubmorph: aName in: aMorph.
	
	self shouldnt: [textfield isNil].
	self should: [textfield isKindOf: PluggableTextMorph].
	
	aString do: [:chr | textfield keyStroke: (KeyboardEvent new
											setType: #keystroke
											buttons: 0
											position: textfield center
											keyValue: chr
											hand: Morph currentHand
											stamp: Time millisecondClockValue)].
	textfield accept.
	
	