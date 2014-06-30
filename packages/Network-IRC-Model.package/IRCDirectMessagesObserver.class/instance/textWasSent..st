messages
textWasSent: aText 
	"new message logic."
	self messagePlayback addMessage: aText.
	true
		ifFalse: ["Bypass this for now..."
			self addWithNickToChatText: aText]