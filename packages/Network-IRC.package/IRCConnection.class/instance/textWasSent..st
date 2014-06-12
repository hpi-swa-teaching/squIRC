msg process outgoing new
textWasSent: aText 
	"New message logic."
	"We are console here."
	self consoleMessagePlayback addMessage: aText.
	self addToConsole: 'Command: ' , aText , String cr