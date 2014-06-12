private
isNextCharacterACommaIn: aText startingAt: anInteger 
	"Actually checks if the next character is a comma  
	AND  
	if the character after that is a digit."
	| index commaResult |
	anInteger < aText size
		ifFalse: [^ false].
	index _ anInteger + 1.
	commaResult _ (aText at: index)
				= $,.
	commaResult
		ifFalse: [^ false].
	(anInteger + 1) < aText size
		ifFalse: [^ false].
	^ self isNextCharacterANumberIn: aText startingAt: anInteger + 1