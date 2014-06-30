private-initialization
checkForCommandHandling
	"We will intercept /commands entered by the user and adjust as we can.  
	See IRCConnection initializeOutgoingMessageHandlers"
	command first = $/
		ifTrue: [command _ command copyFrom: 2 to: command size.
			self performSlashCommandHandler: command]