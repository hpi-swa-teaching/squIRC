actionButtons
update: aSelector

	(aSelector = #connected)
		ifTrue: [self changed: #connected.
				self changed: #connectButtonLabel].
	self updateMenuLabel.