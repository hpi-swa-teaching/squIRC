msg process outgoing new
sendLocalMessage: msg from: observer 
	| handler |

	handler := self class localMessageHandlers
				at: msg command
				ifAbsent: [].
	handler isNil ifFalse: [
		observer perform: handler.
		^true
		].
	^false