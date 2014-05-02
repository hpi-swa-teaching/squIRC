as yet unclassified
resetDefault
	"IRCConnectionProfile resetDefault"
	self defaultServer: nil.
	self defaultPort: nil.
	self defaultNick: nil.
	self defaultUserName: nil.
	self defaultFullName: nil.
	(self hasProfileNamed: self defaultProfileName)
		ifTrue: [self profiles removeKey: self defaultProfileName]