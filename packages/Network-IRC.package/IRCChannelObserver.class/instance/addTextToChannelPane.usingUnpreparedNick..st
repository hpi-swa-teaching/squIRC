channel pane text
addTextToChannelPane: aString usingUnpreparedNick: sender
	| nickText |
	nickText := self prepareNickAsRequired: sender.
	self addTextToChannelPane: nickText, ' : ', aString