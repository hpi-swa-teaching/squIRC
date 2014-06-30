mIRC colors
mircColorFor: anInteger 
	| factoredColorCode |
	anInteger == 99
		ifTrue: [^ TextColor color: Color transparent]
		ifFalse: [factoredColorCode _ anInteger \\ 16.
			^ self textColorMap at: factoredColorCode]