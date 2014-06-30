as yet unclassified
keyStroke: evt 
	"Pass command keys to the original. UNLESS it's a paste operation. We  
	send that one to the new recvr regardless."
	| forParent |
	forParent _ keysRecvr isNil.
	forParent ifFalse: [
		"Need to check if it's a command key..."
		forParent _ evt commandKeyPressed.
		forParent ifTrue: [
			"Check for special $v PASTE condition."
			forParent _ evt keyCharacter ~= $v].
		forParent ifFalse: [^ keysRecvr keyStroke: evt]
		].
	super keyStroke: evt
