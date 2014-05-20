slash commands translation
performSlashCommandHandler: aString 
	| handler |

	handler := IRCConnection outgoingMessageHandlers
				at: aString asLowercase asSymbol
				ifAbsent: [#processInvalidCommand].
	self perform: handler