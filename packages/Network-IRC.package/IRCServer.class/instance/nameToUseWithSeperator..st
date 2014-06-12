string representation
nameToUseWithSeperator: sepString
	| part2 part1 |
	part2 := self serverName withBlanksTrimmed.
	self group isNil
		ifTrue: [^ part2].
	self group isEmpty
		ifTrue: [^ part2].
	part1 := self group withBlanksTrimmed.
	^ part1 , sepString, part2