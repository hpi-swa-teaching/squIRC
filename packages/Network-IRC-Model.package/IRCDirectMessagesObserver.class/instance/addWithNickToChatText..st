messages
addWithNickToChatText: aText 
	"new message logic."
	| newLine |
	newLine _ (Text string: connection nick attribute: TextEmphasis bold)
				, ': ' , aText , String cr.
	self addToChatText: newLine