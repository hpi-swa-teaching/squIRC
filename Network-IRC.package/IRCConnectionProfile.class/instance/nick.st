as yet unclassified
nick
	nick == nil
		ifTrue: [nick := self class defaultNick].
	^ nick