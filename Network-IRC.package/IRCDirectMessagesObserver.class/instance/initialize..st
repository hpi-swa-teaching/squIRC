as yet unclassified
initialize: aConnection 
	connection _ aConnection.
	self initializeChatTextLines.
	connection subscribeToDirectMessages: self