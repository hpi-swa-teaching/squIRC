as yet unclassified
ircMessageRecieved: aMessage 
	"Ugly message specifc code in here."
	| sender newLine nickText messageText messageWords actionFlag |
	sender := aMessage sender
				ifNil: [self nick].
	sender := IRCProtocolMessage cleanSenderString: sender.
	nickText := self prepareNickAsRequired: sender.
	messageText := aMessage text asText.
	messageWords := messageText asString substrings.
	actionFlag := false.
	messageWords size > 1
		ifTrue: [messageWords first asUppercase = (IRCProtocolMessage extendedDelimeterCharacter asString , 'ACTION')
				ifTrue: [actionFlag := true.
					messageText := messageText copyFrom: 9 to: messageText size - 1]].

	
	"Colors..."
	aMessage sender isNil
		ifTrue: ["message is going out"
			messageText addAttribute: IRCClientColors transmittedMessage]
		ifFalse: ["message is coming in"
			self highlightUserMentionIn: messageText].
	
	actionFlag
		ifTrue: [ newLine :=  nickText , ' ', (Text string: messageText asString   attributes: IRCClientColors messageContainsAction), String cr]
		ifFalse: [ newLine := nickText , ' : ' , messageText , String cr. ].

	newLine := connection markIfURL: newLine startingAt: nickText size + 3.

	self addTextToChannelPane: newLine