as yet unclassified
ircMessageRecieved: aMessage 
	| sender newLine nickText pvt messageText messageWords actionFlag |
"	aMessage text = 'VERSION'
		ifTrue: [aMessage inspect]."
	sender := aMessage sender
				ifNil: ['Server'].
	sender := IRCProtocolMessage cleanSenderString: sender.
	"Check if someone else is handling this for us if we are the  
	generic private messages handler."
	talkingTo isNil
		ifTrue: [(connection gui alreadyShowingPrivateMessagesFrom: sender)
				ifTrue: [^ nil]].
	"Should open a new window and let that one have this  
	message?"
	(talkingTo isNil
			and: [aMessage sender isNil not])
		ifTrue: [(IRCOptionsManagement option: #privateMessageOpensNewWindow)
				ifTrue: [pvt := connection talkTo: sender.
					^ pvt ircMessageRecieved: aMessage]].
	talkingTo
		ifNotNil: [aMessage sender isNil
				ifFalse: ["only display messages to or from talkingTo"
					sender asIRCLowercase = talkingTo asIRCLowercase
						ifFalse: [^ self]]].
	(talkingTo isNil
			and: [aMessage sender isNil])
		ifTrue: [^ self].
	"Check if we should be posting our own message here."
	aMessage sender isNil
		ifTrue: [aMessage recipient = talkingTo
				ifFalse: [^ nil]].
	aMessage sender isNil
		ifTrue: [sender := self nick].
	nickText := Text
				string: sender
				emphasis: (Array with: TextEmphasis bold).
	messageText := aMessage text asText.
	messageWords := messageText asString substrings.
	actionFlag := false.
	messageWords size > 1
		ifTrue: [messageWords first asUppercase = (IRCProtocolMessage extendedDelimeterCharacter asString , 'ACTION')
				ifTrue: [actionFlag := true.
					messageText := messageText copyFrom: 9 to: messageText size - 1]].
	
	aMessage sender isNil
		ifTrue: ["message is going out"
			messageText addAttribute: IRCClientColors transmittedMessage]
		ifFalse: [IRCClientSounds specificPrivateMessageArrived].

	actionFlag
		ifTrue: [ newLine :=  nickText , ' ', (Text string: messageText asString   attributes: IRCClientColors messageContainsAction), String cr]
		ifFalse: [newLine := nickText , ': ' , messageText , String cr.].
	
	newLine := connection markIfURL: newLine startingAt: 1.

	self addToChatText: newLine.
	talkingTo isNil
		ifTrue: [connection gui possibleTabStateChange: self class privateMessagesLabel]
		ifFalse: [connection gui possibleTabStateChange: sender]