console text management
addToConsole: aText 

	consoleTextLines add: aText.
	self changed: #consoleText