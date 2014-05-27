property-serveraddress
useValuesFromServer: anIRCServer port: portNumber
	"We have a valid choice from the server dialog. Open our own  
	window and get busy."
	
	self break.
	anIRCServer port: portNumber.
	self profile server: anIRCServer.
	self topView
		ifNil: [self openDialog]
		ifNotNil: [self showWindow; changed: #profileName; changed: #serverAddressString]