as yet unclassified
drawHeaderBackgroundOn: aCanvas 
	| colorToUse |
	colorToUse _ headerBackColor == nil
				ifTrue: [Color white]
				ifFalse: [headerBackColor].
	aCanvas fillRectangle: self headerRect color: colorToUse