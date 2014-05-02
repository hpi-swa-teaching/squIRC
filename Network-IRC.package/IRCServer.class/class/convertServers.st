class initialization
convertServers
	"From OrderedCollection to Dictionary."
	| copy |
	copy := self servers deepCopy.
	 self initializeServers.
	copy
		do: [:x | self addServer: x]