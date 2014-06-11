actionButtons
notifyConfigDialogConnectState
	self connectDialog isNil
		ifTrue: [^ nil]
		ifFalse: [self connectDialog connectionStateChanged]