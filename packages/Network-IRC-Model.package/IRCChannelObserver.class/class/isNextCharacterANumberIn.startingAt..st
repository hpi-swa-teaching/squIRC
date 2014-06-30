private
isNextCharacterANumberIn: aText startingAt: anInteger 
	| index |
	index _ anInteger + 1.
	^(aText at: index) isDigit