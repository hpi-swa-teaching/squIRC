action buttons
windowIsClosing
	parentDialog isNil
		ifTrue: [^ nil].
	parentDialog showWindow.
	parentDialog updateProfilesList.
	parentDialog changed: #profileDescriptions.
