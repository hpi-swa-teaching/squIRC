private
initialize
	ExternalIRCFiles initialize.
	IRCConnection tracing: false.
	self reset.
	self initializeFromDefaults.
	directMessageSubscribers := IdentitySet new.
	protocolMessageSubscribers := IdentitySet new.
	self initializeConsoleText.
	channelObservers := OrderedCollection new.
