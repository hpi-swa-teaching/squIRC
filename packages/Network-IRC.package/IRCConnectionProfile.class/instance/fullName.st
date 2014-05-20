as yet unclassified
fullName
	fullName == nil
		ifTrue: [nick := self class defaultFullName].
	^ fullName