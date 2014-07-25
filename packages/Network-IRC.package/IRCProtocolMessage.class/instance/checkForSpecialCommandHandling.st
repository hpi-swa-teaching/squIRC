private-initialization
checkForSpecialCommandHandling
	"See http://www.irchelp.org/irchelp/rfc/ctcpspec.html"
	| lastArg controlChar stream convertedArg savedCommand |
	isSpecial _ IRCConnection specialCommands includes: command.
	isSpecial
		ifFalse: [^ nil].
	savedCommand _ command asUppercase copy.
	savedCommand = 'ME'
		ifTrue: [savedCommand _ 'ACTION'].
	command _ 'PRIVMSG'.
	lastArg _ arguments last.
	controlChar _ self class extendedDelimeterCharacter.
	stream _ ReadWriteStream on: ''.
	stream nextPut: controlChar;
		 nextPutAll: savedCommand;
		 nextPut: $ ;
		 nextPutAll: lastArg;
		 nextPut: controlChar.
	convertedArg _ stream contents.
	arguments at: arguments size put: convertedArg