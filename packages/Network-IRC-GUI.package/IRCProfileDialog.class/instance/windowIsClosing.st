action buttons
windowIsClosing
	parentDialog isNil
		ifTrue: [^ nil].
	parentDialog updateProfilesList.
	parentDialog changed: #profileDescriptions.
