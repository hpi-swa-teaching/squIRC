instance creation
copy: anIRCServer

	^(self new)
		serverName: anIRCServer serverName;
		group: anIRCServer group;
		address: anIRCServer address;
		port: anIRCServer port;
		ports: anIRCServer ports;
		yourself
		