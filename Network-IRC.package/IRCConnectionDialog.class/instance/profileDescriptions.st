profiles
profileDescriptions
	| list profiles |
	list := OrderedCollection new.
	profiles := IRCConnectionProfile profiles.
	
	(profiles
		asSortedCollection: [:a :b | a name asLowercase < b name asLowercase])
							 do: [:profile | list add: profile name].
	
	profiles ifEmpty: [list add: 'no profiles'].
	
	^list
	"1
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
	^ list"