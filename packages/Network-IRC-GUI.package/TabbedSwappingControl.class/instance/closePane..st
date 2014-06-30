pane operations
closePane: aPane 
	"If the pane has the closeable property defined AND that  
	property value allows closing, then close the pane."
	aPane isNil
		ifTrue: [^ nil].
	(aPane hasProperty: #closeable)
		ifTrue: [(aPane valueOfProperty: #closeable)
				ifTrue: [self removeSwapPane: aPane]]