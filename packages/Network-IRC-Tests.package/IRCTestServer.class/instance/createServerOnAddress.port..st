private
createServerOnAddress: addressString port: portNumber 
	self cleanUpExistingServer.
	self serverAddress: addressString.
	self port: portNumber