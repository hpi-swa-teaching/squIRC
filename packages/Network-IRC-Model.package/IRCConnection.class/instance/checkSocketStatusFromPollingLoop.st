network IO
checkSocketStatusFromPollingLoop
	(socket isNil
			or: [socket isValid not
					or: [socket isConnected not]])
		ifTrue: [dropped isNil
				ifFalse: [dropped
						ifFalse: [dropped := true]].
			^ false].
	^true