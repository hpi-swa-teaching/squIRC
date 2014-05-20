as yet unclassified
userName
	userName == nil
		ifTrue: [nick := self class defaultUserName].
	^ userName