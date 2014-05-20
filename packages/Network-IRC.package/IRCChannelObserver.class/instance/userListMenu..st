panel building
userListMenu: aMenu 
	"Build a context sensitive menu for the users list."
	| selected |
	selected _ self channelUser.
	selected isNil
		ifFalse: [selected = connection nick
				ifFalse: [aMenu add: 'talk to selected user' action: #talkToSelectedUser;
						 add: 'finger selected user' action: #fingerSelectedUser";
						 add: 'version selected user' action: #versionSelectedUser"].
			aMenu add: 'who is selected user?' action: #whoisSelectedUser].
	^ aMenu