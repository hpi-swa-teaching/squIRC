as yet unclassified
connectToggle
	| reconnect success |

	reconnect := false.
	success := true.
	self connected
		ifTrue: [self manualDisconnect.
			^false]
		ifFalse: [dropped isNil
				ifFalse: [dropped
						ifTrue: [reconnect := true]].
			dropped := false.
			success := self connect.
			reconnect
				ifTrue: [self reconnectBecauseDropped]].
	^ success
