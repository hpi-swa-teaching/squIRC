remote window actions
noServerSelected
	"The user aborted the selection from the server dialog. Open our own  
	window and get busy."
	self topView isNil
		ifTrue: [self openDialog]
		ifFalse: [self showWindow]
