servers
serverWithAddress: addrString 
	"Answers the instance of IRCServer having an  
	address <addString>. Answers nil if not found."
	^self servers detect: [:each | each address = addrString] ifNone: []