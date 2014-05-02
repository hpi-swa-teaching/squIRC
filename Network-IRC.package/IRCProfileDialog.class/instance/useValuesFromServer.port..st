remote window actions
useValuesFromServer: anIRCServer port: portNumber 
	"We have a valid choice from the server dialog. Open our own  
	window and get busy."
	anIRCServer port: portNumber.
	profile server: anIRCServer.
	profile name: anIRCServer nameToUseForProfile.
	self topView isNil
		ifTrue: [self openDialog]
		ifFalse: [self showWindow; changed: #profileName; changed: #serverAddressString]