private-initialization
checkForSpecialCommandHandling
	"See http://www.irchelp.org/irchelp/rfc/ctcpspec.html"
	| lastArg controlChar stream convertedArg savedCommand |
	"self halt."
	isSpecial := IRCConnection specialCommands includes: command.
	isSpecial
		ifFalse: [^self].
	savedCommand := command asUppercase copy.
	savedCommand = 'ME'
		ifTrue: [savedCommand := 'ACTION'].
	command := 'PRIVMSG'.
	lastArg := arguments last.
	controlChar := self class extendedDelimeterCharacter.
	stream := ReadWriteStream on: ''.
	stream nextPut: controlChar;
		 nextPutAll: savedCommand;
		 nextPut: $ ;
		 nextPutAll: lastArg;
		 nextPut: controlChar.
	convertedArg := stream contents.
	arguments at: arguments size put: convertedArg