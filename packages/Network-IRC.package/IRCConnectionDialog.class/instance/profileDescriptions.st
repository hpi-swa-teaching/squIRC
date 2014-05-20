profiles
profileDescriptions
	| list |
	list := Array new: 3.
	1
		to: list size
		do: [:index | list at: index put: OrderedCollection new].
	(IRCConnectionProfile profiles
		asSortedCollection: [:a :b | a name asLowercase < b name asLowercase])
		do: [:profile | 
			(list at: 1)
				add: profile name.
			(list at: 2)
				add: profile nick.
			(list at: 3)
				add: profile server profileListString].
	^ list