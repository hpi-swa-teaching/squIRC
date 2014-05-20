process
filter: aCollection 
	| result |
	self doNone
		ifTrue: [^ aCollection].
	self doBoth
		ifTrue: [result := self filterOnName: aCollection.
			result := self filterOnTopic: result.
			^ result].
	self doName ifTrue: [^self filterOnName: aCollection].
	self doTopic ifTrue: [^self filterOnTopic: aCollection].
	^aCollection