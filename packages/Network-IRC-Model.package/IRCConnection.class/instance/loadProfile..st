as yet unclassified
loadProfile: anIRCConnectionProfile 
	"Don't do this while connected."
	self connected
		ifTrue: [^ nil].
		
	IRCOptionsManagement 
			populateOptionsFromProfile: anIRCConnectionProfile.
	
	self server: anIRCConnectionProfile server;
		 nick: anIRCConnectionProfile nick;
		 userName: anIRCConnectionProfile userName;
		 name: anIRCConnectionProfile name;
		 fullName: anIRCConnectionProfile fullName.
	self changed: #server; changed: #serverAsString;
		 changed: #nick;
		 changed: #userName;
		 changed: #fullName