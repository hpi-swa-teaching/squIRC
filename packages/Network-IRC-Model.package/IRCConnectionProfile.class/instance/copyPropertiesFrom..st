as yet unclassified
copyPropertiesFrom: anOtherProfile
	"keeps the profile name"

	self 	fullName: anOtherProfile fullName;
			nick: anOtherProfile nick;
			server: (IRCServer copy: anOtherProfile server);
			userName: anOtherProfile userName;
			name: anOtherProfile name.