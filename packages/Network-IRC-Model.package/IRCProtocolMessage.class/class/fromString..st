instance creation
fromString: aString 
	"parse an IRC message from its network format"
	"USER sbw * * :Stephan B. Wessels <swessels@cox.net>"
	| messageString command arguments prefix array argumentString trailer |
	messageString := self peelOffCrLfFrom: aString.
	array := self extractPrefixAndCommandFrom: messageString.
	prefix := array at: 1.
	command := array at: 2.
	argumentString := array at: 3.
	trailer := array at: 4.
	arguments := OrderedCollection new.
	argumentString isNil
		ifFalse: [arguments
				addAll: (argumentString findTokens: ' ')].
	trailer isNil
		ifFalse: [arguments add: trailer].
	^ self
		prefix: prefix
		command: command
		arguments: arguments