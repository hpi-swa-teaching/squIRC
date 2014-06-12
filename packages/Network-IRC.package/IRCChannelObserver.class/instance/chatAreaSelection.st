channel pane text
chatAreaSelection
	"where to put the cursor in the chat area. We'll leave it at the very end 
	so that the most recent mesages are always visible"
	| theSize |
	theSize _ chatTextLines text size.
	^ theSize to: theSize - 1