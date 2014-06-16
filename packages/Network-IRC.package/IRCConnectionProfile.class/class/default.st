as yet unclassified
default
	"IRCConnectionProfile default"
	| model |
	model := self getProfileNamed: self defaultProfileName.
	model isNil
		ifTrue: [model := self createDefault].
	^ model