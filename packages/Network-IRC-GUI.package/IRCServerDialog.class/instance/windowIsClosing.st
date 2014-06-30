exit management
windowIsClosing
	"If we got here from a #serverSelected, the caller already knows.  If not, then it was either the cancel button or the window close button.  In that case, tell the caller."
	self validServerSelection
		ifTrue: [^ nil].
	parentDialog isNil
		ifTrue: [^ nil].
	parentDialog noServerSelected