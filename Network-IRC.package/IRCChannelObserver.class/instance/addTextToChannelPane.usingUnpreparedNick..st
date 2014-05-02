channel pane text
addTextToChannelPane: aString usingUnpreparedNick: sender
	| nickText |
	nickText _ self prepareNickAsRequired: sender.
	self addTextToChannelPane: nickText, ' : ', aString