as yet unclassified
loadProfile: anIRCConnectionProfile 
	"Don't do this while connected."
	self connected
		ifTrue: [^ nil].
	IRCOptionsManagement populateOptionsFromProfile: anIRCConnectionProfile.
	self server: anIRCConnectionProfile server address;
		 portAsString: anIRCConnectionProfile server port asString;
		 nick: anIRCConnectionProfile nick;
		 userName: anIRCConnectionProfile userName;
		 fullName: anIRCConnectionProfile fullName.
	self changed: #server;
		 changed: #portAsString;
		 changed: #nick;
		 changed: #userName;
		 changed: #fullName.
	self updateGuiNick