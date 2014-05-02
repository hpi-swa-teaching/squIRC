instance creation
sender: sender  recipient: recipient  text: text
	"create a new message with the given sender, recipient, and text"
	^super new initializeSender: sender  recipient: recipient text: text