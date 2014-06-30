as yet unclassified
connection: anIRCConnection channelName: aString 
	connection _ anIRCConnection.
	channel _ connection channelInfo: aString.
	channelName _ aString.
	channel subscribe: self.
	self initializeChatTextLines