servers
serversListByGroups
	"IRCServer serversListByGroups"
	| dict key undefined |
	undefined := self undefinedGroupName.
	dict := Dictionary new.
	self servers
		do: [:entry | 
			key := entry group withBlanksTrimmed.
			key isEmpty
				ifTrue: [key := undefined].
			(dict includesKey: key)
				ifFalse: [dict at: key put: OrderedCollection new].
			(dict at: key)
				add: entry].
	^ dict