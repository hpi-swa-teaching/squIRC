as yet unclassified
initializeDefaultsPrompted
	"We DO NOT want to execute this when doing automated installs."
	| fullName dServer dPort dNick dUserName dFullName |
	dServer := FillInTheBlank request: 'Default squeak server?' initialAnswer: 'irc.freenode.net'.
	dServer isEmpty
		ifTrue: [^ false].
	dPort := 6667.
	dNick := FillInTheBlank request: 'Your channel nickname?'.
	dNick isEmpty
		ifTrue: [^ false].
	dUserName := FillInTheBlank request: 'Your user name (squeak initials)?' initialAnswer: Utilities authorInitialsPerSe.
	self flag: #noteToFc.
	"When Utilities>>AuthorName cs goes in this can come out."
	fullName := Utilities authorNamePerSe
				ifNil: [''].
	fullName := FillInTheBlank request: 'Your full name.' initialAnswer: fullName.
	fullName isEmpty
		ifTrue: [^ false].
	dServer isEmpty
		ifTrue: [dServer := self defaultDefaultServer].
	self defaultServer: dServer.
	self defaultPort: dPort.
	dNick isEmpty
		ifTrue: [dNick := self defaultDefaultNick].
	self defaultNick: dNick.
	dUserName isEmpty
		ifTrue: [dUserName := self defaultDefaultUserName].
	self defaultUserName: dUserName.
	fullName isEmpty
		ifTrue: [fullName := self defaultDefaultFullName].
	dFullName := fullName , ' <' , (MailSender setUserName; userName) , '>'.
	self defaultFullName: dFullName.
	self createDefault.
	^ true