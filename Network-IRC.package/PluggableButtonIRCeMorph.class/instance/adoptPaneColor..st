accessing
adoptPaneColor: paneColor 
	self
		submorphsDo: [:m | m adoptPaneColor: paneColor].
	Preferences gradientWindowLook
		ifFalse: [^ self].
	self borderWidth > 0
		ifTrue: [self borderWidth: 1;
				 borderColor: paneColor].
