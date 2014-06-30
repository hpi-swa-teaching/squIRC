low level quoting - private
lowDequoteNextCharacterFrom: aStream 
	| char |
	char _ aStream next.
	char = $0
		ifTrue: [^ self nulCharacter].
	char = $n
		ifTrue: [^ self nlCharacter].
	char = $r
		ifTrue: [^ self crCharacter].
	"Assume it's messageQuotingCharacter."
	^ char