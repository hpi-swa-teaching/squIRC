mIRC lines
extractServerAddressAndPortStringFrom: aString 
	| start index offset end |
	start := 1.
	index := aString
				findString: self class serverStringTag
				startingAt: start
				caseSensitive: true.
	offset := self class serverStringTag size.
	start := index + offset + 1.
	index := aString
				findString: self class groupStringTag
				startingAt: start
				caseSensitive: true.
	end := index = 0
				ifTrue: [aString size]
				ifFalse: [index - 1].
	^ aString copyFrom: start to: end