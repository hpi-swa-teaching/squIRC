options defined
optionsIntegrityCheck
	"IRCOptionsManagement optionsIntegrityCheck"
	"Do this as a developer to verify you have all option definitions synchd."
	| desc help values stream keys |
	keys := self defaultOptionKeys.
	desc := self defaultOptionDescriptions.
	help := self defaultOptionHelp.
	values := self defaultOptionValues.
	((desc keys size = help keys size
				and: [desc keys size = values keys size])
			and: [keys size = desc keys size])
		ifTrue: [^ self inform: 'All keys match'].
	stream := WriteStream on: ''.
	keys asSortedCollection = desc keys asSortedCollection ifFalse: [stream nextPutAll: 'keys do not match.'; cr].
	desc keys asSortedCollection = help keys asSortedCollection
		ifFalse: [stream nextPutAll: '#defaultOptionDescriptions and #defaultOptionHelp keys do not match.';
				 cr].
	desc keys asSortedCollection = values keys asSortedCollection
		ifFalse: [stream nextPutAll: '#defaultOptionDescriptions and #defaultOptionValues keys do not match.';
				 cr].
	help keys asSortedCollection = values keys asSortedCollection
		ifFalse: [stream nextPutAll: '#defaultOptionHelp and #defaultOptionValues keys do not match.';
				 cr].
	self inform: stream contents