private
processMessage: anIRCProtocolMessage 
	anIRCProtocolMessage command = 'privmsg'
		ifTrue: [^ self processPrivmsgRequest: anIRCProtocolMessage].
	anIRCProtocolMessage command = 'nick'
		ifTrue: [^ self processNickRequest: anIRCProtocolMessage].
	anIRCProtocolMessage command = 'user'
		ifTrue: [^ self processUserRequest: anIRCProtocolMessage].
	anIRCProtocolMessage command = 'motd'
		ifTrue: [^ self processMotdRequest: anIRCProtocolMessage].
	anIRCProtocolMessage command = 'list'
		ifTrue: [^ self processListRequest: anIRCProtocolMessage].
	anIRCProtocolMessage command = 'join'
		ifTrue: [^ self processJoinRequest: anIRCProtocolMessage].
	anIRCProtocolMessage command = 'whois'
		ifTrue: [^ self processWhoisRequest: anIRCProtocolMessage].	
	IRCConnection tracing
		ifTrue: [anIRCProtocolMessage inspect]