instance creation
forConnection: aConnection  talkingTo: aName
	^(super new initialize: aConnection) talkingTo: aName