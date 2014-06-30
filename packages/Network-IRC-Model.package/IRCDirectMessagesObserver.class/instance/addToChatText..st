text pane
addToChatText: aString 
	chatTextLines add: aString.
	self changed: #chatText