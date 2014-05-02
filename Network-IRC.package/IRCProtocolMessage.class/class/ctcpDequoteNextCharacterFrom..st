ctcp quoting - private
ctcpDequoteNextCharacterFrom: aStream 
	| char |
	char _ aStream next.
	char = $a
		ifTrue: [^ self extendedDelimeterCharacter].
	"Assume it's extendedDelimeterCharacter."
	^ char